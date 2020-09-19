#include <stdio.h>
#include <math.h>
#include <conio.h>
#include <stdio.h>
#include <stdlib.h>
#include <memory.h>
#include <cstdint>

struct {
	char sig[4];
	int riff_size;
	char typesig[4];
	char fmtsig[4];
	int fmtsize;
	short tag;
	short channels;
	int freq;
	int bytes_per_sec;
	short byte_per_sample;
	short bits_per_sample;
	char samplesig[4];
	int datalength;
} sample_riff;

class ZxTapPlayer {
  int size = 0;
  FILE* hwav;

#define FREQ            44100/2
  const int IMPULSNUMBER_PILOT_HEADER = 8063;
  const int       IMPULSNUMBER_PILOT_DATA = 3223;
  const int 		PULSE_LEN_PILOT = 2168;
  const int 		PULSE_LEN_SYNC1 = 667;
  const int PULSE_LEN_SYNC2 = 735;
  const int PULSE_LEN_SYNC3 = 954;
  const int 		PULSE_LEN_ZERO = 855;
  const int PULSE_LEN_ONE = 1710;
  const int 		PULSE_LEN_PAUSE = 2168 * 3223;
  const uint8_t HI = 255;
  const uint8_t LOW = 0;
  void OutTone(unsigned char level, int clck, int freq, FILE* hwav) {
    double sampleNanosec = 1000000000 / freq;
    double cpuClkNanosec = 286;
    int64_t samples = round((cpuClkNanosec * double(clck)) / sampleNanosec);
    for (int n = 0; n < samples; n++) {
      fwrite((unsigned char*)&level, 1, 1, hwav);
    }
  }

  void outByte(uint8_t byte) {
    for (int i = 0; i < 8; i++, byte <<= 1) {
      if (byte & 128)//это единица
      {
        OutTone(HI, PULSE_LEN_ONE, FREQ, hwav);
        OutTone(LOW, PULSE_LEN_ONE, FREQ, hwav);
        size += PULSE_LEN_ONE * 2;
      } else {
        OutTone(HI, PULSE_LEN_ZERO, FREQ, hwav);
        OutTone(LOW, PULSE_LEN_ZERO, FREQ, hwav);
        size += PULSE_LEN_ZERO * 2;
      }
    }
  }

public:
  int WriteWav(const char* tapFileName, const char* wavFileName) {
    FILE* file_tap = fopen(tapFileName, "rb");
    hwav = fopen(wavFileName, "wb");

    memcpy(sample_riff.sig, "RIFF", 4);
    sample_riff.riff_size = 0;
    memcpy(sample_riff.typesig, "WAVE", 4);
    memcpy(sample_riff.fmtsig, "fmt ", 4);
    sample_riff.fmtsize = 16;
    sample_riff.tag = 1;
    sample_riff.channels = 1;
    sample_riff.freq = sample_riff.bytes_per_sec = FREQ;
    sample_riff.byte_per_sample = 1;
    sample_riff.bits_per_sample = 8;
    memcpy(sample_riff.samplesig, "data", 4);
    sample_riff.datalength = 0;

    fwrite(&sample_riff, 1, sizeof(sample_riff), hwav);

    unsigned char level = 0;
    size = 0;
    int unit = 0;
    while (1) {
      //if (unit==4) break;
      unit++;
      //читаем длину блока
      unsigned short length;
      if (fread(&length, 1, sizeof(short), file_tap) < sizeof(short)) break;
      //формируем пилот тон
      unsigned char byte;
      if (fread(&byte, 1, sizeof(char), file_tap) < sizeof(char)) break;
      int pilotImpulses = IMPULSNUMBER_PILOT_DATA;
      
      if (byte) {
        pilotImpulses = IMPULSNUMBER_PILOT_DATA;
      } else {
        pilotImpulses = IMPULSNUMBER_PILOT_HEADER;
      }
      for (int m = 0; m < pilotImpulses; m++) {
          OutTone(HI, PULSE_LEN_PILOT, FREQ, hwav);
          OutTone(LOW, PULSE_LEN_PILOT, FREQ, hwav);
        size += pilotImpulses * 2 * PULSE_LEN_PILOT;
      }
      //формируем синхросигнал
        OutTone(HI, PULSE_LEN_SYNC1, FREQ, hwav);
        OutTone(LOW, PULSE_LEN_SYNC2, FREQ, hwav);
      size += PULSE_LEN_SYNC1 + PULSE_LEN_SYNC2;
      //читаем данные и выдаём их
      outByte(byte);
      for (int l = 1; l < length; l++) {
        unsigned char byte;
        if (fread(&byte, 1, sizeof(char), file_tap) < sizeof(char)) break;
        outByte(byte);
      }
      OutTone(HI, PULSE_LEN_SYNC3, FREQ, hwav);
      /*
      FIXME: checksum?
      //FIXME reset
      OutTone(level, 0, FREQ, hwav);
      */
      //пауза
        OutTone(LOW, PULSE_LEN_PAUSE, FREQ, hwav);
      size += PULSE_LEN_PAUSE;
    }
    sample_riff.datalength = size;
    sample_riff.riff_size = sample_riff.datalength + 8 + sample_riff.fmtsize + 12;
    fseek(hwav, 0, SEEK_SET);
    fwrite(&sample_riff, 1, sizeof(sample_riff), hwav);
    fclose(file_tap);
    fclose(hwav);
    return(size);
  }
};

//------------------------------------------------------------------------------
int main(int argc, char* argv[]) {
  ZxTapPlayer tapPlayer{};
  tapPlayer.WriteWav("Batty.tap", "Batty.wav");
  return(0);
}

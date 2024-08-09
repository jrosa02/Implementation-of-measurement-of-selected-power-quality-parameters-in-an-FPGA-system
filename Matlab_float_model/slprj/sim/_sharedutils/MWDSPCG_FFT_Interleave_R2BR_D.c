#include "rtwtypes.h"
#include "MWDSPCG_FFT_Interleave_R2BR_D.h"

void MWDSPCG_FFT_Interleave_R2BR_D(const real_T x[], creal_T y[], int32_T nChans,
  int32_T nRows)
{
  int32_T bit_fftLen;
  int32_T br_j;
  int32_T j;
  int32_T nChansBy2;
  int32_T uIdx;
  int32_T yIdx;
  br_j = 0;
  yIdx = 0;
  uIdx = 0;
  for (nChansBy2 = nChans >> 1; nChansBy2 != 0; nChansBy2--) {
    for (j = nRows; j - 1 > 0; j--) {
      bit_fftLen = yIdx + br_j;
      y[bit_fftLen].re = x[uIdx];
      y[bit_fftLen].im = x[uIdx + nRows];
      uIdx++;
      bit_fftLen = nRows;
      do {
        bit_fftLen = (int32_T)((uint32_T)bit_fftLen >> 1);
        br_j ^= bit_fftLen;
      } while ((br_j & bit_fftLen) == 0);
    }

    bit_fftLen = yIdx + br_j;
    y[bit_fftLen].re = x[uIdx];
    br_j = uIdx + nRows;
    y[bit_fftLen].im = x[br_j];
    uIdx = br_j + 1;
    yIdx += nRows << 1;
    br_j = 0;
  }

  if (((uint32_T)nChans & 1U) != 0U) {
    for (j = nRows >> 1; j - 1 > 0; j--) {
      bit_fftLen = yIdx + br_j;
      y[bit_fftLen].re = x[uIdx];
      y[bit_fftLen].im = x[uIdx + 1];
      uIdx += 2;
      bit_fftLen = nRows >> 1;
      do {
        bit_fftLen = (int32_T)((uint32_T)bit_fftLen >> 1);
        br_j ^= bit_fftLen;
      } while ((br_j & bit_fftLen) == 0);
    }

    bit_fftLen = yIdx + br_j;
    y[bit_fftLen].re = x[uIdx];
    y[bit_fftLen].im = x[uIdx + 1];
  }
}

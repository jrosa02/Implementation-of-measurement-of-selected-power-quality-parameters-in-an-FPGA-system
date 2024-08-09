#ifndef MWDSPCG_FFT_DblLen_Z_h_
#define MWDSPCG_FFT_DblLen_Z_h_
#include "rtwtypes.h"
#include "multiword_types.h"

extern void MWDSPCG_FFT_DblLen_Z(creal_T y[], int32_T nChans, int32_T nRows,
  const real_T twiddleTable[], int32_T twiddleStep);

#endif

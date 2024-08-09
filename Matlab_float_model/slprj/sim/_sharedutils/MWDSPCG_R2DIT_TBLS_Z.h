#ifndef MWDSPCG_R2DIT_TBLS_Z_h_
#define MWDSPCG_R2DIT_TBLS_Z_h_
#include "rtwtypes.h"
#include "multiword_types.h"

extern void MWDSPCG_R2DIT_TBLS_Z(creal_T y[], int32_T nChans, int32_T nRows,
  int32_T fftLen, int32_T offset, const real_T tablePtr[], int32_T twiddleStep,
  boolean_T isInverse);

#endif

#include "rtwtypes.h"
#include "MWDSPCG_FFT_DblLen_Z.h"
#include <emmintrin.h>

void MWDSPCG_FFT_DblLen_Z(creal_T y[], int32_T nChans, int32_T nRows, const
  real_T twiddleTable[], int32_T twiddleStep)
{
  __m128d tmp_m;
  __m128d tmp_p;
  real_T tmp[2];
  real_T tempOut0Im;
  real_T tempOut0Re;
  real_T tmp_c;
  real_T tmp_e;
  real_T tmp_i;
  real_T tmp_k;
  int32_T N2;
  int32_T N4;
  int32_T W4;
  int32_T ix;
  int32_T tempOut0Re_tmp;
  int32_T tmp_f;
  int32_T tmp_g;
  int32_T tmp_j;
  int32_T yIdx;
  N2 = nRows >> 1;
  N4 = N2 >> 1;
  W4 = N4 * twiddleStep;
  yIdx = (nChans - 1) * nRows;
  if (nRows > 2) {
    tempOut0Re_tmp = N4 + yIdx;
    tempOut0Re = y[tempOut0Re_tmp].re;
    tempOut0Im = y[tempOut0Re_tmp].im;
    tmp_g = (N2 + N4) + yIdx;
    y[tmp_g].re = tempOut0Re;
    y[tmp_g].im = tempOut0Im;
    y[tempOut0Re_tmp].re = tempOut0Re;
    y[tempOut0Re_tmp].im = -tempOut0Im;
  }

  if (nRows > 1) {
    tmp_g = N2 + yIdx;
    y[tmp_g].re = y[yIdx].re - y[yIdx].im;
    y[tmp_g].im = 0.0;
  }

  y[yIdx].re += y[yIdx].im;
  y[yIdx].im = 0.0;
  tempOut0Re_tmp = twiddleStep;
  for (ix = 1; ix < N4; ix++) {
    tmp_g = (N2 - ix) + yIdx;
    tmp_e = y[tmp_g].re;
    tmp_j = ix + yIdx;
    tmp_c = y[tmp_j].re;
    tmp_i = y[tmp_g].im;
    tmp_k = y[tmp_j].im;
    _mm_storeu_pd(&tmp[0], _mm_div_pd(_mm_add_pd(_mm_set_pd(tmp_k, tmp_e),
      _mm_mul_pd(_mm_set_pd(tmp_i, tmp_c), _mm_set_pd(-1.0, 1.0))), _mm_set1_pd
      (2.0)));
    tempOut0Re = tmp[0];
    tempOut0Im = tmp[1];
    y[tmp_j].re = (tmp_i + tmp_k) / 2.0;
    y[tmp_j].im = (tmp_e - tmp_c) / 2.0;
    tmp_p = _mm_add_pd(_mm_mul_pd(_mm_loadu_pd((const real_T *)&y[tmp_j]),
      _mm_set1_pd(twiddleTable[tempOut0Re_tmp])), _mm_mul_pd(_mm_mul_pd
      (_mm_set1_pd(-twiddleTable[W4 - tempOut0Re_tmp]), _mm_shuffle_pd
       (_mm_loadu_pd((const real_T *)&y[tmp_j]), _mm_loadu_pd((const real_T *)
      &y[tmp_j]), 1)), _mm_set_pd(1.0, -1.0)));
    _mm_storeu_pd(&tmp[0], tmp_p);
    tmp_p = _mm_set_pd(tempOut0Im, tempOut0Re);
    tmp_m = _mm_set_pd(tmp[1], tmp[0]);
    _mm_storeu_pd((real_T *)&y[tmp_j], _mm_add_pd(tmp_p, tmp_m));
    tmp_f = (nRows - ix) + yIdx;
    y[tmp_f].re = y[tmp_j].re;
    y[tmp_f].im = -y[tmp_j].im;
    tmp_j = (N2 + ix) + yIdx;
    _mm_storeu_pd((real_T *)&y[tmp_j], _mm_sub_pd(tmp_p, tmp_m));
    y[tmp_g].re = y[tmp_j].re;
    y[tmp_g].im = -y[tmp_j].im;
    tempOut0Re_tmp += twiddleStep;
  }
}

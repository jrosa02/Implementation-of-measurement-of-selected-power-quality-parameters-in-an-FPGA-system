#include "rtwtypes.h"
#include "MWDSPCG_R2DIT_TBLS_Z.h"
#include <emmintrin.h>

void MWDSPCG_R2DIT_TBLS_Z(creal_T y[], int32_T nChans, int32_T nRows, int32_T
  fftLen, int32_T offset, const real_T tablePtr[], int32_T twiddleStep,
  boolean_T isInverse)
{
  __m128d tmp_e;
  __m128d tmp_p;
  real_T tmp[2];
  real_T twidIm;
  real_T twidRe;
  int32_T fwdInvFactor;
  int32_T i1;
  int32_T i2;
  int32_T iCh;
  int32_T idelta;
  int32_T istart;
  int32_T ix;
  int32_T j;
  int32_T k;
  int32_T kratio;
  int32_T nHalf;
  int32_T nQtr;
  int32_T offsetCh;
  nHalf = (fftLen >> 1) * twiddleStep;
  nQtr = nHalf >> 1;
  if (isInverse) {
    fwdInvFactor = -1;
  } else {
    fwdInvFactor = 1;
  }

  offsetCh = offset;
  for (iCh = 0; iCh < nChans; iCh++) {
    for (ix = offsetCh; ix < (fftLen + offsetCh) - 1; ix += 2) {
      twidRe = y[ix + 1].re;
      twidIm = y[ix + 1].im;
      tmp_e = _mm_sub_pd(_mm_loadu_pd((const real_T *)&y[ix]), _mm_loadu_pd((
        const real_T *)&y[ix + 1]));
      _mm_storeu_pd((real_T *)&y[ix + 1], tmp_e);
      tmp_e = _mm_add_pd(_mm_loadu_pd((const real_T *)&y[ix]), _mm_set_pd(twidIm,
        twidRe));
      _mm_storeu_pd((real_T *)&y[ix], tmp_e);
    }

    idelta = 2;
    k = fftLen >> 2;
    kratio = k * twiddleStep;
    while (k > 0) {
      i1 = offsetCh;
      for (ix = 0; ix < k; ix++) {
        i2 = i1 + idelta;
        twidRe = y[i2].re;
        twidIm = y[i2].im;
        tmp_e = _mm_sub_pd(_mm_loadu_pd((const real_T *)&y[i1]), _mm_loadu_pd((
          const real_T *)&y[i2]));
        _mm_storeu_pd((real_T *)&y[i2], tmp_e);
        tmp_e = _mm_add_pd(_mm_loadu_pd((const real_T *)&y[i1]), _mm_set_pd
                           (twidIm, twidRe));
        _mm_storeu_pd((real_T *)&y[i1], tmp_e);
        i1 += idelta << 1;
      }

      istart = offsetCh;
      for (j = kratio; j < nHalf; j += kratio) {
        i1 = istart + 1;
        twidRe = tablePtr[j];
        twidIm = tablePtr[j + nQtr] * (real_T)fwdInvFactor;
        for (ix = 0; ix < k; ix++) {
          i2 = i1 + idelta;
          _mm_storeu_pd(&tmp[0], _mm_add_pd(_mm_mul_pd(_mm_set1_pd(y[i2].re),
            _mm_set_pd(twidIm, twidRe)), _mm_mul_pd(_mm_mul_pd(_mm_set1_pd(y[i2]
            .im), _mm_set_pd(twidRe, twidIm)), _mm_set_pd(1.0, -1.0))));
          tmp_e = _mm_set_pd(tmp[1], tmp[0]);
          tmp_p = _mm_sub_pd(_mm_loadu_pd((const real_T *)&y[i1]), tmp_e);
          _mm_storeu_pd((real_T *)&y[i2], tmp_p);
          tmp_e = _mm_add_pd(_mm_loadu_pd((const real_T *)&y[i1]), tmp_e);
          _mm_storeu_pd((real_T *)&y[i1], tmp_e);
          i1 += idelta << 1;
        }

        istart++;
      }

      idelta <<= 1;
      k >>= 1;
      kratio >>= 1;
    }

    offsetCh += nRows;
  }
}

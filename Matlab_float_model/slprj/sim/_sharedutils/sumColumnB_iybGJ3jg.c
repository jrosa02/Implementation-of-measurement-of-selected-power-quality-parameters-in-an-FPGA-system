#include "rtwtypes.h"
#include "sumColumnB_iybGJ3jg.h"
#include <emmintrin.h>

creal_T sumColumnB_iybGJ3jg(const creal_T x[512], int32_T col)
{
  __m128d tmp;
  creal_T y;
  int32_T i0;
  int32_T k;
  i0 = (col - 1) << 9;
  y = x[i0];
  for (k = 0; k < 511; k++) {
    tmp = _mm_add_pd(_mm_loadu_pd((const real_T *)&x[(i0 + k) + 1]),
                     _mm_loadu_pd((const real_T *)&y));
    _mm_storeu_pd((real_T *)&y, tmp);
  }

  return y;
}

/* Include files */

#include "fixedp_model_sfun.h"
#include "c2_fixedp_model.h"
#include <math.h>
#include "mwmathutil.h"
#define _SF_MEX_LISTEN_FOR_CTRL_C(S)   sf_mex_listen_for_ctrl_c(S);
#ifdef utFree
#undef utFree
#endif

#ifdef utMalloc
#undef utMalloc
#endif

#ifdef __cplusplus

extern "C" void *utMalloc(size_t size);
extern "C" void utFree(void*);

#else

extern void *utMalloc(size_t size);
extern void utFree(void*);

#endif

/* Forward Declarations */

/* Type Definitions */

/* Named Constants */
#define CALL_EVENT                     (-1)

/* Variable Declarations */

/* Variable Definitions */
static real_T _sfTime_;
static emlrtMCInfo c2_emlrtMCI = { 13, /* lineNo */
  9,                                   /* colNo */
  "sqrt",                              /* fName */
  "C:\\Program Files\\MATLAB\\R2024a\\toolbox\\eml\\lib\\matlab\\elfun\\sqrt.m"/* pName */
};

static emlrtRSInfo c2_emlrtRSI = { 3,  /* lineNo */
  "MATLAB Function",                   /* fcnName */
  "#fixedp_model:6"                    /* pathName */
};

static emlrtRSInfo c2_b_emlrtRSI = { 28,/* lineNo */
  "rms",                               /* fcnName */
  "C:\\Program Files\\MATLAB\\R2024a\\toolbox\\eml\\lib\\matlab\\datafun\\rms.m"/* pathName */
};

/* Function Declarations */
static void initialize_c2_fixedp_model(SFc2_fixedp_modelInstanceStruct
  *chartInstance);
static void initialize_params_c2_fixedp_model(SFc2_fixedp_modelInstanceStruct
  *chartInstance);
static void mdl_start_c2_fixedp_model(SFc2_fixedp_modelInstanceStruct
  *chartInstance);
static void mdl_terminate_c2_fixedp_model(SFc2_fixedp_modelInstanceStruct
  *chartInstance);
static void mdl_setup_runtime_resources_c2_fixedp_model
  (SFc2_fixedp_modelInstanceStruct *chartInstance);
static void mdl_cleanup_runtime_resources_c2_fixedp_model
  (SFc2_fixedp_modelInstanceStruct *chartInstance);
static void enable_c2_fixedp_model(SFc2_fixedp_modelInstanceStruct
  *chartInstance);
static void disable_c2_fixedp_model(SFc2_fixedp_modelInstanceStruct
  *chartInstance);
static void sf_gateway_c2_fixedp_model(SFc2_fixedp_modelInstanceStruct
  *chartInstance);
static void ext_mode_exec_c2_fixedp_model(SFc2_fixedp_modelInstanceStruct
  *chartInstance);
static void c2_update_jit_animation_c2_fixedp_model
  (SFc2_fixedp_modelInstanceStruct *chartInstance);
static void c2_do_animation_call_c2_fixedp_model(SFc2_fixedp_modelInstanceStruct
  *chartInstance);
static const mxArray *get_sim_state_c2_fixedp_model
  (SFc2_fixedp_modelInstanceStruct *chartInstance);
static void set_sim_state_c2_fixedp_model(SFc2_fixedp_modelInstanceStruct
  *chartInstance, const mxArray *c2_st);
static real_T c2_sumColumnB(SFc2_fixedp_modelInstanceStruct *chartInstance,
  real_T c2_x[511], int32_T c2_col);
static void c2_emlrt_update_log_1(SFc2_fixedp_modelInstanceStruct *chartInstance,
  creal_T c2_in[512], emlrtLocationLoggingDataType c2_table[], int32_T c2_index,
  creal_T c2_out[512]);
static real_T c2_emlrt_update_log_2(SFc2_fixedp_modelInstanceStruct
  *chartInstance, real_T c2_in, emlrtLocationLoggingDataType c2_table[], int32_T
  c2_index);
static void c2_emlrt_update_log_3(SFc2_fixedp_modelInstanceStruct *chartInstance,
  real_T c2_in[511], emlrtLocationLoggingDataType c2_table[], int32_T c2_index,
  real_T c2_out[511]);
static void c2_emlrtInitVarDataTables(SFc2_fixedp_modelInstanceStruct
  *chartInstance, emlrtLocationLoggingDataType c2_dataTables[6],
  emlrtLocationLoggingHistogramType c2_histTables[6]);
static real_T c2_emlrt_marshallIn(SFc2_fixedp_modelInstanceStruct *chartInstance,
  const mxArray *c2_nullptr, const char_T *c2_identifier);
static real_T c2_b_emlrt_marshallIn(SFc2_fixedp_modelInstanceStruct
  *chartInstance, const mxArray *c2_b_u, const emlrtMsgIdentifier *c2_parentId);
static void c2_slStringInitializeDynamicBuffers(SFc2_fixedp_modelInstanceStruct *
  chartInstance);
static void c2_chart_data_browse_helper(SFc2_fixedp_modelInstanceStruct
  *chartInstance, int32_T c2_ssIdNumber, const mxArray **c2_mxData, uint8_T
  *c2_isValueTooBig);
static void c2_b_emlrt_update_log_1(SFc2_fixedp_modelInstanceStruct
  *chartInstance, creal_T c2_in[512], emlrtLocationLoggingDataType c2_table[],
  int32_T c2_index);
static void c2_b_emlrt_update_log_3(SFc2_fixedp_modelInstanceStruct
  *chartInstance, real_T c2_in[511], emlrtLocationLoggingDataType c2_table[],
  int32_T c2_index);
static void init_dsm_address_info(SFc2_fixedp_modelInstanceStruct *chartInstance);
static void init_simulink_io_address(SFc2_fixedp_modelInstanceStruct
  *chartInstance);

/* Function Definitions */
static void initialize_c2_fixedp_model(SFc2_fixedp_modelInstanceStruct
  *chartInstance)
{
  sim_mode_is_external(chartInstance->S);
  chartInstance->c2_emlrtLocLogSimulated = false;
  c2_emlrtInitVarDataTables(chartInstance,
    chartInstance->c2_emlrtLocationLoggingDataTables,
    chartInstance->c2_emlrtLocLogHistTables);
  chartInstance->c2_doneDoubleBufferReInit = false;
  chartInstance->c2_sfEvent = CALL_EVENT;
  _sfTime_ = sf_get_time(chartInstance->S);
}

static void initialize_params_c2_fixedp_model(SFc2_fixedp_modelInstanceStruct
  *chartInstance)
{
  (void)chartInstance;
}

static void mdl_start_c2_fixedp_model(SFc2_fixedp_modelInstanceStruct
  *chartInstance)
{
  sim_mode_is_external(chartInstance->S);
}

static void mdl_terminate_c2_fixedp_model(SFc2_fixedp_modelInstanceStruct
  *chartInstance)
{
  const emlrtLocationLoggingFileInfoType c2_emlrtLocationLoggingFileInfo = {
    "#fixedp_model:6",                 /* mexFileName */
    "Sun Aug 11 14:10:26 2024",        /* timestamp */
    "",                                /* buildDir */
    1,                                 /* numFcns */
    256                                /* numHistogramBins */
  };

  const emlrtLocationLoggingFunctionInfoType
    c2_emlrtLocationLoggingFunctionInfoTable[1] = { { "c2_fixedp_model",/* fcnName */
      1,                               /* fcnId */
      6                                /* numInstrPoints */
    } };

  const emlrtLocationLoggingLocationType c2_emlrtLocationInfo[7] = { { 1,/* MxInfoID */
      18,                              /* TextStart */
      1,                               /* TextLength */
      1,                               /* Reason */
      false                            /* MoreLocations */
    }, { 2,                            /* MxInfoID */
      22,                              /* TextStart */
      1,                               /* TextLength */
      2,                               /* Reason */
      true                             /* MoreLocations */
    }, { 2,                            /* MxInfoID */
      26,                              /* TextStart */
      37,                              /* TextLength */
      3,                               /* Reason */
      false                            /* MoreLocations */
    }, { 2,                            /* MxInfoID */
      31,                              /* TextStart */
      30,                              /* TextLength */
      8,                               /* Reason */
      false                            /* MoreLocations */
    }, { 2,                            /* MxInfoID */
      31,                              /* TextStart */
      18,                              /* TextLength */
      3,                               /* Reason */
      false                            /* MoreLocations */
    }, { 3,                            /* MxInfoID */
      35,                              /* TextStart */
      13,                              /* TextLength */
      3,                               /* Reason */
      false                            /* MoreLocations */
    }, { 2,                            /* MxInfoID */
      52,                              /* TextStart */
      9,                               /* TextLength */
      3,                               /* Reason */
      false                            /* MoreLocations */
    } };

  const int32_T c2_emlrtLocationLoggingFieldCounts[6] = { 0, 0, 0, 0, 0, 0 };

  if (chartInstance->c2_emlrtLocLogSimulated) {
    emlrtLocationLoggingClearLog("#fixedp_model:6");
    emlrtLocationLoggingPushLog(&c2_emlrtLocationLoggingFileInfo,
      &c2_emlrtLocationLoggingFunctionInfoTable[0],
      &chartInstance->c2_emlrtLocationLoggingDataTables[0],
      &c2_emlrtLocationInfo[0], NULL, 0U, &c2_emlrtLocationLoggingFieldCounts[0],
      NULL);
    addResultsToFPTRepository("#fixedp_model:6");
  }
}

static void mdl_setup_runtime_resources_c2_fixedp_model
  (SFc2_fixedp_modelInstanceStruct *chartInstance)
{
  static const uint32_T c2_decisionTxtEndIdx = 0U;
  static const uint32_T c2_decisionTxtStartIdx = 0U;
  setDataBrowseFcn(chartInstance->S, (void *)&c2_chart_data_browse_helper);
  chartInstance->c2_RuntimeVar = sfListenerCacheSimStruct(chartInstance->S);
  sfListenerInitializeRuntimeVars(chartInstance->c2_RuntimeVar,
    &chartInstance->c2_IsDebuggerActive,
    &chartInstance->c2_IsSequenceViewerPresent, 0, 0,
    &chartInstance->c2_mlFcnLineNumber, &chartInstance->c2_IsHeatMapPresent, 0);
  sfSetAnimationVectors(chartInstance->S, &chartInstance->c2_JITStateAnimation[0],
                        &chartInstance->c2_JITTransitionAnimation[0]);
  covrtCreateStateflowInstanceData(chartInstance->c2_covrtInstance, 1U, 0U, 1U,
    4U);
  covrtChartInitFcn(chartInstance->c2_covrtInstance, 0U, false, false, false);
  covrtStateInitFcn(chartInstance->c2_covrtInstance, 0U, 0U, false, false, false,
                    0U, &c2_decisionTxtStartIdx, &c2_decisionTxtEndIdx);
  covrtTransInitFcn(chartInstance->c2_covrtInstance, 0U, 0, NULL, NULL, 0U, NULL);
  covrtEmlInitFcn(chartInstance->c2_covrtInstance, "", 4U, 0U, 1U, 0U, 0U, 0U,
                  0U, 0U, 0U, 0U, 0U, 0U);
  covrtEmlFcnInitFcn(chartInstance->c2_covrtInstance, 4U, 0U, 0U,
                     "c2_fixedp_model", 0, -1, 65);
}

static void mdl_cleanup_runtime_resources_c2_fixedp_model
  (SFc2_fixedp_modelInstanceStruct *chartInstance)
{
  sfListenerLightTerminate(chartInstance->c2_RuntimeVar);
  covrtDeleteStateflowInstanceData(chartInstance->c2_covrtInstance);
}

static void enable_c2_fixedp_model(SFc2_fixedp_modelInstanceStruct
  *chartInstance)
{
  _sfTime_ = sf_get_time(chartInstance->S);
}

static void disable_c2_fixedp_model(SFc2_fixedp_modelInstanceStruct
  *chartInstance)
{
  _sfTime_ = sf_get_time(chartInstance->S);
}

static void sf_gateway_c2_fixedp_model(SFc2_fixedp_modelInstanceStruct
  *chartInstance)
{
  static char_T c2_cv[30] = { 'C', 'o', 'd', 'e', 'r', ':', 't', 'o', 'o', 'l',
    'b', 'o', 'x', ':', 'E', 'l', 'F', 'u', 'n', 'D', 'o', 'm', 'a', 'i', 'n',
    'E', 'r', 'r', 'o', 'r' };

  static char_T c2_cv1[4] = { 's', 'q', 'r', 't' };

  emlrtStack c2_b_st;
  emlrtStack c2_c_st;
  emlrtStack c2_st = { NULL,           /* site */
    NULL,                              /* tls */
    NULL                               /* prev */
  };

  const mxArray *c2_g_y = NULL;
  const mxArray *c2_h_y = NULL;
  const mxArray *c2_i_y = NULL;
  creal_T c2_dcv[512];
  creal_T c2_x[511];
  creal_T c2_b_x;
  real_T c2_b_y[511];
  real_T c2_a;
  real_T c2_b;
  real_T c2_b_a;
  real_T c2_b_b;
  real_T c2_b_x1;
  real_T c2_b_x2;
  real_T c2_c_x;
  real_T c2_c_y;
  real_T c2_d_x;
  real_T c2_d_y;
  real_T c2_e_x;
  real_T c2_e_y;
  real_T c2_f_x;
  real_T c2_f_y;
  real_T c2_g_x;
  real_T c2_j_y;
  real_T c2_k_y;
  real_T c2_l_y;
  real_T c2_x1;
  real_T c2_x2;
  int32_T c2_b_k;
  int32_T c2_i;
  int32_T c2_i1;
  int32_T c2_i2;
  int32_T c2_k;
  boolean_T c2_b_p;
  boolean_T c2_p;
  c2_st.tls = chartInstance->c2_fEmlrtCtx;
  c2_b_st.prev = &c2_st;
  c2_b_st.tls = c2_st.tls;
  c2_c_st.prev = &c2_b_st;
  c2_c_st.tls = c2_b_st.tls;
  _sfTime_ = sf_get_time(chartInstance->S);
  chartInstance->c2_JITTransitionAnimation[0] = 0U;
  chartInstance->c2_sfEvent = CALL_EVENT;

  /* logging input variable 'u' for function 'c2_fixedp_model' */
  chartInstance->c2_emlrtLocLogSimulated = true;

  /* logging input variable 'u' for function 'c2_fixedp_model' */
  for (c2_i = 0; c2_i < 512; c2_i++) {
    c2_dcv[c2_i] = (*chartInstance->c2_u)[c2_i];
  }

  c2_b_emlrt_update_log_1(chartInstance, c2_dcv,
    chartInstance->c2_emlrtLocationLoggingDataTables, 0);
  covrtEmlFcnEval(chartInstance->c2_covrtInstance, 4U, 0, 0);
  for (c2_i1 = 0; c2_i1 < 511; c2_i1++) {
    c2_x[c2_i1] = (*chartInstance->c2_u)[c2_i1 + 1];
  }

  for (c2_k = 0; c2_k < 511; c2_k++) {
    c2_b_k = c2_k;
    c2_b_x = c2_x[c2_b_k];
    c2_x1 = c2_b_x.re;
    c2_x2 = c2_b_x.im;
    c2_a = c2_x1;
    c2_b = c2_x2;
    c2_e_y = muDoubleScalarHypot(c2_a, c2_b);
    c2_b_y[c2_b_k] = c2_e_y;
  }

  c2_b_st.site = &c2_emlrtRSI;
  c2_b_emlrt_update_log_3(chartInstance, c2_b_y,
    chartInstance->c2_emlrtLocationLoggingDataTables, 4);
  for (c2_i2 = 0; c2_i2 < 511; c2_i2++) {
    c2_b_y[c2_i2] *= c2_b_y[c2_i2];
  }

  c2_c_y = c2_sumColumnB(chartInstance, c2_b_y, 1);
  c2_d_y = c2_c_y / 511.0;
  c2_c_st.site = &c2_b_emlrtRSI;
  c2_c_x = c2_d_y;
  c2_f_y = c2_c_x;
  c2_d_x = c2_f_y;
  if (c2_d_x < 0.0) {
    c2_p = true;
  } else {
    c2_p = false;
  }

  c2_b_p = c2_p;
  if (c2_b_p) {
    c2_g_y = NULL;
    sf_mex_assign(&c2_g_y, sf_mex_create("y", c2_cv, 10, 0U, 1, 0U, 2, 1, 30),
                  false);
    c2_h_y = NULL;
    sf_mex_assign(&c2_h_y, sf_mex_create("y", c2_cv, 10, 0U, 1, 0U, 2, 1, 30),
                  false);
    c2_i_y = NULL;
    sf_mex_assign(&c2_i_y, sf_mex_create("y", c2_cv1, 10, 0U, 1, 0U, 2, 1, 4),
                  false);
    sf_mex_call(&c2_c_st, &c2_emlrtMCI, "error", 0U, 2U, 14, c2_g_y, 14,
                sf_mex_call(&c2_c_st, NULL, "getString", 1U, 1U, 14, sf_mex_call
      (&c2_c_st, NULL, "message", 1U, 2U, 14, c2_h_y, 14, c2_i_y)));
  }

  c2_f_y = muDoubleScalarSqrt(c2_f_y);
  c2_b_x = (*chartInstance->c2_u)[0];
  c2_b_x1 = c2_b_x.re;
  c2_b_x2 = c2_b_x.im;
  c2_b_a = c2_b_x1;
  c2_b_b = c2_b_x2;
  c2_j_y = muDoubleScalarHypot(c2_b_a, c2_b_b);
  c2_e_x = c2_emlrt_update_log_2(chartInstance, c2_emlrt_update_log_2
    (chartInstance, c2_f_y, chartInstance->c2_emlrtLocationLoggingDataTables, 3)
    / c2_emlrt_update_log_2(chartInstance, c2_j_y,
    chartInstance->c2_emlrtLocationLoggingDataTables, 5),
    chartInstance->c2_emlrtLocationLoggingDataTables, 2);
  c2_f_x = c2_e_x;
  c2_g_x = c2_f_x;
  c2_k_y = muDoubleScalarAbs(c2_g_x);
  c2_l_y = c2_emlrt_update_log_2(chartInstance, c2_k_y,
    chartInstance->c2_emlrtLocationLoggingDataTables, 1);
  *chartInstance->c2_y = c2_l_y;
  covrtSigUpdateFcn(chartInstance->c2_covrtInstance, 1U, *chartInstance->c2_y);
}

static void ext_mode_exec_c2_fixedp_model(SFc2_fixedp_modelInstanceStruct
  *chartInstance)
{
  (void)chartInstance;
}

static void c2_update_jit_animation_c2_fixedp_model
  (SFc2_fixedp_modelInstanceStruct *chartInstance)
{
  (void)chartInstance;
}

static void c2_do_animation_call_c2_fixedp_model(SFc2_fixedp_modelInstanceStruct
  *chartInstance)
{
  (void)chartInstance;
}

static const mxArray *get_sim_state_c2_fixedp_model
  (SFc2_fixedp_modelInstanceStruct *chartInstance)
{
  const mxArray *c2_b_y = NULL;
  const mxArray *c2_c_y = NULL;
  const mxArray *c2_st = NULL;
  c2_st = NULL;
  c2_b_y = NULL;
  sf_mex_assign(&c2_b_y, sf_mex_createcellmatrix(1, 1), false);
  c2_c_y = NULL;
  sf_mex_assign(&c2_c_y, sf_mex_create("y", chartInstance->c2_y, 0, 0U, 0, 0U, 0),
                false);
  sf_mex_setcell(c2_b_y, 0, c2_c_y);
  sf_mex_assign(&c2_st, c2_b_y, false);
  return c2_st;
}

static void set_sim_state_c2_fixedp_model(SFc2_fixedp_modelInstanceStruct
  *chartInstance, const mxArray *c2_st)
{
  const mxArray *c2_b_u;
  chartInstance->c2_doneDoubleBufferReInit = true;
  c2_b_u = sf_mex_dup(c2_st);
  *chartInstance->c2_y = c2_emlrt_marshallIn(chartInstance, sf_mex_dup
    (sf_mex_getcell(c2_b_u, 0)), "y");
  sf_mex_destroy(&c2_b_u);
  sf_mex_destroy(&c2_st);
}

static real_T c2_sumColumnB(SFc2_fixedp_modelInstanceStruct *chartInstance,
  real_T c2_x[511], int32_T c2_col)
{
  real_T c2_b_y;
  int32_T c2_b_col;
  int32_T c2_b_k;
  int32_T c2_i0;
  int32_T c2_k;
  (void)chartInstance;
  c2_b_col = c2_col - 1;
  c2_i0 = c2_b_col * 511;
  c2_b_y = c2_x[c2_i0];
  for (c2_k = 0; c2_k < 510; c2_k++) {
    c2_b_k = c2_k;
    c2_b_y += c2_x[(c2_i0 + c2_b_k) + 1];
  }

  return c2_b_y;
}

static void c2_emlrt_update_log_1(SFc2_fixedp_modelInstanceStruct *chartInstance,
  creal_T c2_in[512], emlrtLocationLoggingDataType c2_table[], int32_T c2_index,
  creal_T c2_out[512])
{
  int32_T c2_i;
  for (c2_i = 0; c2_i < 512; c2_i++) {
    c2_out[c2_i] = c2_in[c2_i];
  }

  c2_b_emlrt_update_log_1(chartInstance, c2_out, c2_table, c2_index);
}

static real_T c2_emlrt_update_log_2(SFc2_fixedp_modelInstanceStruct
  *chartInstance, real_T c2_in, emlrtLocationLoggingDataType c2_table[], int32_T
  c2_index)
{
  emlrtLocationLoggingDataType *c2_b_table;
  emlrtLocationLoggingHistogramType *c2_histTable;
  real_T c2_inDouble;
  real_T c2_localMax;
  real_T c2_localMin;
  real_T c2_significand;
  int32_T c2_exponent;
  boolean_T c2_isLoggingEnabledHere;
  (void)chartInstance;
  c2_isLoggingEnabledHere = (c2_index >= 0);
  if (c2_isLoggingEnabledHere) {
    c2_b_table = (emlrtLocationLoggingDataType *)&c2_table[c2_index];
    c2_localMin = c2_b_table[0U].SimMin;
    c2_localMax = c2_b_table[0U].SimMax;
    c2_histTable = c2_b_table[0U].HistogramTable;

    /* Simulation Min-Max logging. */
    if (c2_in < c2_localMin) {
      c2_localMin = c2_in;
    }

    if (c2_in > c2_localMax) {
      c2_localMax = c2_in;
    }

    /* Histogram logging. */
    c2_inDouble = c2_in;
    c2_histTable->TotalNumberOfValues++;
    if (c2_inDouble == 0.0) {
      c2_histTable->NumberOfZeros++;
    } else {
      c2_histTable->SimSum += c2_inDouble;
      if ((!muDoubleScalarIsInf(c2_inDouble)) && (!muDoubleScalarIsNaN
           (c2_inDouble))) {
        c2_significand = frexp(c2_inDouble, &c2_exponent);
        if (c2_exponent > 128) {
          c2_exponent = 128;
        }

        if (c2_exponent < -127) {
          c2_exponent = -127;
        }

        if (c2_significand < 0.0) {
          c2_histTable->NumberOfNegativeValues++;
          c2_histTable->HistogramOfNegativeValues[127 + c2_exponent]++;
        } else {
          c2_histTable->NumberOfPositiveValues++;
          c2_histTable->HistogramOfPositiveValues[127 + c2_exponent]++;
        }
      }
    }

    c2_b_table[0U].SimMin = c2_localMin;
    c2_b_table[0U].SimMax = c2_localMax;

    /* IsAlwaysInteger logging. */
    if (c2_in != muDoubleScalarFloor(c2_in)) {
      c2_b_table[0U].IsAlwaysInteger = false;
    }
  }

  return c2_in;
}

static void c2_emlrt_update_log_3(SFc2_fixedp_modelInstanceStruct *chartInstance,
  real_T c2_in[511], emlrtLocationLoggingDataType c2_table[], int32_T c2_index,
  real_T c2_out[511])
{
  int32_T c2_i;
  for (c2_i = 0; c2_i < 511; c2_i++) {
    c2_out[c2_i] = c2_in[c2_i];
  }

  c2_b_emlrt_update_log_3(chartInstance, c2_out, c2_table, c2_index);
}

static void c2_emlrtInitVarDataTables(SFc2_fixedp_modelInstanceStruct
  *chartInstance, emlrtLocationLoggingDataType c2_dataTables[6],
  emlrtLocationLoggingHistogramType c2_histTables[6])
{
  int32_T c2_i;
  int32_T c2_iH;
  (void)chartInstance;
  for (c2_i = 0; c2_i < 6; c2_i++) {
    c2_dataTables[c2_i].SimMin = rtInf;
    c2_dataTables[c2_i].SimMax = rtMinusInf;
    c2_dataTables[c2_i].OverflowWraps = 0;
    c2_dataTables[c2_i].Saturations = 0;
    c2_dataTables[c2_i].IsAlwaysInteger = true;
    c2_dataTables[c2_i].HistogramTable = &c2_histTables[c2_i];
    c2_histTables[c2_i].NumberOfZeros = 0.0;
    c2_histTables[c2_i].NumberOfPositiveValues = 0.0;
    c2_histTables[c2_i].NumberOfNegativeValues = 0.0;
    c2_histTables[c2_i].TotalNumberOfValues = 0.0;
    c2_histTables[c2_i].SimSum = 0.0;
    for (c2_iH = 0; c2_iH < 256; c2_iH++) {
      c2_histTables[c2_i].HistogramOfPositiveValues[c2_iH] = 0.0;
      c2_histTables[c2_i].HistogramOfNegativeValues[c2_iH] = 0.0;
    }
  }
}

const mxArray *sf_c2_fixedp_model_get_eml_resolved_functions_info(void)
{
  const mxArray *c2_nameCaptureInfo = NULL;
  c2_nameCaptureInfo = NULL;
  sf_mex_assign(&c2_nameCaptureInfo, sf_mex_create("nameCaptureInfo", NULL, 0,
    0U, 1, 0U, 2, 0, 1), false);
  return c2_nameCaptureInfo;
}

static real_T c2_emlrt_marshallIn(SFc2_fixedp_modelInstanceStruct *chartInstance,
  const mxArray *c2_nullptr, const char_T *c2_identifier)
{
  emlrtMsgIdentifier c2_thisId;
  real_T c2_b_y;
  c2_thisId.fIdentifier = (const char_T *)c2_identifier;
  c2_thisId.fParent = NULL;
  c2_thisId.bParentIsCell = false;
  c2_b_y = c2_b_emlrt_marshallIn(chartInstance, sf_mex_dup(c2_nullptr),
    &c2_thisId);
  sf_mex_destroy(&c2_nullptr);
  return c2_b_y;
}

static real_T c2_b_emlrt_marshallIn(SFc2_fixedp_modelInstanceStruct
  *chartInstance, const mxArray *c2_b_u, const emlrtMsgIdentifier *c2_parentId)
{
  real_T c2_b_y;
  real_T c2_d;
  (void)chartInstance;
  sf_mex_import(c2_parentId, sf_mex_dup(c2_b_u), &c2_d, 1, 0, 0U, 0, 0U, 0);
  c2_b_y = c2_d;
  sf_mex_destroy(&c2_b_u);
  return c2_b_y;
}

static void c2_slStringInitializeDynamicBuffers(SFc2_fixedp_modelInstanceStruct *
  chartInstance)
{
  (void)chartInstance;
}

static void c2_chart_data_browse_helper(SFc2_fixedp_modelInstanceStruct
  *chartInstance, int32_T c2_ssIdNumber, const mxArray **c2_mxData, uint8_T
  *c2_isValueTooBig)
{
  real_T c2_d;
  *c2_mxData = NULL;
  *c2_mxData = NULL;
  *c2_isValueTooBig = 0U;
  switch (c2_ssIdNumber) {
   case 4U:
    sf_mex_assign(c2_mxData, sf_mex_create("mxData", *chartInstance->c2_u, 0, 1U,
      1, 0U, 2, 512, 1), false);
    break;

   case 5U:
    c2_d = *chartInstance->c2_y;
    sf_mex_assign(c2_mxData, sf_mex_create("mxData", &c2_d, 0, 0U, 0, 0U, 0),
                  false);
    break;
  }
}

static void c2_b_emlrt_update_log_1(SFc2_fixedp_modelInstanceStruct
  *chartInstance, creal_T c2_in[512], emlrtLocationLoggingDataType c2_table[],
  int32_T c2_index)
{
  emlrtLocationLoggingDataType *c2_b_table;
  emlrtLocationLoggingHistogramType *c2_histTable;
  real_T c2_b_inDouble;
  real_T c2_b_significand;
  real_T c2_inDouble;
  real_T c2_localMax;
  real_T c2_localMin;
  real_T c2_significand;
  int32_T c2_b_exponent;
  int32_T c2_b_i;
  int32_T c2_exponent;
  int32_T c2_i;
  boolean_T c2_isLoggingEnabledHere;
  (void)chartInstance;
  c2_isLoggingEnabledHere = (c2_index >= 0);
  if (c2_isLoggingEnabledHere) {
    c2_b_table = (emlrtLocationLoggingDataType *)&c2_table[c2_index];
    c2_localMin = c2_b_table[0U].SimMin;
    c2_localMax = c2_b_table[0U].SimMax;
    c2_histTable = c2_b_table[0U].HistogramTable;
    for (c2_i = 0; c2_i < 512; c2_i++) {
      /* Simulation Min-Max logging. */
      if (c2_in[c2_i].re < c2_localMin) {
        c2_localMin = c2_in[c2_i].re;
      }

      if (c2_in[c2_i].re > c2_localMax) {
        c2_localMax = c2_in[c2_i].re;
      }

      if (c2_in[c2_i].im < c2_localMin) {
        c2_localMin = c2_in[c2_i].im;
      }

      if (c2_in[c2_i].im > c2_localMax) {
        c2_localMax = c2_in[c2_i].im;
      }

      /* Histogram logging. */
      c2_inDouble = c2_in[c2_i].re;
      c2_histTable->TotalNumberOfValues++;
      if (c2_inDouble == 0.0) {
        c2_histTable->NumberOfZeros++;
      } else {
        c2_histTable->SimSum += c2_inDouble;
        if ((!muDoubleScalarIsInf(c2_inDouble)) && (!muDoubleScalarIsNaN
             (c2_inDouble))) {
          c2_significand = frexp(c2_inDouble, &c2_exponent);
          if (c2_exponent > 128) {
            c2_exponent = 128;
          }

          if (c2_exponent < -127) {
            c2_exponent = -127;
          }

          if (c2_significand < 0.0) {
            c2_histTable->NumberOfNegativeValues++;
            c2_histTable->HistogramOfNegativeValues[127 + c2_exponent]++;
          } else {
            c2_histTable->NumberOfPositiveValues++;
            c2_histTable->HistogramOfPositiveValues[127 + c2_exponent]++;
          }
        }
      }

      c2_b_inDouble = c2_in[c2_i].im;
      c2_histTable->TotalNumberOfValues++;
      if (c2_b_inDouble == 0.0) {
        c2_histTable->NumberOfZeros++;
      } else {
        c2_histTable->SimSum += c2_b_inDouble;
        if ((!muDoubleScalarIsInf(c2_b_inDouble)) && (!muDoubleScalarIsNaN
             (c2_b_inDouble))) {
          c2_b_significand = frexp(c2_b_inDouble, &c2_b_exponent);
          if (c2_b_exponent > 128) {
            c2_b_exponent = 128;
          }

          if (c2_b_exponent < -127) {
            c2_b_exponent = -127;
          }

          if (c2_b_significand < 0.0) {
            c2_histTable->NumberOfNegativeValues++;
            c2_histTable->HistogramOfNegativeValues[127 + c2_b_exponent]++;
          } else {
            c2_histTable->NumberOfPositiveValues++;
            c2_histTable->HistogramOfPositiveValues[127 + c2_b_exponent]++;
          }
        }
      }
    }

    c2_b_table[0U].SimMin = c2_localMin;
    c2_b_table[0U].SimMax = c2_localMax;

    /* IsAlwaysInteger logging. */
    c2_b_i = 0;
    while (c2_b_table[0U].IsAlwaysInteger && (c2_b_i < 512)) {
      if ((c2_in[c2_b_i].re != muDoubleScalarFloor(c2_in[c2_b_i].re)) ||
          (c2_in[c2_b_i].im != muDoubleScalarFloor(c2_in[c2_b_i].im))) {
        c2_b_table[0U].IsAlwaysInteger = false;
      }

      c2_b_i++;
    }
  }
}

static void c2_b_emlrt_update_log_3(SFc2_fixedp_modelInstanceStruct
  *chartInstance, real_T c2_in[511], emlrtLocationLoggingDataType c2_table[],
  int32_T c2_index)
{
  emlrtLocationLoggingDataType *c2_b_table;
  emlrtLocationLoggingHistogramType *c2_histTable;
  real_T c2_inDouble;
  real_T c2_localMax;
  real_T c2_localMin;
  real_T c2_significand;
  int32_T c2_b_i;
  int32_T c2_exponent;
  int32_T c2_i;
  boolean_T c2_isLoggingEnabledHere;
  (void)chartInstance;
  c2_isLoggingEnabledHere = (c2_index >= 0);
  if (c2_isLoggingEnabledHere) {
    c2_b_table = (emlrtLocationLoggingDataType *)&c2_table[c2_index];
    c2_localMin = c2_b_table[0U].SimMin;
    c2_localMax = c2_b_table[0U].SimMax;
    c2_histTable = c2_b_table[0U].HistogramTable;
    for (c2_i = 0; c2_i < 511; c2_i++) {
      /* Simulation Min-Max logging. */
      if (c2_in[c2_i] < c2_localMin) {
        c2_localMin = c2_in[c2_i];
      }

      if (c2_in[c2_i] > c2_localMax) {
        c2_localMax = c2_in[c2_i];
      }

      /* Histogram logging. */
      c2_inDouble = c2_in[c2_i];
      c2_histTable->TotalNumberOfValues++;
      if (c2_inDouble == 0.0) {
        c2_histTable->NumberOfZeros++;
      } else {
        c2_histTable->SimSum += c2_inDouble;
        if ((!muDoubleScalarIsInf(c2_inDouble)) && (!muDoubleScalarIsNaN
             (c2_inDouble))) {
          c2_significand = frexp(c2_inDouble, &c2_exponent);
          if (c2_exponent > 128) {
            c2_exponent = 128;
          }

          if (c2_exponent < -127) {
            c2_exponent = -127;
          }

          if (c2_significand < 0.0) {
            c2_histTable->NumberOfNegativeValues++;
            c2_histTable->HistogramOfNegativeValues[127 + c2_exponent]++;
          } else {
            c2_histTable->NumberOfPositiveValues++;
            c2_histTable->HistogramOfPositiveValues[127 + c2_exponent]++;
          }
        }
      }
    }

    c2_b_table[0U].SimMin = c2_localMin;
    c2_b_table[0U].SimMax = c2_localMax;

    /* IsAlwaysInteger logging. */
    c2_b_i = 0;
    while (c2_b_table[0U].IsAlwaysInteger && (c2_b_i < 511)) {
      if (c2_in[c2_b_i] != muDoubleScalarFloor(c2_in[c2_b_i])) {
        c2_b_table[0U].IsAlwaysInteger = false;
      }

      c2_b_i++;
    }
  }
}

static void init_dsm_address_info(SFc2_fixedp_modelInstanceStruct *chartInstance)
{
  (void)chartInstance;
}

static void init_simulink_io_address(SFc2_fixedp_modelInstanceStruct
  *chartInstance)
{
  chartInstance->c2_covrtInstance = (CovrtStateflowInstance *)
    sfrtGetCovrtInstance(chartInstance->S);
  chartInstance->c2_fEmlrtCtx = (void *)sfrtGetEmlrtCtx(chartInstance->S);
  chartInstance->c2_u = (creal_T (*)[512])ssGetInputPortSignal_wrapper
    (chartInstance->S, 0);
  chartInstance->c2_y = (real_T *)ssGetOutputPortSignal_wrapper(chartInstance->S,
    1);
}

#include <stdio.h>
#include <stdlib.h>
#include <string.h>

/* SFunction Glue Code */
void sf_c2_fixedp_model_get_check_sum(mxArray *plhs[])
{
  ((real_T *)mxGetPr((plhs[0])))[0] = (real_T)(3659978702U);
  ((real_T *)mxGetPr((plhs[0])))[1] = (real_T)(1424013957U);
  ((real_T *)mxGetPr((plhs[0])))[2] = (real_T)(2057349285U);
  ((real_T *)mxGetPr((plhs[0])))[3] = (real_T)(4109262343U);
}

mxArray *sf_c2_fixedp_model_third_party_uses_info(void)
{
  mxArray * mxcell3p = mxCreateCellMatrix(1,0);
  return(mxcell3p);
}

mxArray *sf_c2_fixedp_model_jit_fallback_info(void)
{
  const char *infoFields[] = { "fallbackType", "fallbackReason",
    "hiddenFallbackType", "hiddenFallbackReason", "incompatibleSymbol" };

  mxArray *mxInfo = mxCreateStructMatrix(1, 1, 5, infoFields);
  mxArray *fallbackType = mxCreateString("early");
  mxArray *fallbackReason = mxCreateString("fixpt_minmax_logging");
  mxArray *hiddenFallbackType = mxCreateString("");
  mxArray *hiddenFallbackReason = mxCreateString("");
  mxArray *incompatibleSymbol = mxCreateString("chartInfo");
  mxSetField(mxInfo, 0, infoFields[0], fallbackType);
  mxSetField(mxInfo, 0, infoFields[1], fallbackReason);
  mxSetField(mxInfo, 0, infoFields[2], hiddenFallbackType);
  mxSetField(mxInfo, 0, infoFields[3], hiddenFallbackReason);
  mxSetField(mxInfo, 0, infoFields[4], incompatibleSymbol);
  return mxInfo;
}

mxArray *sf_c2_fixedp_model_updateBuildInfo_args_info(void)
{
  mxArray *mxBIArgs = mxCreateCellMatrix(1,0);
  return mxBIArgs;
}

static const mxArray *sf_get_sim_state_info_c2_fixedp_model(void)
{
  const char *infoFields[] = { "chartChecksum", "varInfo" };

  mxArray *mxInfo = mxCreateStructMatrix(1, 1, 2, infoFields);
  mxArray *mxVarInfo = sf_mex_decode(
    "eNpjYPT0ZQACPiCWYGRgYAPSHEDMxAABrFA+IxKGiLPAxRWAuKSyIBUkXlyU7JkCpPMSc8H8xNI"
    "Kz7y0fLD5FgwI89kImM8JFYeAD/aU6RdxAOk3QNLPQkC/AJBVCQ0XEAAALEwMtA=="
    );
  mxArray *mxChecksum = mxCreateDoubleMatrix(1, 4, mxREAL);
  sf_c2_fixedp_model_get_check_sum(&mxChecksum);
  mxSetField(mxInfo, 0, infoFields[0], mxChecksum);
  mxSetField(mxInfo, 0, infoFields[1], mxVarInfo);
  return mxInfo;
}

static const char* sf_get_instance_specialization(void)
{
  return "s9vIvDCd7ymtkLhKX7KXbpC";
}

static void sf_opaque_initialize_c2_fixedp_model(void *chartInstanceVar)
{
  initialize_params_c2_fixedp_model((SFc2_fixedp_modelInstanceStruct*)
    chartInstanceVar);
  initialize_c2_fixedp_model((SFc2_fixedp_modelInstanceStruct*) chartInstanceVar);
}

static void sf_opaque_enable_c2_fixedp_model(void *chartInstanceVar)
{
  enable_c2_fixedp_model((SFc2_fixedp_modelInstanceStruct*) chartInstanceVar);
}

static void sf_opaque_disable_c2_fixedp_model(void *chartInstanceVar)
{
  disable_c2_fixedp_model((SFc2_fixedp_modelInstanceStruct*) chartInstanceVar);
}

static void sf_opaque_gateway_c2_fixedp_model(void *chartInstanceVar)
{
  sf_gateway_c2_fixedp_model((SFc2_fixedp_modelInstanceStruct*) chartInstanceVar);
}

static const mxArray* sf_opaque_get_sim_state_c2_fixedp_model(SimStruct* S)
{
  return get_sim_state_c2_fixedp_model((SFc2_fixedp_modelInstanceStruct *)
    sf_get_chart_instance_ptr(S));     /* raw sim ctx */
}

static void sf_opaque_set_sim_state_c2_fixedp_model(SimStruct* S, const mxArray *
  st)
{
  set_sim_state_c2_fixedp_model((SFc2_fixedp_modelInstanceStruct*)
    sf_get_chart_instance_ptr(S), st);
}

static void sf_opaque_cleanup_runtime_resources_c2_fixedp_model(void
  *chartInstanceVar)
{
  if (chartInstanceVar!=NULL) {
    SimStruct *S = ((SFc2_fixedp_modelInstanceStruct*) chartInstanceVar)->S;
    if (sim_mode_is_rtw_gen(S) || sim_mode_is_external(S)) {
      sf_clear_rtw_identifier(S);
      unload_fixedp_model_optimization_info();
    }

    mdl_cleanup_runtime_resources_c2_fixedp_model
      ((SFc2_fixedp_modelInstanceStruct*) chartInstanceVar);
    utFree(chartInstanceVar);
    if (ssGetUserData(S)!= NULL) {
      sf_free_ChartRunTimeInfo(S);
    }

    ssSetUserData(S,NULL);
  }
}

static void sf_opaque_mdl_start_c2_fixedp_model(void *chartInstanceVar)
{
  mdl_start_c2_fixedp_model((SFc2_fixedp_modelInstanceStruct*) chartInstanceVar);
  if (chartInstanceVar) {
    sf_reset_warnings_ChartRunTimeInfo(((SFc2_fixedp_modelInstanceStruct*)
      chartInstanceVar)->S);
  }
}

static void sf_opaque_mdl_terminate_c2_fixedp_model(void *chartInstanceVar)
{
  mdl_terminate_c2_fixedp_model((SFc2_fixedp_modelInstanceStruct*)
    chartInstanceVar);
}

extern unsigned int sf_machine_global_initializer_called(void);
static void mdlProcessParameters_c2_fixedp_model(SimStruct *S)
{
  mdlProcessParamsCommon(S);
  if (sf_machine_global_initializer_called()) {
    initialize_params_c2_fixedp_model((SFc2_fixedp_modelInstanceStruct*)
      sf_get_chart_instance_ptr(S));
  }
}

const char* sf_c2_fixedp_model_get_post_codegen_info(void)
{
  int i;
  const char* encStrCodegen [20] = {
    "eNrdWN2O20QUnqyWFUWlbAVSe4EEl0gICbZCBQnRbp2kjbrLRjhbqkqomtgn8SjjGXd+kg1Xveg",
    "rVFzzHEhc8wg8BpeIK844TjbyhsTjSN0FS44zdr75zpz5zo9DGp1jgscNPB/dImQPr2/juUNmx1",
    "vFuLF0zu7vkm+KcfcdQqKEKtMRA0n8j0jGMAQR2sGAnXlihU27VNFU1+AVNIXvQUtuDZPCz3gmB",
    "qBARDhBJpXx4tUstZyJUduKyDHrHxIWJWEiLY8f4IQ0PhF8+m+8mTVdZGwyBZFpA8QmUdIOkzan",
    "w/VeUGYSJBCNtE29faXBhDZzS9XHlhuWcWidQdQR2lD0gt6w3tBQA4E581YI0+EcLdOMMyqq+zq",
    "hOoQM1WHgNIvx88Qa9F5FXuTrM0GNVIzyVsoDp/CK2C5HO49R1tzbzyY1Tejb4ZCJofOusikIXD",
    "/qpIKvBoEcg6JDOBGeMehW1zrLN3ihy+ox2HGyrBWDNp3tiq6FzXlbY/SQrsnbjkRAOdd+2J7Mj",
    "mAMPOdvUkNrYGf8HmCtWdyTT6hyUeAZSVawFxYKbCBFzKrv8LiEyhPud5g8K8BZ6iQFMbp5Yfpi",
    "ok2atNrINMAwah4dVeS7iO0IA2pAI6ic+xRlGtDgXFeevDHTtM8dGr1k8lVWngFEbSjRAyuaE6l",
    "G6GPfJHvuKxcJfmiIh9AEA3nCaKG6n1BuK9qcasxwTh6nGjOWHy9iXfzUAkc0SiB29YRxOAbtJt",
    "CV8zPWkUNc7ZiZaRN0pFhWNZKshhgLifNSb5rBqRgJORFtJdOw6AjW6AoAswZVAsvCAyxLatpG4",
    "6tZreBFzymrTnuWUsNp32njIQisLG6trhLSCKOqJbB1Q4O2wYbsJyztQjNtsJ2atvIYiPN+9HbD",
    "rx+9WYzvLGKpo3sKd4piGRbYKR3282YPeiyF/EZIsaeYDYvD8X5Oznmv7azn3cFvjZo4siXu/hJ",
    "ud4V/3lvC7Rfj6OA5NtkQZ8/TvD0p81+v4OdVdpdx5ALu3L/z6ydL+MYKXrJ03WZflv30bolnt4",
    "TbK3z14283X7969Pfk05en7z/7+ddftuH/3VPHN4rxh/O+bFG5xheSe/7etkEHt0o6cGP99bgzb",
    "gbx3WlqRkfJ46d3Hz/tZ0GtuJvf/xhPg4ktz5Mq6sTFO5YbUzvr/d38Xy3Zu7dh/mtLeiLkz3vb",
    "4T+4X97H3Q34ffw2Len2queHy8pHl2lnlbzVeMM48oZx267PNx//13+/Lg+Q0u/3r/A6yJr85FO",
    "Xr9q6/iB+deijYvzt4l05SBiPV3TrxWNsqAernv5P9P2Xp//mfULL+a/4s+/ZnUNB+RTb89nrT3",
    "G7q9z/TItHCqhe/Q50GXWoan98vRTfbjxhIpYT/dkXB18ebFPX/gHAm/0h",
    ""
  };

  static char newstr [1409] = "";
  newstr[0] = '\0';
  for (i = 0; i < 20; i++) {
    strcat(newstr, encStrCodegen[i]);
  }

  return newstr;
}

static void mdlSetWorkWidths_c2_fixedp_model(SimStruct *S)
{
  const char* newstr = sf_c2_fixedp_model_get_post_codegen_info();
  sf_set_work_widths(S, newstr);
  ssSetChecksum0(S,(2500968029U));
  ssSetChecksum1(S,(2012891268U));
  ssSetChecksum2(S,(324370475U));
  ssSetChecksum3(S,(2713425754U));
}

static void mdlRTW_c2_fixedp_model(SimStruct *S)
{
  if (sim_mode_is_rtw_gen(S)) {
    ssWriteRTWStrParam(S, "StateflowChartType", "Embedded MATLAB");
  }
}

static void mdlSetupRuntimeResources_c2_fixedp_model(SimStruct *S)
{
  SFc2_fixedp_modelInstanceStruct *chartInstance;
  chartInstance = (SFc2_fixedp_modelInstanceStruct *)utMalloc(sizeof
    (SFc2_fixedp_modelInstanceStruct));
  if (chartInstance==NULL) {
    sf_mex_error_message("Could not allocate memory for chart instance.");
  }

  memset(chartInstance, 0, sizeof(SFc2_fixedp_modelInstanceStruct));
  chartInstance->chartInfo.chartInstance = chartInstance;
  chartInstance->chartInfo.isEMLChart = 1;
  chartInstance->chartInfo.chartInitialized = 0;
  chartInstance->chartInfo.sFunctionGateway = sf_opaque_gateway_c2_fixedp_model;
  chartInstance->chartInfo.initializeChart =
    sf_opaque_initialize_c2_fixedp_model;
  chartInstance->chartInfo.mdlStart = sf_opaque_mdl_start_c2_fixedp_model;
  chartInstance->chartInfo.mdlTerminate =
    sf_opaque_mdl_terminate_c2_fixedp_model;
  chartInstance->chartInfo.mdlCleanupRuntimeResources =
    sf_opaque_cleanup_runtime_resources_c2_fixedp_model;
  chartInstance->chartInfo.enableChart = sf_opaque_enable_c2_fixedp_model;
  chartInstance->chartInfo.disableChart = sf_opaque_disable_c2_fixedp_model;
  chartInstance->chartInfo.getSimState = sf_opaque_get_sim_state_c2_fixedp_model;
  chartInstance->chartInfo.setSimState = sf_opaque_set_sim_state_c2_fixedp_model;
  chartInstance->chartInfo.getSimStateInfo =
    sf_get_sim_state_info_c2_fixedp_model;
  chartInstance->chartInfo.zeroCrossings = NULL;
  chartInstance->chartInfo.outputs = NULL;
  chartInstance->chartInfo.derivatives = NULL;
  chartInstance->chartInfo.mdlRTW = mdlRTW_c2_fixedp_model;
  chartInstance->chartInfo.mdlSetWorkWidths = mdlSetWorkWidths_c2_fixedp_model;
  chartInstance->chartInfo.extModeExec = NULL;
  chartInstance->chartInfo.restoreLastMajorStepConfiguration = NULL;
  chartInstance->chartInfo.restoreBeforeLastMajorStepConfiguration = NULL;
  chartInstance->chartInfo.storeCurrentConfiguration = NULL;
  chartInstance->chartInfo.callAtomicSubchartUserFcn = NULL;
  chartInstance->chartInfo.callAtomicSubchartAutoFcn = NULL;
  chartInstance->chartInfo.callAtomicSubchartEventFcn = NULL;
  chartInstance->S = S;
  chartInstance->chartInfo.dispatchToExportedFcn = NULL;
  sf_init_ChartRunTimeInfo(S, &(chartInstance->chartInfo), false, 0);
  init_dsm_address_info(chartInstance);
  init_simulink_io_address(chartInstance);
  if (!sim_mode_is_rtw_gen(S)) {
  }

  mdl_setup_runtime_resources_c2_fixedp_model(chartInstance);
}

void c2_fixedp_model_method_dispatcher(SimStruct *S, int_T method, void *data)
{
  switch (method) {
   case SS_CALL_MDL_SETUP_RUNTIME_RESOURCES:
    mdlSetupRuntimeResources_c2_fixedp_model(S);
    break;

   case SS_CALL_MDL_SET_WORK_WIDTHS:
    mdlSetWorkWidths_c2_fixedp_model(S);
    break;

   case SS_CALL_MDL_PROCESS_PARAMETERS:
    mdlProcessParameters_c2_fixedp_model(S);
    break;

   default:
    /* Unhandled method */
    sf_mex_error_message("Stateflow Internal Error:\n"
                         "Error calling c2_fixedp_model_method_dispatcher.\n"
                         "Can't handle method %d.\n", method);
    break;
  }
}

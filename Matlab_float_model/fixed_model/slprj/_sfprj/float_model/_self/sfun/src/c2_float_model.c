/* Include files */

#include "float_model_sfun.h"
#include "c2_float_model.h"
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

static emlrtRSInfo c2_emlrtRSI = { 9,  /* lineNo */
  "MATLAB Function2",                  /* fcnName */
  "#float_model:33"                    /* pathName */
};

/* Function Declarations */
static void initialize_c2_float_model(SFc2_float_modelInstanceStruct
  *chartInstance);
static void initialize_params_c2_float_model(SFc2_float_modelInstanceStruct
  *chartInstance);
static void mdl_start_c2_float_model(SFc2_float_modelInstanceStruct
  *chartInstance);
static void mdl_terminate_c2_float_model(SFc2_float_modelInstanceStruct
  *chartInstance);
static void mdl_setup_runtime_resources_c2_float_model
  (SFc2_float_modelInstanceStruct *chartInstance);
static void mdl_cleanup_runtime_resources_c2_float_model
  (SFc2_float_modelInstanceStruct *chartInstance);
static void enable_c2_float_model(SFc2_float_modelInstanceStruct *chartInstance);
static void disable_c2_float_model(SFc2_float_modelInstanceStruct *chartInstance);
static void sf_gateway_c2_float_model(SFc2_float_modelInstanceStruct
  *chartInstance);
static void ext_mode_exec_c2_float_model(SFc2_float_modelInstanceStruct
  *chartInstance);
static void c2_update_jit_animation_c2_float_model
  (SFc2_float_modelInstanceStruct *chartInstance);
static void c2_do_animation_call_c2_float_model(SFc2_float_modelInstanceStruct
  *chartInstance);
static const mxArray *get_sim_state_c2_float_model
  (SFc2_float_modelInstanceStruct *chartInstance);
static void set_sim_state_c2_float_model(SFc2_float_modelInstanceStruct
  *chartInstance, const mxArray *c2_st);
static void c2_emlrt_update_log_1(SFc2_float_modelInstanceStruct *chartInstance,
  real_T c2_in[13], emlrtLocationLoggingDataType c2_table[], int32_T c2_index,
  real_T c2_out[13]);
static real_T c2_emlrt_update_log_2(SFc2_float_modelInstanceStruct
  *chartInstance, real_T c2_in, emlrtLocationLoggingDataType c2_table[], int32_T
  c2_index);
static void c2_emlrtInitVarDataTables(SFc2_float_modelInstanceStruct
  *chartInstance, emlrtLocationLoggingDataType c2_dataTables[7],
  emlrtLocationLoggingHistogramType c2_histTables[7]);
static real_T c2_emlrt_marshallIn(SFc2_float_modelInstanceStruct *chartInstance,
  const mxArray *c2_nullptr, const char_T *c2_identifier);
static real_T c2_b_emlrt_marshallIn(SFc2_float_modelInstanceStruct
  *chartInstance, const mxArray *c2_b_u, const emlrtMsgIdentifier *c2_parentId);
static void c2_slStringInitializeDynamicBuffers(SFc2_float_modelInstanceStruct
  *chartInstance);
static void c2_chart_data_browse_helper(SFc2_float_modelInstanceStruct
  *chartInstance, int32_T c2_ssIdNumber, const mxArray **c2_mxData, uint8_T
  *c2_isValueTooBig);
static void c2_b_emlrt_update_log_1(SFc2_float_modelInstanceStruct
  *chartInstance, real_T c2_in[13], emlrtLocationLoggingDataType c2_table[],
  int32_T c2_index);
static void init_dsm_address_info(SFc2_float_modelInstanceStruct *chartInstance);
static void init_simulink_io_address(SFc2_float_modelInstanceStruct
  *chartInstance);

/* Function Definitions */
static void initialize_c2_float_model(SFc2_float_modelInstanceStruct
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

static void initialize_params_c2_float_model(SFc2_float_modelInstanceStruct
  *chartInstance)
{
  (void)chartInstance;
}

static void mdl_start_c2_float_model(SFc2_float_modelInstanceStruct
  *chartInstance)
{
  sim_mode_is_external(chartInstance->S);
}

static void mdl_terminate_c2_float_model(SFc2_float_modelInstanceStruct
  *chartInstance)
{
  const emlrtLocationLoggingFileInfoType c2_emlrtLocationLoggingFileInfo = {
    "#float_model:33",                 /* mexFileName */
    "Mon Nov 18 01:00:26 2024",        /* timestamp */
    "",                                /* buildDir */
    1,                                 /* numFcns */
    256                                /* numHistogramBins */
  };

  const emlrtLocationLoggingFunctionInfoType
    c2_emlrtLocationLoggingFunctionInfoTable[1] = { { "c2_float_model",/* fcnName */
      1,                               /* fcnId */
      7                                /* numInstrPoints */
    } };

  const emlrtLocationLoggingLocationType c2_emlrtLocationInfo[9] = { { 1,/* MxInfoID */
      19,                              /* TextStart */
      1,                               /* TextLength */
      1,                               /* Reason */
      false                            /* MoreLocations */
    }, { 2,                            /* MxInfoID */
      27,                              /* TextStart */
      20,                              /* TextLength */
      2,                               /* Reason */
      false                            /* MoreLocations */
    }, { 1,                            /* MxInfoID */
      57,                              /* TextStart */
      5,                               /* TextLength */
      2,                               /* Reason */
      true                             /* MoreLocations */
    }, { 1,                            /* MxInfoID */
      65,                              /* TextStart */
      6,                               /* TextLength */
      3,                               /* Reason */
      false                            /* MoreLocations */
    }, { 2,                            /* MxInfoID */
      77,                              /* TextStart */
      13,                              /* TextLength */
      2,                               /* Reason */
      false                            /* MoreLocations */
    }, { 2,                            /* MxInfoID */
      220,                             /* TextStart */
      8,                               /* TextLength */
      2,                               /* Reason */
      false                            /* MoreLocations */
    }, { 2,                            /* MxInfoID */
      255,                             /* TextStart */
      1,                               /* TextLength */
      2,                               /* Reason */
      true                             /* MoreLocations */
    }, { 2,                            /* MxInfoID */
      259,                             /* TextStart */
      44,                              /* TextLength */
      8,                               /* Reason */
      false                            /* MoreLocations */
    }, { 2,                            /* MxInfoID */
      260,                             /* TextStart */
      14,                              /* TextLength */
      3,                               /* Reason */
      false                            /* MoreLocations */
    } };

  const int32_T c2_emlrtLocationLoggingFieldCounts[7] = { 0, 0, 0, 0, 0, 0, 0 };

  if (chartInstance->c2_emlrtLocLogSimulated) {
    emlrtLocationLoggingClearLog("#float_model:33");
    emlrtLocationLoggingPushLog(&c2_emlrtLocationLoggingFileInfo,
      &c2_emlrtLocationLoggingFunctionInfoTable[0],
      &chartInstance->c2_emlrtLocationLoggingDataTables[0],
      &c2_emlrtLocationInfo[0], NULL, 0U, &c2_emlrtLocationLoggingFieldCounts[0],
      NULL);
    addResultsToFPTRepository("#float_model:33");
  }
}

static void mdl_setup_runtime_resources_c2_float_model
  (SFc2_float_modelInstanceStruct *chartInstance)
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
    8U);
  covrtChartInitFcn(chartInstance->c2_covrtInstance, 0U, false, false, false);
  covrtStateInitFcn(chartInstance->c2_covrtInstance, 0U, 0U, false, false, false,
                    0U, &c2_decisionTxtStartIdx, &c2_decisionTxtEndIdx);
  covrtTransInitFcn(chartInstance->c2_covrtInstance, 0U, 0, NULL, NULL, 0U, NULL);
  covrtEmlInitFcn(chartInstance->c2_covrtInstance, "", 4U, 0U, 1U, 0U, 0U, 0U,
                  0U, 0U, 0U, 0U, 0U, 0U);
  covrtEmlFcnInitFcn(chartInstance->c2_covrtInstance, 4U, 0U, 0U,
                     "c2_float_model", 0, -1, 304);
}

static void mdl_cleanup_runtime_resources_c2_float_model
  (SFc2_float_modelInstanceStruct *chartInstance)
{
  sfListenerLightTerminate(chartInstance->c2_RuntimeVar);
  covrtDeleteStateflowInstanceData(chartInstance->c2_covrtInstance);
}

static void enable_c2_float_model(SFc2_float_modelInstanceStruct *chartInstance)
{
  _sfTime_ = sf_get_time(chartInstance->S);
}

static void disable_c2_float_model(SFc2_float_modelInstanceStruct *chartInstance)
{
  _sfTime_ = sf_get_time(chartInstance->S);
}

static void sf_gateway_c2_float_model(SFc2_float_modelInstanceStruct
  *chartInstance)
{
  real_T c2_u_abs[13];
  real_T c2_b_y;
  real_T c2_c_y;
  real_T c2_x;
  int32_T c2_b_k;
  int32_T c2_i;
  int32_T c2_i1;
  int32_T c2_k;
  for (c2_i = 0; c2_i < 13; c2_i++) {
    covrtSigUpdateFcn(chartInstance->c2_covrtInstance, 0U, (*chartInstance->c2_u)
                      [c2_i]);
  }

  _sfTime_ = sf_get_time(chartInstance->S);
  chartInstance->c2_JITTransitionAnimation[0] = 0U;
  chartInstance->c2_sfEvent = CALL_EVENT;

  /* logging input variable 'u' for function 'c2_float_model' */
  chartInstance->c2_emlrtLocLogSimulated = true;

  /* logging input variable 'u' for function 'c2_float_model' */
  for (c2_i1 = 0; c2_i1 < 13; c2_i1++) {
    c2_u_abs[c2_i1] = (*chartInstance->c2_u)[c2_i1];
  }

  c2_b_emlrt_update_log_1(chartInstance, c2_u_abs,
    chartInstance->c2_emlrtLocationLoggingDataTables, 0);
  covrtEmlFcnEval(chartInstance->c2_covrtInstance, 4U, 0, 0);
  c2_emlrt_update_log_2(chartInstance, 9.0,
                        chartInstance->c2_emlrtLocationLoggingDataTables, 1);
  for (c2_k = 0; c2_k < 13; c2_k++) {
    c2_b_k = c2_k;
    c2_x = (*chartInstance->c2_u)[c2_b_k];
    c2_b_y = muDoubleScalarAbs(c2_x);
    c2_u_abs[c2_b_k] = c2_b_y;
  }

  c2_b_emlrt_update_log_1(chartInstance, c2_u_abs,
    chartInstance->c2_emlrtLocationLoggingDataTables, 2);
  c2_emlrt_update_log_2(chartInstance, 6.0,
                        chartInstance->c2_emlrtLocationLoggingDataTables, 3);
  c2_emlrt_update_log_2(chartInstance, 0.0,
                        chartInstance->c2_emlrtLocationLoggingDataTables, 4);
  c2_c_y = c2_emlrt_update_log_2(chartInstance, c2_emlrt_update_log_2
    (chartInstance, 0.0, chartInstance->c2_emlrtLocationLoggingDataTables, 6) /
    c2_u_abs[8], chartInstance->c2_emlrtLocationLoggingDataTables, 5);
  *chartInstance->c2_y = c2_c_y;
  covrtSigUpdateFcn(chartInstance->c2_covrtInstance, 1U, *chartInstance->c2_y);
}

static void ext_mode_exec_c2_float_model(SFc2_float_modelInstanceStruct
  *chartInstance)
{
  (void)chartInstance;
}

static void c2_update_jit_animation_c2_float_model
  (SFc2_float_modelInstanceStruct *chartInstance)
{
  (void)chartInstance;
}

static void c2_do_animation_call_c2_float_model(SFc2_float_modelInstanceStruct
  *chartInstance)
{
  (void)chartInstance;
}

static const mxArray *get_sim_state_c2_float_model
  (SFc2_float_modelInstanceStruct *chartInstance)
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

static void set_sim_state_c2_float_model(SFc2_float_modelInstanceStruct
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

static void c2_emlrt_update_log_1(SFc2_float_modelInstanceStruct *chartInstance,
  real_T c2_in[13], emlrtLocationLoggingDataType c2_table[], int32_T c2_index,
  real_T c2_out[13])
{
  int32_T c2_i;
  for (c2_i = 0; c2_i < 13; c2_i++) {
    c2_out[c2_i] = c2_in[c2_i];
  }

  c2_b_emlrt_update_log_1(chartInstance, c2_out, c2_table, c2_index);
}

static real_T c2_emlrt_update_log_2(SFc2_float_modelInstanceStruct
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

static void c2_emlrtInitVarDataTables(SFc2_float_modelInstanceStruct
  *chartInstance, emlrtLocationLoggingDataType c2_dataTables[7],
  emlrtLocationLoggingHistogramType c2_histTables[7])
{
  int32_T c2_i;
  int32_T c2_iH;
  (void)chartInstance;
  for (c2_i = 0; c2_i < 7; c2_i++) {
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

const mxArray *sf_c2_float_model_get_eml_resolved_functions_info(void)
{
  const mxArray *c2_nameCaptureInfo = NULL;
  c2_nameCaptureInfo = NULL;
  sf_mex_assign(&c2_nameCaptureInfo, sf_mex_create("nameCaptureInfo", NULL, 0,
    0U, 1, 0U, 2, 0, 1), false);
  return c2_nameCaptureInfo;
}

static real_T c2_emlrt_marshallIn(SFc2_float_modelInstanceStruct *chartInstance,
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

static real_T c2_b_emlrt_marshallIn(SFc2_float_modelInstanceStruct
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

static void c2_slStringInitializeDynamicBuffers(SFc2_float_modelInstanceStruct
  *chartInstance)
{
  (void)chartInstance;
}

static void c2_chart_data_browse_helper(SFc2_float_modelInstanceStruct
  *chartInstance, int32_T c2_ssIdNumber, const mxArray **c2_mxData, uint8_T
  *c2_isValueTooBig)
{
  real_T c2_d;
  *c2_mxData = NULL;
  *c2_mxData = NULL;
  *c2_isValueTooBig = 0U;
  switch (c2_ssIdNumber) {
   case 4U:
    sf_mex_assign(c2_mxData, sf_mex_create("mxData", *chartInstance->c2_u, 0, 0U,
      1, 0U, 1, 13), false);
    break;

   case 5U:
    c2_d = *chartInstance->c2_y;
    sf_mex_assign(c2_mxData, sf_mex_create("mxData", &c2_d, 0, 0U, 0, 0U, 0),
                  false);
    break;
  }
}

static void c2_b_emlrt_update_log_1(SFc2_float_modelInstanceStruct
  *chartInstance, real_T c2_in[13], emlrtLocationLoggingDataType c2_table[],
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
    for (c2_i = 0; c2_i < 13; c2_i++) {
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
    while (c2_b_table[0U].IsAlwaysInteger && (c2_b_i < 13)) {
      if (c2_in[c2_b_i] != muDoubleScalarFloor(c2_in[c2_b_i])) {
        c2_b_table[0U].IsAlwaysInteger = false;
      }

      c2_b_i++;
    }
  }
}

static void init_dsm_address_info(SFc2_float_modelInstanceStruct *chartInstance)
{
  (void)chartInstance;
}

static void init_simulink_io_address(SFc2_float_modelInstanceStruct
  *chartInstance)
{
  chartInstance->c2_covrtInstance = (CovrtStateflowInstance *)
    sfrtGetCovrtInstance(chartInstance->S);
  chartInstance->c2_fEmlrtCtx = (void *)sfrtGetEmlrtCtx(chartInstance->S);
  chartInstance->c2_u = (real_T (*)[13])ssGetInputPortSignal_wrapper
    (chartInstance->S, 0);
  chartInstance->c2_y = (real_T *)ssGetOutputPortSignal_wrapper(chartInstance->S,
    1);
}

#include <stdio.h>
#include <stdlib.h>
#include <string.h>

/* SFunction Glue Code */
void sf_c2_float_model_get_check_sum(mxArray *plhs[])
{
  ((real_T *)mxGetPr((plhs[0])))[0] = (real_T)(1376984139U);
  ((real_T *)mxGetPr((plhs[0])))[1] = (real_T)(1224849386U);
  ((real_T *)mxGetPr((plhs[0])))[2] = (real_T)(382295346U);
  ((real_T *)mxGetPr((plhs[0])))[3] = (real_T)(2255920912U);
}

mxArray *sf_c2_float_model_third_party_uses_info(void)
{
  mxArray * mxcell3p = mxCreateCellMatrix(1,0);
  return(mxcell3p);
}

mxArray *sf_c2_float_model_jit_fallback_info(void)
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

mxArray *sf_c2_float_model_updateBuildInfo_args_info(void)
{
  mxArray *mxBIArgs = mxCreateCellMatrix(1,0);
  return mxBIArgs;
}

static const mxArray *sf_get_sim_state_info_c2_float_model(void)
{
  const char *infoFields[] = { "chartChecksum", "varInfo" };

  mxArray *mxInfo = mxCreateStructMatrix(1, 1, 2, infoFields);
  mxArray *mxVarInfo = sf_mex_decode(
    "eNpjYPT0ZQACPiCWYGRgYAPSHEDMxAABrFA+IxKGiLPAxRWAuKSyIBUkXlyU7JkCpPMSc8H8xNI"
    "Kz7y0fLD5FgwI89kImM8JFYeAD/aU6RdxAOk3QNLPQkC/AJBVCQ0XEAAALEwMtA=="
    );
  mxArray *mxChecksum = mxCreateDoubleMatrix(1, 4, mxREAL);
  sf_c2_float_model_get_check_sum(&mxChecksum);
  mxSetField(mxInfo, 0, infoFields[0], mxChecksum);
  mxSetField(mxInfo, 0, infoFields[1], mxVarInfo);
  return mxInfo;
}

static const char* sf_get_instance_specialization(void)
{
  return "s0sPdY3zIrWFeb7NNmkgFxB";
}

static void sf_opaque_initialize_c2_float_model(void *chartInstanceVar)
{
  initialize_params_c2_float_model((SFc2_float_modelInstanceStruct*)
    chartInstanceVar);
  initialize_c2_float_model((SFc2_float_modelInstanceStruct*) chartInstanceVar);
}

static void sf_opaque_enable_c2_float_model(void *chartInstanceVar)
{
  enable_c2_float_model((SFc2_float_modelInstanceStruct*) chartInstanceVar);
}

static void sf_opaque_disable_c2_float_model(void *chartInstanceVar)
{
  disable_c2_float_model((SFc2_float_modelInstanceStruct*) chartInstanceVar);
}

static void sf_opaque_gateway_c2_float_model(void *chartInstanceVar)
{
  sf_gateway_c2_float_model((SFc2_float_modelInstanceStruct*) chartInstanceVar);
}

static const mxArray* sf_opaque_get_sim_state_c2_float_model(SimStruct* S)
{
  return get_sim_state_c2_float_model((SFc2_float_modelInstanceStruct *)
    sf_get_chart_instance_ptr(S));     /* raw sim ctx */
}

static void sf_opaque_set_sim_state_c2_float_model(SimStruct* S, const mxArray
  *st)
{
  set_sim_state_c2_float_model((SFc2_float_modelInstanceStruct*)
    sf_get_chart_instance_ptr(S), st);
}

static void sf_opaque_cleanup_runtime_resources_c2_float_model(void
  *chartInstanceVar)
{
  if (chartInstanceVar!=NULL) {
    SimStruct *S = ((SFc2_float_modelInstanceStruct*) chartInstanceVar)->S;
    if (sim_mode_is_rtw_gen(S) || sim_mode_is_external(S)) {
      sf_clear_rtw_identifier(S);
      unload_float_model_optimization_info();
    }

    mdl_cleanup_runtime_resources_c2_float_model((SFc2_float_modelInstanceStruct*)
      chartInstanceVar);
    utFree(chartInstanceVar);
    if (ssGetUserData(S)!= NULL) {
      sf_free_ChartRunTimeInfo(S);
    }

    ssSetUserData(S,NULL);
  }
}

static void sf_opaque_mdl_start_c2_float_model(void *chartInstanceVar)
{
  mdl_start_c2_float_model((SFc2_float_modelInstanceStruct*) chartInstanceVar);
  if (chartInstanceVar) {
    sf_reset_warnings_ChartRunTimeInfo(((SFc2_float_modelInstanceStruct*)
      chartInstanceVar)->S);
  }
}

static void sf_opaque_mdl_terminate_c2_float_model(void *chartInstanceVar)
{
  mdl_terminate_c2_float_model((SFc2_float_modelInstanceStruct*)
    chartInstanceVar);
}

extern unsigned int sf_machine_global_initializer_called(void);
static void mdlProcessParameters_c2_float_model(SimStruct *S)
{
  mdlProcessParamsCommon(S);
  if (sf_machine_global_initializer_called()) {
    initialize_params_c2_float_model((SFc2_float_modelInstanceStruct*)
      sf_get_chart_instance_ptr(S));
  }
}

const char* sf_c2_float_model_get_post_codegen_info(void)
{
  int i;
  const char* encStrCodegen [20] = {
    "eNrdWE2P20QYnqyWFa1KtUhI5YBUjr0glV0hOCDa3XyUSPsR4WwruKwm9pt4lPGMOx/56F+CK3+",
    "AS3vhzg+o1CvcOPKO42Qjb0g8jtRdsOQ4Y+eZ5513nvfDIbX2KcHjPp7fPyBkD68f4rlDZscH+b",
    "i2dM7u75Jv83HnLiFhTJVpi74k/kcoIxiACGy/zyaeWGGTDlU00RV4BU3gB9CSW8Ok8DOeiT4oE",
    "CFOkEplvHg1SyxnYtiyInTM+kXMwjiIpeXRMU5Io3PBp//Gm1rTQcYGUxCaFkBkYiXtIG5xOljv",
    "BWXG9RjCobaJt680mMCmbqn61HLDUg7NCYRtoQ1FL+gN6w0MNVA3E2+FMB3M0TJJOaOivK9jqgN",
    "IUR0GLtIIP8+tQe+V5EW+HhPUSMUobya87hReEtvhaOcpypp7+9kkpgE9OxgwMXDeVTYBgetHnZ",
    "TwVb8uR6DoAM6FZwy61TUn2QYvdFk+BttOlpVi0CazXdGVsBlvc4Qe0hV5W6GoU861H7Yr0xMYA",
    "c/4G9TQCtgZvwdYaxZ15XOqXBR4RpIV7KWFHFuXImLld3hUQGUJ9wyTZwk4S5ykIEI3L0xfTLRJ",
    "k1YbmdQxjBonJyX5rmPbwoDq0xBK5z5FmQY0ONOVJ2/ENO1xh0YvmWyVpWcAURlKdN+KxliqIfr",
    "YN8le+cpFgh8aogE0wECWMJqo7ueU25I2JxoznJPHhcaM5ceLWBc/lcAhDWOIXD1hHE5Buwl06f",
    "yMdeQIVztiZtoAHSqWlo0kqyHCQuK81J2mcCGGQo5FS8kkyDuCNboCwKxBlcCycIxlSU1baHw5q",
    "xW87DplVWnPEmo47TltPAOBlcWt1VVCGmJUNQW2bmjQNtiAvcLSLjTTBtupaTOLgSjrRz+t+fWj",
    "H+fjw0UstXVX4U5RLMMCO6WjXtbsQZclkN0IKPYUs2F+ON7H5Ir3zs563h38VquII1vini7hdlf",
    "45/4Sbj8fhweXfS6puUxm3UmR/14JP6+yu4gj13BX/p1fHy3hayt4ydJ1m31Z9tNHBZ7dAm4v9x",
    "WJn7379fXb2qPffvn9r+7lz9vwv/HU8XzfPpv3ZYvKNbqW3LP3tg06eFDQgRvrx7oT/Xj4qq1et",
    "KD39dlZMhy0JseV4m5+/3M8DSa2LE+qsB3l71huTO2s93fzf7Nk796G+e8s6YmQP59sh//kaXEf",
    "dzfg9/HbtKDb254fbiof3aSdZfJW7T3jyHvGbbs+33z8X//9ujxACr/fv8XrIGvyk09dvm3r+oP",
    "41aGH+fi7xbtyPWY8WtGt54+xoe6vevo/0fffnv6b9wlN57/8z76fDo8E5VNsz2evP/ntjnL/My",
    "0eKaB69TvQTdShsv3xvUJ8u/GYiUiO9RdfHnx1sE1d+wevaP3z",
    ""
  };

  static char newstr [1401] = "";
  newstr[0] = '\0';
  for (i = 0; i < 20; i++) {
    strcat(newstr, encStrCodegen[i]);
  }

  return newstr;
}

static void mdlSetWorkWidths_c2_float_model(SimStruct *S)
{
  const char* newstr = sf_c2_float_model_get_post_codegen_info();
  sf_set_work_widths(S, newstr);
  ssSetChecksum0(S,(3880216576U));
  ssSetChecksum1(S,(31770549U));
  ssSetChecksum2(S,(3450651176U));
  ssSetChecksum3(S,(2875151601U));
}

static void mdlRTW_c2_float_model(SimStruct *S)
{
  if (sim_mode_is_rtw_gen(S)) {
    ssWriteRTWStrParam(S, "StateflowChartType", "Embedded MATLAB");
  }
}

static void mdlSetupRuntimeResources_c2_float_model(SimStruct *S)
{
  SFc2_float_modelInstanceStruct *chartInstance;
  chartInstance = (SFc2_float_modelInstanceStruct *)utMalloc(sizeof
    (SFc2_float_modelInstanceStruct));
  if (chartInstance==NULL) {
    sf_mex_error_message("Could not allocate memory for chart instance.");
  }

  memset(chartInstance, 0, sizeof(SFc2_float_modelInstanceStruct));
  chartInstance->chartInfo.chartInstance = chartInstance;
  chartInstance->chartInfo.isEMLChart = 1;
  chartInstance->chartInfo.chartInitialized = 0;
  chartInstance->chartInfo.sFunctionGateway = sf_opaque_gateway_c2_float_model;
  chartInstance->chartInfo.initializeChart = sf_opaque_initialize_c2_float_model;
  chartInstance->chartInfo.mdlStart = sf_opaque_mdl_start_c2_float_model;
  chartInstance->chartInfo.mdlTerminate = sf_opaque_mdl_terminate_c2_float_model;
  chartInstance->chartInfo.mdlCleanupRuntimeResources =
    sf_opaque_cleanup_runtime_resources_c2_float_model;
  chartInstance->chartInfo.enableChart = sf_opaque_enable_c2_float_model;
  chartInstance->chartInfo.disableChart = sf_opaque_disable_c2_float_model;
  chartInstance->chartInfo.getSimState = sf_opaque_get_sim_state_c2_float_model;
  chartInstance->chartInfo.setSimState = sf_opaque_set_sim_state_c2_float_model;
  chartInstance->chartInfo.getSimStateInfo =
    sf_get_sim_state_info_c2_float_model;
  chartInstance->chartInfo.zeroCrossings = NULL;
  chartInstance->chartInfo.outputs = NULL;
  chartInstance->chartInfo.derivatives = NULL;
  chartInstance->chartInfo.mdlRTW = mdlRTW_c2_float_model;
  chartInstance->chartInfo.mdlSetWorkWidths = mdlSetWorkWidths_c2_float_model;
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

  mdl_setup_runtime_resources_c2_float_model(chartInstance);
}

void c2_float_model_method_dispatcher(SimStruct *S, int_T method, void *data)
{
  switch (method) {
   case SS_CALL_MDL_SETUP_RUNTIME_RESOURCES:
    mdlSetupRuntimeResources_c2_float_model(S);
    break;

   case SS_CALL_MDL_SET_WORK_WIDTHS:
    mdlSetWorkWidths_c2_float_model(S);
    break;

   case SS_CALL_MDL_PROCESS_PARAMETERS:
    mdlProcessParameters_c2_float_model(S);
    break;

   default:
    /* Unhandled method */
    sf_mex_error_message("Stateflow Internal Error:\n"
                         "Error calling c2_float_model_method_dispatcher.\n"
                         "Can't handle method %d.\n", method);
    break;
  }
}

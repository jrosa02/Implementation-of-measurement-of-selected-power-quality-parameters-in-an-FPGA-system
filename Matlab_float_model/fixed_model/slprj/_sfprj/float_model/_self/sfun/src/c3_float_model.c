/* Include files */

#include "float_model_sfun.h"
#include "c3_float_model.h"
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
static const mxArray *c3_eml_mx;
static const mxArray *c3_b_eml_mx;
static emlrtMCInfo c3_emlrtMCI = { 208,/* lineNo */
  27,                                  /* colNo */
  "sqrt",                              /* fName */
  "C:\\Program Files\\MATLAB\\R2024a\\toolbox\\eml\\lib\\fixedpoint\\@embedded\\@fi\\sqrt.m"/* pName */
};

static emlrtRSInfo c3_emlrtRSI = { 5,  /* lineNo */
  "MATLAB Function1/MATLAB Function1_FixPt",/* fcnName */
  "#float_model:42"                    /* pathName */
};

static emlrtRSInfo c3_b_emlrtRSI = { 9,/* lineNo */
  "MATLAB Function1/MATLAB Function1_FixPt",/* fcnName */
  "#float_model:42"                    /* pathName */
};

static emlrtRSInfo c3_c_emlrtRSI = { 14,/* lineNo */
  "MATLAB Function1/MATLAB Function1_FixPt",/* fcnName */
  "#float_model:42"                    /* pathName */
};

static emlrtRSInfo c3_d_emlrtRSI = { 189,/* lineNo */
  "abs",                               /* fcnName */
  "C:\\Program Files\\MATLAB\\R2024a\\toolbox\\eml\\lib\\fixedpoint\\@embedded\\@fi\\abs.m"/* pathName */
};

static emlrtRSInfo c3_e_emlrtRSI = { 82,/* lineNo */
  "sqrt",                              /* fcnName */
  "C:\\Program Files\\MATLAB\\R2024a\\toolbox\\eml\\lib\\fixedpoint\\@embedded\\@fi\\sqrt.m"/* pathName */
};

static emlrtRSInfo c3_f_emlrtRSI = { 215,/* lineNo */
  "sqrt",                              /* fcnName */
  "C:\\Program Files\\MATLAB\\R2024a\\toolbox\\eml\\lib\\fixedpoint\\@embedded\\@fi\\sqrt.m"/* pathName */
};

static emlrtRSInfo c3_g_emlrtRSI = { 82,/* lineNo */
  "bitset",                            /* fcnName */
  "C:\\Program Files\\MATLAB\\R2024a\\toolbox\\eml\\lib\\fixedpoint\\@embedded\\@fi\\bitset.m"/* pathName */
};

static emlrtRSInfo c3_h_emlrtRSI = { 40,/* lineNo */
  "MATLAB Function1/MATLAB Function1_FixPt",/* fcnName */
  "#float_model:42"                    /* pathName */
};

static emlrtRSInfo c3_i_emlrtRSI = { 42,/* lineNo */
  "MATLAB Function1/MATLAB Function1_FixPt",/* fcnName */
  "#float_model:42"                    /* pathName */
};

static emlrtRSInfo c3_j_emlrtRSI = { 183,/* lineNo */
  "divide",                            /* fcnName */
  "C:\\Program Files\\MATLAB\\R2024a\\toolbox\\eml\\lib\\fixedpoint\\divide.m"/* pathName */
};

static emlrtRSInfo c3_k_emlrtRSI = { 243,/* lineNo */
  "divide",                            /* fcnName */
  "C:\\Program Files\\MATLAB\\R2024a\\toolbox\\eml\\lib\\fixedpoint\\divide.m"/* pathName */
};

static emlrtRSInfo c3_l_emlrtRSI = { 47,/* lineNo */
  "ixfun",                             /* fcnName */
  "C:\\Program Files\\MATLAB\\R2024a\\toolbox\\eml\\eml\\+coder\\+internal\\ixfun.m"/* pathName */
};

static emlrtRSInfo c3_m_emlrtRSI = { 63,/* lineNo */
  "function_handle",                   /* fcnName */
  "C:\\Program Files\\MATLAB\\R2024a\\toolbox\\eml\\eml\\+coder\\+internal\\function_handle.m"/* pathName */
};

static emlrtRSInfo c3_n_emlrtRSI = { 244,/* lineNo */
  "divide",                            /* fcnName */
  "C:\\Program Files\\MATLAB\\R2024a\\toolbox\\eml\\lib\\fixedpoint\\divide.m"/* pathName */
};

static emlrtBCInfo c3_emlrtBCI = { 0,  /* iFirst */
  7,                                   /* iLast */
  103,                                 /* lineNo */
  27,                                  /* colNo */
  "",                                  /* aName */
  "bitset",                            /* fName */
  "C:\\Program Files\\MATLAB\\R2024a\\toolbox\\eml\\lib\\fixedpoint\\@embedded\\@fi\\bitset.m",/* pName */
  1                                    /* checkKind */
};

static emlrtBCInfo c3_b_emlrtBCI = { 0,/* iFirst */
  15,                                  /* iLast */
  103,                                 /* lineNo */
  27,                                  /* colNo */
  "",                                  /* aName */
  "bitset",                            /* fName */
  "C:\\Program Files\\MATLAB\\R2024a\\toolbox\\eml\\lib\\fixedpoint\\@embedded\\@fi\\bitset.m",/* pName */
  1                                    /* checkKind */
};

/* Function Declarations */
static void initialize_c3_float_model(SFc3_float_modelInstanceStruct
  *chartInstance);
static void initialize_params_c3_float_model(SFc3_float_modelInstanceStruct
  *chartInstance);
static void mdl_start_c3_float_model(SFc3_float_modelInstanceStruct
  *chartInstance);
static void mdl_terminate_c3_float_model(SFc3_float_modelInstanceStruct
  *chartInstance);
static void mdl_setup_runtime_resources_c3_float_model
  (SFc3_float_modelInstanceStruct *chartInstance);
static void mdl_cleanup_runtime_resources_c3_float_model
  (SFc3_float_modelInstanceStruct *chartInstance);
static void enable_c3_float_model(SFc3_float_modelInstanceStruct *chartInstance);
static void disable_c3_float_model(SFc3_float_modelInstanceStruct *chartInstance);
static void sf_gateway_c3_float_model(SFc3_float_modelInstanceStruct
  *chartInstance);
static void ext_mode_exec_c3_float_model(SFc3_float_modelInstanceStruct
  *chartInstance);
static void c3_update_jit_animation_c3_float_model
  (SFc3_float_modelInstanceStruct *chartInstance);
static void c3_do_animation_call_c3_float_model(SFc3_float_modelInstanceStruct
  *chartInstance);
static const mxArray *get_sim_state_c3_float_model
  (SFc3_float_modelInstanceStruct *chartInstance);
static void set_sim_state_c3_float_model(SFc3_float_modelInstanceStruct
  *chartInstance, const mxArray *c3_st);
static void c3_emlrt_update_log_1(SFc3_float_modelInstanceStruct *chartInstance,
  creal_T c3_in[2048], emlrtLocationLoggingDataType c3_table[], int32_T c3_index,
  creal_T c3_out[2048]);
static void c3_emlrt_update_log_2(SFc3_float_modelInstanceStruct *chartInstance,
  cint16_T c3_in[2048], emlrtLocationLoggingDataType c3_table[], int32_T
  c3_index, cint16_T c3_out[2048]);
static uint16_T c3_emlrt_update_log_3(SFc3_float_modelInstanceStruct
  *chartInstance, uint16_T c3_in, emlrtLocationLoggingDataType c3_table[],
  int32_T c3_index);
static void c3_emlrt_update_log_4(SFc3_float_modelInstanceStruct *chartInstance,
  uint16_T c3_in[2048], emlrtLocationLoggingDataType c3_table[], int32_T
  c3_index, uint16_T c3_out[2048]);
static void c3_emlrt_update_log_5(SFc3_float_modelInstanceStruct *chartInstance,
  int16_T c3_in[2048], emlrtLocationLoggingDataType c3_table[], int32_T c3_index,
  int16_T c3_out[2048]);
static uint16_T c3_emlrt_update_log_6(SFc3_float_modelInstanceStruct
  *chartInstance, uint16_T c3_in, emlrtLocationLoggingDataType c3_table[],
  int32_T c3_index);
static void c3_emlrt_update_log_7(SFc3_float_modelInstanceStruct *chartInstance,
  uint16_T c3_in[1015], emlrtLocationLoggingDataType c3_table[], int32_T
  c3_index, uint16_T c3_out[1015]);
static void c3_emlrt_update_log_8(SFc3_float_modelInstanceStruct *chartInstance,
  uint32_T c3_in[1015], emlrtLocationLoggingDataType c3_table[], int32_T
  c3_index, uint32_T c3_out[1015]);
static uint16_T c3_emlrt_update_log_9(SFc3_float_modelInstanceStruct
  *chartInstance, uint16_T c3_in, emlrtLocationLoggingDataType c3_table[],
  int32_T c3_index);
static uint32_T c3_emlrt_update_log_10(SFc3_float_modelInstanceStruct
  *chartInstance, uint32_T c3_in, emlrtLocationLoggingDataType c3_table[],
  int32_T c3_index);
static uint16_T c3_emlrt_update_log_11(SFc3_float_modelInstanceStruct
  *chartInstance, uint16_T c3_in, emlrtLocationLoggingDataType c3_table[],
  int32_T c3_index);
static uint32_T c3_emlrt_update_log_12(SFc3_float_modelInstanceStruct
  *chartInstance, uint32_T c3_in, emlrtLocationLoggingDataType c3_table[],
  int32_T c3_index);
static uint8_T c3_emlrt_update_log_13(SFc3_float_modelInstanceStruct
  *chartInstance, uint8_T c3_in, emlrtLocationLoggingDataType c3_table[],
  int32_T c3_index);
static real_T c3_emlrt_update_log_14(SFc3_float_modelInstanceStruct
  *chartInstance, real_T c3_in, emlrtLocationLoggingDataType c3_table[], int32_T
  c3_index);
static boolean_T c3_emlrt_update_log_15(SFc3_float_modelInstanceStruct
  *chartInstance, boolean_T c3_in, emlrtLocationLoggingDataType c3_table[],
  int32_T c3_index);
static uint16_T c3_emlrt_update_log_16(SFc3_float_modelInstanceStruct
  *chartInstance, uint16_T c3_in, emlrtLocationLoggingDataType c3_table[],
  int32_T c3_index);
static void c3_emlrtInitVarDataTables(SFc3_float_modelInstanceStruct
  *chartInstance, emlrtLocationLoggingDataType c3_dataTables[26],
  emlrtLocationLoggingHistogramType c3_histTables[26]);
static uint16_T c3_emlrt_marshallIn(SFc3_float_modelInstanceStruct
  *chartInstance, const emlrtStack *c3_sp, const mxArray *c3_nullptr, const
  char_T *c3_identifier);
static uint16_T c3_b_emlrt_marshallIn(SFc3_float_modelInstanceStruct
  *chartInstance, const emlrtStack *c3_sp, const mxArray *c3_b_u, const
  emlrtMsgIdentifier *c3_parentId);
static void c3_slStringInitializeDynamicBuffers(SFc3_float_modelInstanceStruct
  *chartInstance);
static void c3_chart_data_browse_helper(SFc3_float_modelInstanceStruct
  *chartInstance, int32_T c3_ssIdNumber, const mxArray **c3_mxData, uint8_T
  *c3_isValueTooBig);
static void c3_b_emlrt_update_log_1(SFc3_float_modelInstanceStruct
  *chartInstance, creal_T c3_in[2048], emlrtLocationLoggingDataType c3_table[],
  int32_T c3_index);
static void c3_b_emlrt_update_log_2(SFc3_float_modelInstanceStruct
  *chartInstance, cint16_T c3_in[2048], emlrtLocationLoggingDataType c3_table[],
  int32_T c3_index);
static void c3_b_emlrt_update_log_4(SFc3_float_modelInstanceStruct
  *chartInstance, uint16_T c3_in[2048], emlrtLocationLoggingDataType c3_table[],
  int32_T c3_index);
static void c3_b_emlrt_update_log_5(SFc3_float_modelInstanceStruct
  *chartInstance, int16_T c3_in[2048], emlrtLocationLoggingDataType c3_table[],
  int32_T c3_index);
static void c3_b_emlrt_update_log_7(SFc3_float_modelInstanceStruct
  *chartInstance, uint16_T c3_in[1015], emlrtLocationLoggingDataType c3_table[],
  int32_T c3_index);
static void c3_b_emlrt_update_log_8(SFc3_float_modelInstanceStruct
  *chartInstance, uint32_T c3_in[1015], emlrtLocationLoggingDataType c3_table[],
  int32_T c3_index);
static uint32_T c3_divv_u32u64(SFc3_float_modelInstanceStruct *chartInstance,
  uint64_T c3_numerator, uint64_T c3_denominator, int32_T c3_EMLOvCount_src_loc,
  uint32_T c3_ssid_src_loc, int32_T c3_offset_src_loc, int32_T c3_length_src_loc);
static int32_T c3__s32_minus__(SFc3_float_modelInstanceStruct *chartInstance,
  int32_T c3_b, int32_T c3_c, int32_T c3_EMLOvCount_src_loc, uint32_T
  c3_ssid_src_loc, int32_T c3_offset_src_loc, int32_T c3_length_src_loc);
static uint16_T c3__u16_u32_(SFc3_float_modelInstanceStruct *chartInstance,
  uint32_T c3_b, int32_T c3_EMLOvCount_src_loc, uint32_T c3_ssid_src_loc,
  int32_T c3_offset_src_loc, int32_T c3_length_src_loc);
static uint64_T c3__u64_shl_s32_(SFc3_float_modelInstanceStruct *chartInstance,
  uint64_T c3_b, int32_T c3_c, int32_T c3_EMLOvCount_src_loc, uint32_T
  c3_ssid_src_loc, int32_T c3_offset_src_loc, int32_T c3_length_src_loc);
static uint32_T c3__u32_s32_(SFc3_float_modelInstanceStruct *chartInstance,
  int32_T c3_b, int32_T c3_EMLOvCount_src_loc, uint32_T c3_ssid_src_loc, int32_T
  c3_offset_src_loc, int32_T c3_length_src_loc);
static uint16_T c3__u16_s16_(SFc3_float_modelInstanceStruct *chartInstance,
  int16_T c3_b, int32_T c3_EMLOvCount_src_loc, uint32_T c3_ssid_src_loc, int32_T
  c3_offset_src_loc, int32_T c3_length_src_loc);
static uint16_T c3__u16_shl_s32_(SFc3_float_modelInstanceStruct *chartInstance,
  uint16_T c3_b, int32_T c3_c, int32_T c3_EMLOvCount_src_loc, uint32_T
  c3_ssid_src_loc, int32_T c3_offset_src_loc, int32_T c3_length_src_loc);
static uint32_T c3__u32_add__(SFc3_float_modelInstanceStruct *chartInstance,
  uint32_T c3_b, uint32_T c3_c, int32_T c3_EMLOvCount_src_loc, uint32_T
  c3_ssid_src_loc, int32_T c3_offset_src_loc, int32_T c3_length_src_loc);
static uint32_T c3__u32_u64_(SFc3_float_modelInstanceStruct *chartInstance,
  uint64_T c3_b, int32_T c3_EMLOvCount_src_loc, uint32_T c3_ssid_src_loc,
  int32_T c3_offset_src_loc, int32_T c3_length_src_loc);
static void init_dsm_address_info(SFc3_float_modelInstanceStruct *chartInstance);
static void init_simulink_io_address(SFc3_float_modelInstanceStruct
  *chartInstance);

/* Function Definitions */
static void initialize_c3_float_model(SFc3_float_modelInstanceStruct
  *chartInstance)
{
  emlrtStack c3_st = { NULL,           /* site */
    NULL,                              /* tls */
    NULL                               /* prev */
  };

  c3_st.tls = chartInstance->c3_fEmlrtCtx;
  emlrtLicenseCheckR2022a(&c3_st, "EMLRT:runTime:MexFunctionNeedsLicense",
    "fixed_point_toolbox", 2);
  sim_mode_is_external(chartInstance->S);
  sf_mex_assign(&c3_b_eml_mx, sf_mex_call(&c3_st, NULL, "numerictype", 1U, 12U,
    15, "SignednessBool", 3, false, 15, "Signedness", 15, "Unsigned", 15,
    "FractionLength", 6, 10.0, 15, "BinaryPoint", 6, 10.0, 15, "Slope", 6,
    0.0009765625, 15, "FixedExponent", 6, -10.0), true);
  sf_mex_assign(&c3_eml_mx, sf_mex_call(&c3_st, NULL, "fimath", 1U, 42U, 15,
    "RoundMode", 15, "floor", 15, "RoundingMethod", 15, "Floor", 15,
    "OverflowMode", 15, "wrap", 15, "OverflowAction", 15, "Wrap", 15,
    "ProductMode", 15, "FullPrecision", 15, "SumMode", 15, "FullPrecision", 15,
    "ProductWordLength", 6, 32.0, 15, "SumWordLength", 6, 32.0, 15,
    "MaxProductWordLength", 6, 128.0, 15, "MaxSumWordLength", 6, 128.0, 15,
    "ProductFractionLength", 6, 30.0, 15, "ProductFixedExponent", 6, -30.0, 15,
    "SumFractionLength", 6, 30.0, 15, "SumFixedExponent", 6, -30.0, 15,
    "SumSlopeAdjustmentFactor", 6, 1.0, 15, "SumBias", 6, 0.0, 15,
    "ProductSlopeAdjustmentFactor", 6, 1.0, 15, "ProductBias", 6, 0.0, 15,
    "CastBeforeSum", 3, true, 15, "SumSlope", 6, 9.3132257461547852E-10, 15,
    "ProductSlope", 6, 9.3132257461547852E-10), true);
  chartInstance->c3_emlrtLocLogSimulated = false;
  c3_emlrtInitVarDataTables(chartInstance,
    chartInstance->c3_emlrtLocationLoggingDataTables,
    chartInstance->c3_emlrtLocLogHistTables);
  chartInstance->c3_doneDoubleBufferReInit = false;
  chartInstance->c3_sfEvent = CALL_EVENT;
  _sfTime_ = sf_get_time(chartInstance->S);
}

static void initialize_params_c3_float_model(SFc3_float_modelInstanceStruct
  *chartInstance)
{
  (void)chartInstance;
}

static void mdl_start_c3_float_model(SFc3_float_modelInstanceStruct
  *chartInstance)
{
  sim_mode_is_external(chartInstance->S);
}

static void mdl_terminate_c3_float_model(SFc3_float_modelInstanceStruct
  *chartInstance)
{
  const emlrtLocationLoggingFileInfoType c3_emlrtLocationLoggingFileInfo = {
    "#float_model:42",                 /* mexFileName */
    "Mon Nov 18 01:00:35 2024",        /* timestamp */
    "",                                /* buildDir */
    3,                                 /* numFcns */
    256                                /* numHistogramBins */
  };

  const emlrtLocationLoggingFunctionInfoType
    c3_emlrtLocationLoggingFunctionInfoTable[3] = { { "c3_float_model",/* fcnName */
      1,                               /* fcnId */
      13                               /* numInstrPoints */
    }, { "divideType",                 /* fcnName */
      597,                             /* fcnId */
      7                                /* numInstrPoints */
    }, { "fi_div",                     /* fcnName */
      670,                             /* fcnId */
      6                                /* numInstrPoints */
    } };

  const emlrtLocationLoggingLocationType c3_emlrtLocationInfo[34] = { { 1,/* MxInfoID */
      51,                              /* TextStart */
      1,                               /* TextLength */
      1,                               /* Reason */
      false                            /* MoreLocations */
    }, { 3,                            /* MxInfoID */
      82,                              /* TextStart */
      1,                               /* TextLength */
      2,                               /* Reason */
      true                             /* MoreLocations */
    }, { 3,                            /* MxInfoID */
      86,                              /* TextStart */
      20,                              /* TextLength */
      3,                               /* Reason */
      false                            /* MoreLocations */
    }, { 4,                            /* MxInfoID */
      113,                             /* TextStart */
      20,                              /* TextLength */
      2,                               /* Reason */
      false                            /* MoreLocations */
    }, { 5,                            /* MxInfoID */
      162,                             /* TextStart */
      5,                               /* TextLength */
      2,                               /* Reason */
      true                             /* MoreLocations */
    }, { 5,                            /* MxInfoID */
      170,                             /* TextStart */
      25,                              /* TextLength */
      3,                               /* Reason */
      false                            /* MoreLocations */
    }, { 6,                            /* MxInfoID */
      173,                             /* TextStart */
      6,                               /* TextLength */
      3,                               /* Reason */
      false                            /* MoreLocations */
    }, { 7,                            /* MxInfoID */
      201,                             /* TextStart */
      13,                              /* TextLength */
      2,                               /* Reason */
      false                            /* MoreLocations */
    }, { 8,                            /* MxInfoID */
      295,                             /* TextStart */
      12,                              /* TextLength */
      2,                               /* Reason */
      true                             /* MoreLocations */
    }, { 8,                            /* MxInfoID */
      310,                             /* TextStart */
      82,                              /* TextLength */
      3,                               /* Reason */
      false                            /* MoreLocations */
    }, { 9,                            /* MxInfoID */
      313,                             /* TextStart */
      63,                              /* TextLength */
      3,                               /* Reason */
      false                            /* MoreLocations */
    }, { 10,                           /* MxInfoID */
      398,                             /* TextStart */
      8,                               /* TextLength */
      2,                               /* Reason */
      true                             /* MoreLocations */
    }, { 10,                           /* MxInfoID */
      409,                             /* TextStart */
      36,                              /* TextLength */
      3,                               /* Reason */
      false                            /* MoreLocations */
    }, { 11,                           /* MxInfoID */
      412,                             /* TextStart */
      17,                              /* TextLength */
      3,                               /* Reason */
      false                            /* MoreLocations */
    }, { 12,                           /* MxInfoID */
      452,                             /* TextStart */
      1,                               /* TextLength */
      2,                               /* Reason */
      true                             /* MoreLocations */
    }, { 12,                           /* MxInfoID */
      456,                             /* TextStart */
      72,                              /* TextLength */
      3,                               /* Reason */
      false                            /* MoreLocations */
    }, { 13,                           /* MxInfoID */
      459,                             /* TextStart */
      53,                              /* TextLength */
      3,                               /* Reason */
      false                            /* MoreLocations */
    }, { 14,                           /* MxInfoID */
      467,                             /* TextStart */
      14,                              /* TextLength */
      3,                               /* Reason */
      false                            /* MoreLocations */
    }, { 17,                           /* MxInfoID */
      660,                             /* TextStart */
      5,                               /* TextLength */
      2,                               /* Reason */
      false                            /* MoreLocations */
    }, { 17,                           /* MxInfoID */
      769,                             /* TextStart */
      2,                               /* TextLength */
      2,                               /* Reason */
      false                            /* MoreLocations */
    }, { 17,                           /* MxInfoID */
      796,                             /* TextStart */
      9,                               /* TextLength */
      2,                               /* Reason */
      false                            /* MoreLocations */
    }, { 17,                           /* MxInfoID */
      826,                             /* TextStart */
      2,                               /* TextLength */
      2,                               /* Reason */
      false                            /* MoreLocations */
    }, { 17,                           /* MxInfoID */
      868,                             /* TextStart */
      2,                               /* TextLength */
      2,                               /* Reason */
      false                            /* MoreLocations */
    }, { 17,                           /* MxInfoID */
      897,                             /* TextStart */
      14,                              /* TextLength */
      5,                               /* Reason */
      false                            /* MoreLocations */
    }, { 19,                           /* MxInfoID */
      945,                             /* TextStart */
      24,                              /* TextLength */
      2,                               /* Reason */
      false                            /* MoreLocations */
    }, { 14,                           /* MxInfoID */
      1101,                            /* TextStart */
      1,                               /* TextLength */
      1,                               /* Reason */
      false                            /* MoreLocations */
    }, { 20,                           /* MxInfoID */
      1103,                            /* TextStart */
      1,                               /* TextLength */
      1,                               /* Reason */
      false                            /* MoreLocations */
    }, { 21,                           /* MxInfoID */
      1140,                            /* TextStart */
      2,                               /* TextLength */
      2,                               /* Reason */
      true                             /* MoreLocations */
    }, { 21,                           /* MxInfoID */
      1145,                            /* TextStart */
      27,                              /* TextLength */
      3,                               /* Reason */
      false                            /* MoreLocations */
    }, { 22,                           /* MxInfoID */
      1178,                            /* TextStart */
      2,                               /* TextLength */
      2,                               /* Reason */
      true                             /* MoreLocations */
    }, { 22,                           /* MxInfoID */
      1183,                            /* TextStart */
      27,                              /* TextLength */
      3,                               /* Reason */
      false                            /* MoreLocations */
    }, { 23,                           /* MxInfoID */
      1301,                            /* TextStart */
      2,                               /* TextLength */
      2,                               /* Reason */
      true                             /* MoreLocations */
    }, { 23,                           /* MxInfoID */
      1306,                            /* TextStart */
      23,                              /* TextLength */
      3,                               /* Reason */
      false                            /* MoreLocations */
    }, { 13,                           /* MxInfoID */
      1339,                            /* TextStart */
      1,                               /* TextLength */
      2,                               /* Reason */
      false                            /* MoreLocations */
    } };

  const int32_T c3_emlrtLocationLoggingFieldCounts[26] = { 0, 0, 0, 0, 0, 0, 0,
    0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 };

  if (chartInstance->c3_emlrtLocLogSimulated) {
    emlrtLocationLoggingClearLog("#float_model:42");
    emlrtLocationLoggingPushLog(&c3_emlrtLocationLoggingFileInfo,
      &c3_emlrtLocationLoggingFunctionInfoTable[0],
      &chartInstance->c3_emlrtLocationLoggingDataTables[0],
      &c3_emlrtLocationInfo[0], NULL, 0U, &c3_emlrtLocationLoggingFieldCounts[0],
      NULL);
    addResultsToFPTRepository("#float_model:42");
  }
}

static void mdl_setup_runtime_resources_c3_float_model
  (SFc3_float_modelInstanceStruct *chartInstance)
{
  static const int32_T c3_postfixPredicateTree[5] = { 0, 1, -3, 2, -3 };

  static const int32_T c3_condTxtEndIdx[3] = { 1262, 1275, 1292 };

  static const int32_T c3_condTxtStartIdx[3] = { 1253, 1266, 1279 };

  static const uint32_T c3_decisionTxtEndIdx = 0U;
  static const uint32_T c3_decisionTxtStartIdx = 0U;
  setDataBrowseFcn(chartInstance->S, (void *)&c3_chart_data_browse_helper);
  chartInstance->c3_RuntimeVar = sfListenerCacheSimStruct(chartInstance->S);
  sfListenerInitializeRuntimeVars(chartInstance->c3_RuntimeVar,
    &chartInstance->c3_IsDebuggerActive,
    &chartInstance->c3_IsSequenceViewerPresent, 0, 0,
    &chartInstance->c3_mlFcnLineNumber, &chartInstance->c3_IsHeatMapPresent, 0);
  sfSetAnimationVectors(chartInstance->S, &chartInstance->c3_JITStateAnimation[0],
                        &chartInstance->c3_JITTransitionAnimation[0]);
  covrtCreateStateflowInstanceData(chartInstance->c3_covrtInstance, 1U, 0U, 1U,
    8U);
  covrtChartInitFcn(chartInstance->c3_covrtInstance, 0U, false, false, false);
  covrtStateInitFcn(chartInstance->c3_covrtInstance, 0U, 0U, false, false, false,
                    0U, &c3_decisionTxtStartIdx, &c3_decisionTxtEndIdx);
  covrtTransInitFcn(chartInstance->c3_covrtInstance, 0U, 0, NULL, NULL, 0U, NULL);
  covrtEmlInitFcn(chartInstance->c3_covrtInstance, "", 4U, 0U, 4U, 0U, 2U, 0U,
                  2U, 0U, 0U, 0U, 3U, 1U);
  covrtEmlFcnInitFcn(chartInstance->c3_covrtInstance, 4U, 0U, 0U,
                     "c3_float_model", 26, -1, 533);
  covrtEmlFcnInitFcn(chartInstance->c3_covrtInstance, 4U, 0U, 1U, "divideType",
                     537, -1, 1078);
  covrtEmlFcnInitFcn(chartInstance->c3_covrtInstance, 4U, 0U, 2U, "fi_div", 1081,
                     -1, 1437);
  covrtEmlFcnInitFcn(chartInstance->c3_covrtInstance, 4U, 0U, 3U, "get_fimath",
                     1439, -1, 1693);
  covrtEmlSaturationInitFcn(chartInstance->c3_covrtInstance, 4U, 0U, 0U, 173, -1,
    179);
  covrtEmlSaturationInitFcn(chartInstance->c3_covrtInstance, 4U, 0U, 1U, 467, -1,
    481);
  covrtEmlIfInitFcn(chartInstance->c3_covrtInstance, 4U, 0U, 0U, 893, 915, 997,
                    1074, false);
  covrtEmlIfInitFcn(chartInstance->c3_covrtInstance, 4U, 0U, 1U, 1250, 1292,
                    1389, 1433, false);
  covrtEmlMCDCInitFcn(chartInstance->c3_covrtInstance, 4U, 0U, 0U, 1253, 1292,
                      3U, 0U, &c3_condTxtStartIdx[0], &c3_condTxtEndIdx[0], 5U,
                      &c3_postfixPredicateTree[0], false);
  covrtEmlRelationalInitFcn(chartInstance->c3_covrtInstance, 4U, 0U, 0U, 896,
    915, -1, 2U);
}

static void mdl_cleanup_runtime_resources_c3_float_model
  (SFc3_float_modelInstanceStruct *chartInstance)
{
  sfListenerLightTerminate(chartInstance->c3_RuntimeVar);
  sf_mex_destroy(&c3_eml_mx);
  sf_mex_destroy(&c3_b_eml_mx);
  covrtDeleteStateflowInstanceData(chartInstance->c3_covrtInstance);
}

static void enable_c3_float_model(SFc3_float_modelInstanceStruct *chartInstance)
{
  _sfTime_ = sf_get_time(chartInstance->S);
}

static void disable_c3_float_model(SFc3_float_modelInstanceStruct *chartInstance)
{
  _sfTime_ = sf_get_time(chartInstance->S);
}

static void sf_gateway_c3_float_model(SFc3_float_modelInstanceStruct
  *chartInstance)
{
  static char_T c3_cv[23] = { 'f', 'i', 'x', 'e', 'd', ':', 'f', 'i', ':', 's',
    'q', 'r', 't', 'N', 'o', 'N', 'e', 'g', 'a', 't', 'i', 'v', 'e' };

  static char_T c3_cv1[23] = { 'f', 'i', 'x', 'e', 'd', ':', 'f', 'i', ':', 's',
    'q', 'r', 't', 'N', 'o', 'N', 'e', 'g', 'a', 't', 'i', 'v', 'e' };

  emlrtStack c3_b_st;
  emlrtStack c3_c_st;
  emlrtStack c3_d_st;
  emlrtStack c3_e_st;
  emlrtStack c3_f_st;
  emlrtStack c3_st = { NULL,           /* site */
    NULL,                              /* tls */
    NULL                               /* prev */
  };

  const mxArray *c3_b_y = NULL;
  const mxArray *c3_c_y = NULL;
  const mxArray *c3_e_y = NULL;
  const mxArray *c3_f_y = NULL;
  creal_T c3_varargin_1[2048];
  cint16_T c3_b_u[2048];
  cint16_T c3_b_varargin_1;
  real_T c3_WL;
  real_T c3_b_k;
  real_T c3_b_roundFloatVar;
  real_T c3_c_roundFloatVar;
  real_T c3_d;
  real_T c3_d1;
  real_T c3_d10;
  real_T c3_d11;
  real_T c3_d12;
  real_T c3_d13;
  real_T c3_d2;
  real_T c3_d3;
  real_T c3_d4;
  real_T c3_d5;
  real_T c3_d6;
  real_T c3_d7;
  real_T c3_d8;
  real_T c3_d9;
  real_T c3_d_k;
  real_T c3_extraBits;
  real_T c3_roundFloatVar;
  uint64_T c3_xfi_abs_sq[2048];
  uint64_T c3_a;
  uint64_T c3_a0;
  uint64_T c3_a1;
  uint64_T c3_b1;
  uint64_T c3_b_a0;
  uint64_T c3_b_a1;
  uint64_T c3_b_b;
  uint64_T c3_b_b0;
  uint64_T c3_b_b1;
  uint64_T c3_c_b0;
  int32_T c3_xfi_im_sq[2048];
  int32_T c3_xfi_re_sq[2048];
  int32_T c3_xfi_stripped[2048];
  int32_T c3_PICOffset;
  int32_T c3_b_bit;
  int32_T c3_b_bit1;
  int32_T c3_b_i;
  int32_T c3_bit;
  int32_T c3_bit1;
  int32_T c3_c_bit;
  int32_T c3_c_fixedVar;
  int32_T c3_c_i;
  int32_T c3_c_k;
  int32_T c3_d_bit;
  int32_T c3_e_a1;
  int32_T c3_f_a0;
  int32_T c3_f_a1;
  int32_T c3_g_a;
  int32_T c3_g_a0;
  int32_T c3_i;
  int32_T c3_i1;
  int32_T c3_i10;
  int32_T c3_i11;
  int32_T c3_i12;
  int32_T c3_i13;
  int32_T c3_i14;
  int32_T c3_i15;
  int32_T c3_i16;
  int32_T c3_i17;
  int32_T c3_i18;
  int32_T c3_i19;
  int32_T c3_i2;
  int32_T c3_i20;
  int32_T c3_i21;
  int32_T c3_i22;
  int32_T c3_i3;
  int32_T c3_i4;
  int32_T c3_i5;
  int32_T c3_i6;
  int32_T c3_i7;
  int32_T c3_i8;
  int32_T c3_i9;
  int32_T c3_k;
  int32_T c3_ytempSquare;
  uint32_T c3_xfi_im_sqU[2048];
  uint32_T c3_xfi_re_sqU[2048];
  uint32_T c3_yfi_trivial_scaling[2048];
  uint32_T c3_y_out[1015];
  uint32_T c3_Y;
  uint32_T c3_c1;
  uint32_T c3_c_u;
  uint32_T c3_c_varargin_1;
  uint32_T c3_d_var1;
  uint32_T c3_d_varargin_1;
  uint32_T c3_i_c;
  uint32_T c3_j_c;
  uint32_T c3_j_varargin_1;
  uint32_T c3_k_varargin_1;
  uint32_T c3_value;
  uint32_T c3_var1;
  uint32_T c3_varargout_1;
  int16_T c3_xfi_im[2048];
  int16_T c3_xfi_re[2048];
  int16_T c3_b;
  int16_T c3_b0;
  int16_T c3_b_fixedVar;
  int16_T c3_c_a;
  int16_T c3_d_a;
  int16_T c3_d_a0;
  int16_T c3_f_a;
  int16_T c3_fixedVar;
  int16_T c3_mask;
  int16_T c3_ytemp;
  uint16_T c3_u_abs[2048];
  uint16_T c3_b_a[1015];
  uint16_T c3_u_abs_square[1015];
  uint16_T c3_b_p1;
  uint16_T c3_b_x;
  uint16_T c3_b_ytempSquare;
  uint16_T c3_c_a0;
  uint16_T c3_c_a1;
  uint16_T c3_c_b;
  uint16_T c3_c_b1;
  uint16_T c3_c_hfi;
  uint16_T c3_c_var1;
  uint16_T c3_d_a1;
  uint16_T c3_d_b1;
  uint16_T c3_d_hfi;
  uint16_T c3_e_a;
  uint16_T c3_e_a0;
  uint16_T c3_e_b;
  uint16_T c3_e_b0;
  uint16_T c3_e_b1;
  uint16_T c3_f_b;
  uint16_T c3_f_b0;
  uint16_T c3_g_b;
  uint16_T c3_g_b0;
  uint16_T c3_g_varargin_1;
  uint16_T c3_g_y;
  uint16_T c3_h_a1;
  uint16_T c3_h_b;
  uint16_T c3_h_varargin_1;
  uint16_T c3_h_y;
  uint16_T c3_hfi;
  uint16_T c3_i_a0;
  uint16_T c3_i_a1;
  uint16_T c3_j_a0;
  uint16_T c3_j_a1;
  uint16_T c3_k_a1;
  uint16_T c3_l_a;
  uint16_T c3_l_a0;
  uint16_T c3_m_a0;
  uint16_T c3_p_a;
  uint16_T c3_u_abs_SM;
  uint16_T c3_varargin_2;
  uint16_T c3_x;
  uint8_T c3_b_bit_idx;
  uint8_T c3_b_hfi;
  uint8_T c3_b_mask;
  uint8_T c3_b_var1;
  uint8_T c3_b_ytemp;
  uint8_T c3_bit_idx;
  uint8_T c3_c_x;
  uint8_T c3_d_b;
  uint8_T c3_d_b0;
  uint8_T c3_d_y;
  uint8_T c3_e_varargin_1;
  uint8_T c3_f_varargin_1;
  uint8_T c3_g_a1;
  uint8_T c3_h_a;
  uint8_T c3_h_a0;
  uint8_T c3_i_a;
  uint8_T c3_i_varargin_1;
  uint8_T c3_j_a;
  uint8_T c3_k_a;
  uint8_T c3_k_a0;
  uint8_T c3_m_a;
  uint8_T c3_n_a;
  uint8_T c3_o_a;
  uint8_T c3_p1;
  uint8_T c3_yreturn;
  boolean_T c3_b_c;
  boolean_T c3_b_covSaturation = false;
  boolean_T c3_c;
  boolean_T c3_c_c;
  boolean_T c3_covSaturation = false;
  boolean_T c3_d_c;
  boolean_T c3_e_c;
  boolean_T c3_f_c;
  boolean_T c3_g_c;
  boolean_T c3_h_c;
  observerLogReadPIC(&c3_PICOffset);
  c3_st.tls = chartInstance->c3_fEmlrtCtx;
  c3_b_st.prev = &c3_st;
  c3_b_st.tls = c3_st.tls;
  c3_c_st.prev = &c3_b_st;
  c3_c_st.tls = c3_b_st.tls;
  c3_d_st.prev = &c3_c_st;
  c3_d_st.tls = c3_c_st.tls;
  c3_e_st.prev = &c3_d_st;
  c3_e_st.tls = c3_d_st.tls;
  c3_f_st.prev = &c3_e_st;
  c3_f_st.tls = c3_e_st.tls;
  _sfTime_ = sf_get_time(chartInstance->S);
  chartInstance->c3_JITTransitionAnimation[0] = 0U;
  chartInstance->c3_sfEvent = CALL_EVENT;

  /* logging input variable 'u' for function 'c3_float_model' */
  chartInstance->c3_emlrtLocLogSimulated = true;

  /* logging input variable 'u' for function 'c3_float_model' */
  for (c3_i = 0; c3_i < 2048; c3_i++) {
    c3_varargin_1[c3_i] = (*chartInstance->c3_u)[c3_i];
  }

  c3_b_emlrt_update_log_1(chartInstance, c3_varargin_1,
    chartInstance->c3_emlrtLocationLoggingDataTables, 0);
  covrtEmlFcnEval(chartInstance->c3_covrtInstance, 4U, 0, 0);
  c3_b_st.site = &c3_emlrtRSI;
  covrtEmlFcnEval(chartInstance->c3_covrtInstance, 4U, 0, 3);
  for (c3_i1 = 0; c3_i1 < 2048; c3_i1++) {
    c3_varargin_1[c3_i1] = (*chartInstance->c3_u)[c3_i1];
  }

  for (c3_i2 = 0; c3_i2 < 2048; c3_i2++) {
    c3_d = muDoubleScalarFloor(c3_varargin_1[c3_i2].re * 65536.0);
    if (muDoubleScalarIsNaN(c3_d) || muDoubleScalarIsInf(c3_d)) {
      c3_d1 = 0.0;
    } else {
      c3_d1 = muDoubleScalarRem(c3_d, 65536.0);
    }

    c3_roundFloatVar = muDoubleScalarFloor(c3_varargin_1[c3_i2].re * 65536.0);
    if (c3_d1 < 0.0) {
      c3_fixedVar = (int16_T)-(int16_T)(uint16_T)-c3_d1;
    } else {
      c3_fixedVar = (int16_T)(uint16_T)c3_d1;
    }

    if (c3_roundFloatVar < 0.0) {
      c3_d2 = muDoubleScalarCeil(c3_roundFloatVar);
    } else {
      c3_d2 = muDoubleScalarFloor(c3_roundFloatVar);
    }

    if ((real_T)c3_fixedVar != c3_d2) {
      sf_data_overflow_error(chartInstance->S, 1U, 86, 20);
      c3_d3 = 1.0;
      observerLog(15 + c3_PICOffset, &c3_d3, 1);
    }

    c3_b_varargin_1.re = c3_fixedVar;
    c3_d4 = muDoubleScalarFloor(c3_varargin_1[c3_i2].im * 65536.0);
    if (muDoubleScalarIsNaN(c3_d4) || muDoubleScalarIsInf(c3_d4)) {
      c3_d5 = 0.0;
    } else {
      c3_d5 = muDoubleScalarRem(c3_d4, 65536.0);
    }

    c3_b_roundFloatVar = muDoubleScalarFloor(c3_varargin_1[c3_i2].im * 65536.0);
    if (c3_d5 < 0.0) {
      c3_b_fixedVar = (int16_T)-(int16_T)(uint16_T)-c3_d5;
    } else {
      c3_b_fixedVar = (int16_T)(uint16_T)c3_d5;
    }

    if (c3_b_roundFloatVar < 0.0) {
      c3_d6 = muDoubleScalarCeil(c3_b_roundFloatVar);
    } else {
      c3_d6 = muDoubleScalarFloor(c3_b_roundFloatVar);
    }

    if ((real_T)c3_b_fixedVar != c3_d6) {
      sf_data_overflow_error(chartInstance->S, 1U, 86, 20);
      c3_d7 = 1.0;
      observerLog(23 + c3_PICOffset, &c3_d7, 1);
    }

    c3_b_varargin_1.im = c3_b_fixedVar;
    c3_b_u[c3_i2] = c3_b_varargin_1;
  }

  c3_b_emlrt_update_log_2(chartInstance, c3_b_u,
    chartInstance->c3_emlrtLocationLoggingDataTables, 1);
  c3_emlrt_update_log_3(chartInstance, 36864U,
                        chartInstance->c3_emlrtLocationLoggingDataTables, 2);
  c3_b_st.site = &c3_b_emlrtRSI;
  for (c3_i3 = 0; c3_i3 < 2048; c3_i3++) {
    c3_xfi_re[c3_i3] = c3_b_u[c3_i3].re;
  }

  for (c3_i4 = 0; c3_i4 < 2048; c3_i4++) {
    c3_xfi_im[c3_i4] = c3_b_u[c3_i4].im;
  }

  for (c3_i5 = 0; c3_i5 < 2048; c3_i5++) {
    c3_xfi_re_sq[c3_i5] = c3_xfi_re[c3_i5] * c3_xfi_re[c3_i5];
  }

  for (c3_i6 = 0; c3_i6 < 2048; c3_i6++) {
    c3_xfi_im_sq[c3_i6] = c3_xfi_im[c3_i6] * c3_xfi_im[c3_i6];
  }

  for (c3_i7 = 0; c3_i7 < 2048; c3_i7++) {
    c3_xfi_stripped[c3_i7] = c3_xfi_re_sq[c3_i7];
  }

  for (c3_i8 = 0; c3_i8 < 2048; c3_i8++) {
    c3_yfi_trivial_scaling[c3_i8] = c3__u32_s32_(chartInstance,
      c3_xfi_stripped[c3_i8], 24, 1U, 173, 6);
  }

  for (c3_i9 = 0; c3_i9 < 2048; c3_i9++) {
    c3_xfi_re_sqU[c3_i9] = c3_yfi_trivial_scaling[c3_i9];
  }

  for (c3_i10 = 0; c3_i10 < 2048; c3_i10++) {
    c3_xfi_stripped[c3_i10] = c3_xfi_im_sq[c3_i10];
  }

  for (c3_i11 = 0; c3_i11 < 2048; c3_i11++) {
    c3_yfi_trivial_scaling[c3_i11] = c3__u32_s32_(chartInstance,
      c3_xfi_stripped[c3_i11], 25, 1U, 173, 6);
  }

  for (c3_i12 = 0; c3_i12 < 2048; c3_i12++) {
    c3_xfi_im_sqU[c3_i12] = c3_yfi_trivial_scaling[c3_i12];
  }

  for (c3_i13 = 0; c3_i13 < 2048; c3_i13++) {
    c3_xfi_abs_sq[c3_i13] = (uint64_T)c3_xfi_re_sqU[c3_i13] + (uint64_T)
      c3_xfi_im_sqU[c3_i13];
  }

  c3_c_st.site = &c3_d_emlrtRSI;
  c3_d_st.site = &c3_e_emlrtRSI;
  for (c3_i14 = 0; c3_i14 < 2048; c3_i14++) {
    c3_xfi_re[c3_i14] = 0;
  }

  for (c3_k = 0; c3_k < 2048; c3_k++) {
    c3_b_k = 1.0 + (real_T)c3_k;
    c3_c = true;
    if (!c3_c) {
      c3_b_y = NULL;
      sf_mex_assign(&c3_b_y, sf_mex_create("y", c3_cv, 10, 0U, 1, 0U, 2, 1, 23),
                    false);
      c3_c_y = NULL;
      sf_mex_assign(&c3_c_y, sf_mex_create("y", c3_cv, 10, 0U, 1, 0U, 2, 1, 23),
                    false);
      sf_mex_call(&c3_d_st, &c3_emlrtMCI, "error", 0U, 2U, 14, c3_b_y, 14,
                  sf_mex_call(&c3_d_st, NULL, "getString", 1U, 1U, 14,
        sf_mex_call(&c3_d_st, NULL, "message", 1U, 1U, 14, c3_c_y)));
    }

    c3_a0 = c3_xfi_abs_sq[(int32_T)c3_b_k - 1];
    c3_a = c3_a0;
    c3_b_a0 = c3_a;
    c3_a1 = c3_b_a0;
    c3_b_a1 = c3_a1;
    c3_b_c = (c3_b_a1 <= 0ULL);
    if (c3_b_c) {
      c3_xfi_re[(int32_T)c3_b_k - 1] = 0;
    } else {
      for (c3_b_i = 14; c3_b_i >= 0; c3_b_i--) {
        c3_e_st.site = &c3_f_emlrtRSI;
        c3_c_a = c3_xfi_re[(int32_T)c3_b_k - 1];
        c3_bit = c3_b_i + 1;
        c3_f_st.site = &c3_g_emlrtRSI;
        c3_d_a = c3_c_a;
        c3_b_bit = c3_bit;
        c3_bit1 = c3_b_bit;
        c3_i19 = c3_bit1;
        c3_covSaturation = false;
        if (c3_i19 < 0) {
          c3_i19 = 0;
        } else {
          if (c3_i19 > 255) {
            c3_i19 = 255;
          }

          covrtSaturationUpdateFcn(chartInstance->c3_covrtInstance, 4, 0, 0, 0,
            c3_covSaturation);
        }

        c3_bit_idx = (uint8_T)c3_i19;
        c3_i20 = (uint8_T)((uint32_T)c3_bit_idx - 1U);
        if ((c3_i20 < 0) || (c3_i20 > 15)) {
          emlrtDynamicBoundsCheckR2012b(c3_i20, 0, 15, &c3_b_emlrtBCI, &c3_f_st);
        }

        c3_mask = (int16_T)(1 << (uint8_T)c3_i20);
        c3_ytemp = (int16_T)(c3_d_a | c3_mask);
        c3_d_a0 = c3_ytemp;
        c3_b0 = c3_ytemp;
        c3_f_a = c3_d_a0;
        c3_b = c3_b0;
        c3_ytempSquare = c3_f_a * c3_b;
        c3_f_a0 = c3_ytempSquare;
        c3_b_b0 = c3_xfi_abs_sq[(int32_T)c3_b_k - 1];
        c3_g_a = c3_f_a0;
        c3_b_b = c3_b_b0;
        c3_g_a0 = c3_g_a;
        c3_c_b0 = c3_b_b;
        c3_e_a1 = c3_g_a0;
        c3_b1 = c3_c_b0;
        c3_f_a1 = c3_e_a1;
        c3_b_b1 = c3_b1;
        c3_e_c = ((int64_T)c3_f_a1 <= (int64_T)c3_b_b1);
        if (c3_e_c) {
          c3_xfi_re[(int32_T)c3_b_k - 1] = c3_ytemp;
        }
      }
    }
  }

  c3_b_emlrt_update_log_5(chartInstance, c3_xfi_re,
    chartInstance->c3_emlrtLocationLoggingDataTables, 4);
  for (c3_i15 = 0; c3_i15 < 2048; c3_i15++) {
    c3_u_abs[c3_i15] = c3__u16_shl_s32_(chartInstance, (int32_T)c3__u16_s16_
      (chartInstance, c3_xfi_re[c3_i15], 28, 1U, 170, 25), 1, 27, 1U, 170, 25);
  }

  c3_b_emlrt_update_log_4(chartInstance, c3_u_abs,
    chartInstance->c3_emlrtLocationLoggingDataTables, 3);
  c3_emlrt_update_log_6(chartInstance, 32768U,
                        chartInstance->c3_emlrtLocationLoggingDataTables, 5);
  for (c3_i16 = 0; c3_i16 < 1015; c3_i16++) {
    c3_b_a[c3_i16] = c3_u_abs[c3_i16 + 9];
  }

  for (c3_i17 = 0; c3_i17 < 1015; c3_i17++) {
    c3_y_out[c3_i17] = (uint32_T)c3_b_a[c3_i17] * (uint32_T)c3_b_a[c3_i17];
  }

  c3_b_emlrt_update_log_8(chartInstance, c3_y_out,
    chartInstance->c3_emlrtLocationLoggingDataTables, 7);
  for (c3_i18 = 0; c3_i18 < 1015; c3_i18++) {
    c3_u_abs_square[c3_i18] = c3__u16_u32_(chartInstance, c3_y_out[c3_i18] >> 12,
      38, 1U, 310, 82);
  }

  c3_b_emlrt_update_log_7(chartInstance, c3_u_abs_square,
    chartInstance->c3_emlrtLocationLoggingDataTables, 6);
  c3_Y = c3_u_abs_square[0];
  for (c3_c_k = 0; c3_c_k < 1014; c3_c_k++) {
    c3_d_k = 2.0 + (real_T)c3_c_k;
    c3_d8 = trunc(c3_d_k);
    if (muDoubleScalarIsNaN(c3_d8) || muDoubleScalarIsInf(c3_d8)) {
      c3_d9 = 0.0;
    } else {
      c3_d9 = muDoubleScalarRem(c3_d8, 4.294967296E+9);
    }

    c3_c_roundFloatVar = trunc(c3_d_k);
    if (c3_d9 < 0.0) {
      c3_c_fixedVar = -(int32_T)(uint32_T)-c3_d9;
    } else {
      c3_c_fixedVar = (int32_T)(uint32_T)c3_d9;
    }

    if (c3_c_roundFloatVar < 0.0) {
      c3_d10 = muDoubleScalarCeil(c3_c_roundFloatVar);
    } else {
      c3_d10 = muDoubleScalarFloor(c3_c_roundFloatVar);
    }

    if ((real_T)c3_c_fixedVar != c3_d10) {
      sf_data_overflow_error(chartInstance->S, 1U, 412, 17);
      c3_d11 = 1.0;
      observerLog(50 + c3_PICOffset, &c3_d11, 1);
    }

    c3_c_u = c3__u32_add__(chartInstance, c3_Y, (uint32_T)
      c3_u_abs_square[c3__s32_minus__(chartInstance, c3_c_fixedVar, 1, 49, 1U,
      412, 17)], 48, 1U, 412, 17);
    if (c3_c_u > 67108863U) {
      sf_data_overflow_error(chartInstance->S, 1U, 412, 17);
      c3_d12 = 1.0;
      observerLog(83 + c3_PICOffset, &c3_d12, 1);
    }

    c3_Y = c3_c_u & 67108863U;
  }

  c3_c_varargin_1 = c3_emlrt_update_log_10(chartInstance, c3_Y,
    chartInstance->c3_emlrtLocationLoggingDataTables, 9);
  c3_d_varargin_1 = c3_c_varargin_1;
  c3_var1 = c3_d_varargin_1;
  c3_hfi = c3__u16_u32_(chartInstance, c3_var1 >> 1, 42, 1U, 409, 36);
  c3_u_abs_SM = c3_emlrt_update_log_9(chartInstance, c3_hfi,
    chartInstance->c3_emlrtLocationLoggingDataTables, 8);
  c3_b_st.site = &c3_c_emlrtRSI;
  c3_c_st.site = &c3_c_emlrtRSI;
  c3_x = c3_u_abs_SM;
  c3_d_st.site = &c3_e_emlrtRSI;
  c3_b_x = c3_x;
  c3_d_y = 0U;
  c3_c_c = true;
  if (!c3_c_c) {
    c3_e_y = NULL;
    sf_mex_assign(&c3_e_y, sf_mex_create("y", c3_cv1, 10, 0U, 1, 0U, 2, 1, 23),
                  false);
    c3_f_y = NULL;
    sf_mex_assign(&c3_f_y, sf_mex_create("y", c3_cv1, 10, 0U, 1, 0U, 2, 1, 23),
                  false);
    sf_mex_call(&c3_d_st, &c3_emlrtMCI, "error", 0U, 2U, 14, c3_e_y, 14,
                sf_mex_call(&c3_d_st, NULL, "getString", 1U, 1U, 14, sf_mex_call
      (&c3_d_st, NULL, "message", 1U, 1U, 14, c3_f_y)));
  }

  c3_c_a0 = c3_b_x;
  c3_e_a = c3_c_a0;
  c3_e_a0 = c3_e_a;
  c3_c_a1 = c3_e_a0;
  c3_d_a1 = c3_c_a1;
  c3_d_c = (c3_d_a1 <= 0);
  if (c3_d_c) {
    c3_d_y = 0U;
  } else {
    for (c3_c_i = 7; c3_c_i >= 0; c3_c_i--) {
      c3_e_st.site = &c3_f_emlrtRSI;
      c3_h_a = c3_d_y;
      c3_c_bit = c3_c_i + 1;
      c3_f_st.site = &c3_g_emlrtRSI;
      c3_j_a = c3_h_a;
      c3_d_bit = c3_c_bit;
      c3_b_bit1 = c3_d_bit;
      c3_i21 = c3_b_bit1;
      c3_b_covSaturation = false;
      if (c3_i21 < 0) {
        c3_i21 = 0;
      } else {
        if (c3_i21 > 255) {
          c3_i21 = 255;
        }

        covrtSaturationUpdateFcn(chartInstance->c3_covrtInstance, 4, 0, 1, 0,
          c3_b_covSaturation);
      }

      c3_b_bit_idx = (uint8_T)c3_i21;
      c3_i22 = (uint8_T)((uint32_T)c3_b_bit_idx - 1U);
      if ((c3_i22 < 0) || (c3_i22 > 7)) {
        emlrtDynamicBoundsCheckR2012b(c3_i22, 0, 7, &c3_emlrtBCI, &c3_f_st);
      }

      c3_b_mask = (uint8_T)(1 << (uint8_T)c3_i22);
      c3_b_ytemp = (uint8_T)(c3_j_a | c3_b_mask);
      c3_h_a0 = c3_b_ytemp;
      c3_d_b0 = c3_b_ytemp;
      c3_k_a = c3_h_a0;
      c3_d_b = c3_d_b0;
      c3_b_ytempSquare = (uint16_T)((uint32_T)c3_k_a * (uint32_T)c3_d_b);
      c3_i_a0 = c3_b_ytempSquare;
      c3_e_b0 = c3_b_x;
      c3_l_a = c3_i_a0;
      c3_e_b = c3_e_b0;
      c3_j_a0 = c3_l_a;
      c3_f_b0 = c3_e_b;
      c3_h_a1 = c3_j_a0;
      c3_d_b1 = c3_f_b0;
      c3_i_a1 = c3_h_a1;
      c3_e_b1 = c3_d_b1;
      c3_f_c = (((uint32_T)c3_i_a1 << 1) <= c3_e_b1);
      if (c3_f_c) {
        c3_d_y = c3_b_ytemp;
      }
    }
  }

  c3_yreturn = c3_d_y;
  c3_i_a = c3_emlrt_update_log_13(chartInstance, c3_yreturn,
    chartInstance->c3_emlrtLocationLoggingDataTables, 12);
  c3_c_b = c3_u_abs[8];

  /* logging input variable 'a' for function 'fi_div' */
  /* logging input variable 'b' for function 'fi_div' */
  /* logging input variable 'a' for function 'fi_div' */
  c3_emlrt_update_log_13(chartInstance, c3_i_a,
    chartInstance->c3_emlrtLocationLoggingDataTables, 20);

  /* logging input variable 'b' for function 'fi_div' */
  c3_emlrt_update_log_16(chartInstance, c3_c_b,
    chartInstance->c3_emlrtLocationLoggingDataTables, 21);
  covrtEmlFcnEval(chartInstance->c3_covrtInstance, 4U, 0, 2);
  c3_e_varargin_1 = c3_i_a;
  c3_p1 = c3_e_varargin_1;
  c3_f_varargin_1 = c3_p1;
  c3_b_var1 = c3_f_varargin_1;
  c3_b_hfi = c3_b_var1;
  c3_g_a1 = c3_emlrt_update_log_13(chartInstance, c3_b_hfi,
    chartInstance->c3_emlrtLocationLoggingDataTables, 22);
  c3_g_varargin_1 = c3_c_b;
  c3_b_p1 = c3_g_varargin_1;
  c3_h_varargin_1 = c3_b_p1;
  c3_c_var1 = c3_h_varargin_1;
  c3_c_hfi = c3_c_var1;
  c3_c_b1 = c3_emlrt_update_log_16(chartInstance, c3_c_hfi,
    chartInstance->c3_emlrtLocationLoggingDataTables, 23);
  c3_c_st.site = &c3_h_emlrtRSI;
  covrtEmlFcnEval(chartInstance->c3_covrtInstance, 4U, 0, 1);
  c3_emlrt_update_log_14(chartInstance, 16.0,
    chartInstance->c3_emlrtLocationLoggingDataTables, 13);
  c3_emlrt_update_log_14(chartInstance, 24.0,
    chartInstance->c3_emlrtLocationLoggingDataTables, 14);
  c3_extraBits = c3_emlrt_update_log_14(chartInstance, 8.0,
    chartInstance->c3_emlrtLocationLoggingDataTables, 15);
  c3_emlrt_update_log_14(chartInstance, 24.0,
    chartInstance->c3_emlrtLocationLoggingDataTables, 16);
  c3_WL = c3_emlrt_update_log_14(chartInstance, 24.0,
    chartInstance->c3_emlrtLocationLoggingDataTables, 17);
  c3_d13 = c3_emlrt_update_log_14(chartInstance, c3_WL + c3_extraBits,
    chartInstance->c3_emlrtLocationLoggingDataTables, 18);
  covrtEmlIfEval(chartInstance->c3_covrtInstance, 4U, 0, 0,
                 covrtRelationalopUpdateFcn(chartInstance->c3_covrtInstance, 4U,
    0U, 0U, c3_d13, 64.0, -1, 2U, c3_d13 < 64.0));
  c3_emlrt_update_log_15(chartInstance, false,
    chartInstance->c3_emlrtLocationLoggingDataTables, 19);
  covrtEmlCondEval(chartInstance->c3_covrtInstance, 4U, 0, 0, true);
  covrtEmlCondEval(chartInstance->c3_covrtInstance, 4U, 0, 1, true);
  covrtEmlCondEval(chartInstance->c3_covrtInstance, 4U, 0, 2, true);
  covrtEmlMcdcEval(chartInstance->c3_covrtInstance, 4U, 0, 0, true);
  covrtEmlIfEval(chartInstance->c3_covrtInstance, 4U, 0, 1, true);
  c3_c_st.site = &c3_i_emlrtRSI;
  c3_k_a0 = c3_g_a1;
  c3_g_b0 = c3_c_b1;
  c3_d_st.site = &c3_j_emlrtRSI;
  c3_m_a = c3_k_a0;
  c3_f_b = c3_g_b0;
  c3_e_st.site = &c3_k_emlrtRSI;
  c3_n_a = c3_m_a;
  c3_g_b = c3_f_b;
  c3_i_varargin_1 = c3_n_a;
  c3_varargin_2 = c3_g_b;
  c3_c_x = c3_i_varargin_1;
  c3_g_y = c3_varargin_2;
  c3_o_a = c3_c_x;
  c3_h_b = c3_g_y;
  c3_l_a0 = c3_h_b;
  c3_p_a = c3_l_a0;
  c3_m_a0 = c3_p_a;
  c3_j_a1 = c3_m_a0;
  c3_k_a1 = c3_j_a1;
  c3_g_c = (c3_k_a1 == 0);
  if (c3_g_c) {
    c3_h_c = false;
    if (c3_h_c) {
      c3_varargout_1 = 0U;
    } else {
      c3_varargout_1 = MAX_uint32_T;
    }
  } else {
    c3_varargout_1 = c3_divv_u32u64(chartInstance, c3__u64_shl_s32_
      (chartInstance, (uint64_T)c3_o_a, 31, 72, 1U, 1306, 23), (uint64_T)c3_h_b,
      79, 1U, 1306, 23);
  }

  c3_value = c3_varargout_1;
  c3_i_c = c3_value;
  c3_c1 = c3_emlrt_update_log_12(chartInstance, c3_i_c,
    chartInstance->c3_emlrtLocationLoggingDataTables, 24);
  c3_j_c = c3_emlrt_update_log_12(chartInstance, c3_c1,
    chartInstance->c3_emlrtLocationLoggingDataTables, 25);
  c3_j_varargin_1 = c3_emlrt_update_log_12(chartInstance, c3_j_c,
    chartInstance->c3_emlrtLocationLoggingDataTables, 11);
  c3_k_varargin_1 = c3_j_varargin_1;
  c3_d_var1 = c3_k_varargin_1;
  c3_d_hfi = c3__u16_u32_(chartInstance, c3_d_var1 >> 14, 75, 1U, 456, 72);
  c3_h_y = c3_emlrt_update_log_11(chartInstance, c3_d_hfi,
    chartInstance->c3_emlrtLocationLoggingDataTables, 10);
  *chartInstance->c3_y = c3_h_y;
  covrtSigUpdateFcn(chartInstance->c3_covrtInstance, 1U, (real_T)
                    *chartInstance->c3_y);
}

static void ext_mode_exec_c3_float_model(SFc3_float_modelInstanceStruct
  *chartInstance)
{
  (void)chartInstance;
}

static void c3_update_jit_animation_c3_float_model
  (SFc3_float_modelInstanceStruct *chartInstance)
{
  (void)chartInstance;
}

static void c3_do_animation_call_c3_float_model(SFc3_float_modelInstanceStruct
  *chartInstance)
{
  (void)chartInstance;
}

static const mxArray *get_sim_state_c3_float_model
  (SFc3_float_modelInstanceStruct *chartInstance)
{
  const mxArray *c3_b_y = NULL;
  const mxArray *c3_c_y = NULL;
  const mxArray *c3_d_y = NULL;
  const mxArray *c3_st;
  uint16_T c3_b_u;
  c3_st = NULL;
  c3_st = NULL;
  c3_b_y = NULL;
  sf_mex_assign(&c3_b_y, sf_mex_createcellmatrix(1, 1), false);
  c3_c_y = NULL;
  c3_b_u = *chartInstance->c3_y;
  c3_d_y = NULL;
  sf_mex_assign(&c3_d_y, sf_mex_create("y", &c3_b_u, 5, 0U, 0, 0U, 0), false);
  sf_mex_assign(&c3_c_y, sf_mex_create_fi(sf_mex_dup(c3_eml_mx), sf_mex_dup
    (c3_b_eml_mx), "simulinkarray", c3_d_y, 0U, 0U), false);
  sf_mex_setcell(c3_b_y, 0, c3_c_y);
  sf_mex_assign(&c3_st, c3_b_y, false);
  return c3_st;
}

static void set_sim_state_c3_float_model(SFc3_float_modelInstanceStruct
  *chartInstance, const mxArray *c3_st)
{
  emlrtStack c3_b_st = { NULL,         /* site */
    NULL,                              /* tls */
    NULL                               /* prev */
  };

  const mxArray *c3_b_u;
  c3_b_st.tls = chartInstance->c3_fEmlrtCtx;
  chartInstance->c3_doneDoubleBufferReInit = true;
  c3_b_u = sf_mex_dup(c3_st);
  *chartInstance->c3_y = c3_emlrt_marshallIn(chartInstance, &c3_b_st, sf_mex_dup
    (sf_mex_getcell(c3_b_u, 0)), "y");
  sf_mex_destroy(&c3_b_u);
  sf_mex_destroy(&c3_st);
}

static void c3_emlrt_update_log_1(SFc3_float_modelInstanceStruct *chartInstance,
  creal_T c3_in[2048], emlrtLocationLoggingDataType c3_table[], int32_T c3_index,
  creal_T c3_out[2048])
{
  int32_T c3_i;
  for (c3_i = 0; c3_i < 2048; c3_i++) {
    c3_out[c3_i] = c3_in[c3_i];
  }

  c3_b_emlrt_update_log_1(chartInstance, c3_out, c3_table, c3_index);
}

static void c3_emlrt_update_log_2(SFc3_float_modelInstanceStruct *chartInstance,
  cint16_T c3_in[2048], emlrtLocationLoggingDataType c3_table[], int32_T
  c3_index, cint16_T c3_out[2048])
{
  int32_T c3_i;
  for (c3_i = 0; c3_i < 2048; c3_i++) {
    c3_out[c3_i] = c3_in[c3_i];
  }

  c3_b_emlrt_update_log_2(chartInstance, c3_out, c3_table, c3_index);
}

static uint16_T c3_emlrt_update_log_3(SFc3_float_modelInstanceStruct
  *chartInstance, uint16_T c3_in, emlrtLocationLoggingDataType c3_table[],
  int32_T c3_index)
{
  emlrtLocationLoggingDataType *c3_b_table;
  emlrtLocationLoggingHistogramType *c3_histTable;
  real_T c3_d;
  real_T c3_d1;
  real_T c3_inDouble;
  real_T c3_significand;
  int32_T c3_exponent;
  uint16_T c3_b_u;
  uint16_T c3_localMax;
  uint16_T c3_localMin;
  uint16_T c3_u1;
  boolean_T c3_isLoggingEnabledHere;
  (void)chartInstance;
  c3_isLoggingEnabledHere = (c3_index >= 0);
  if (c3_isLoggingEnabledHere) {
    c3_b_table = (emlrtLocationLoggingDataType *)&c3_table[c3_index];
    c3_d = c3_b_table[0U].SimMin * 4096.0;
    if (c3_d < 65536.0) {
      if (c3_d >= 0.0) {
        c3_b_u = (uint16_T)c3_d;
      } else {
        c3_b_u = 0U;
      }
    } else if (c3_d >= 65536.0) {
      c3_b_u = MAX_uint16_T;
    } else {
      c3_b_u = 0U;
    }

    c3_localMin = c3_b_u;
    c3_d1 = c3_b_table[0U].SimMax * 4096.0;
    if (c3_d1 < 65536.0) {
      if (c3_d1 >= 0.0) {
        c3_u1 = (uint16_T)c3_d1;
      } else {
        c3_u1 = 0U;
      }
    } else if (c3_d1 >= 65536.0) {
      c3_u1 = MAX_uint16_T;
    } else {
      c3_u1 = 0U;
    }

    c3_localMax = c3_u1;
    c3_histTable = c3_b_table[0U].HistogramTable;

    /* Simulation Min-Max logging. */
    if (c3_in < c3_localMin) {
      c3_localMin = c3_in;
    }

    if (c3_in > c3_localMax) {
      c3_localMax = c3_in;
    }

    /* Histogram logging. */
    c3_inDouble = (real_T)c3_in * 0.000244140625;
    c3_histTable->TotalNumberOfValues++;
    if (c3_inDouble == 0.0) {
      c3_histTable->NumberOfZeros++;
    } else {
      c3_histTable->SimSum += c3_inDouble;
      if ((!muDoubleScalarIsInf(c3_inDouble)) && (!muDoubleScalarIsNaN
           (c3_inDouble))) {
        c3_significand = frexp(c3_inDouble, &c3_exponent);
        if (c3_exponent > 128) {
          c3_exponent = 128;
        }

        if (c3_exponent < -127) {
          c3_exponent = -127;
        }

        if (c3_significand < 0.0) {
          c3_histTable->NumberOfNegativeValues++;
          c3_histTable->HistogramOfNegativeValues[127 + c3_exponent]++;
        } else {
          c3_histTable->NumberOfPositiveValues++;
          c3_histTable->HistogramOfPositiveValues[127 + c3_exponent]++;
        }
      }
    }

    c3_b_table[0U].SimMin = (real_T)c3_localMin * 0.000244140625;
    c3_b_table[0U].SimMax = (real_T)c3_localMax * 0.000244140625;

    /* IsAlwaysInteger logging. */
    if ((uint16_T)(c3_in & 4095) != 0) {
      c3_b_table[0U].IsAlwaysInteger = false;
    }
  }

  return c3_in;
}

static void c3_emlrt_update_log_4(SFc3_float_modelInstanceStruct *chartInstance,
  uint16_T c3_in[2048], emlrtLocationLoggingDataType c3_table[], int32_T
  c3_index, uint16_T c3_out[2048])
{
  int32_T c3_i;
  for (c3_i = 0; c3_i < 2048; c3_i++) {
    c3_out[c3_i] = c3_in[c3_i];
  }

  c3_b_emlrt_update_log_4(chartInstance, c3_out, c3_table, c3_index);
}

static void c3_emlrt_update_log_5(SFc3_float_modelInstanceStruct *chartInstance,
  int16_T c3_in[2048], emlrtLocationLoggingDataType c3_table[], int32_T c3_index,
  int16_T c3_out[2048])
{
  int32_T c3_i;
  for (c3_i = 0; c3_i < 2048; c3_i++) {
    c3_out[c3_i] = c3_in[c3_i];
  }

  c3_b_emlrt_update_log_5(chartInstance, c3_out, c3_table, c3_index);
}

static uint16_T c3_emlrt_update_log_6(SFc3_float_modelInstanceStruct
  *chartInstance, uint16_T c3_in, emlrtLocationLoggingDataType c3_table[],
  int32_T c3_index)
{
  emlrtLocationLoggingDataType *c3_b_table;
  emlrtLocationLoggingHistogramType *c3_histTable;
  real_T c3_d;
  real_T c3_d1;
  real_T c3_inDouble;
  real_T c3_significand;
  int32_T c3_exponent;
  uint16_T c3_b_u;
  uint16_T c3_localMax;
  uint16_T c3_localMin;
  uint16_T c3_u1;
  boolean_T c3_isLoggingEnabledHere;
  (void)chartInstance;
  c3_isLoggingEnabledHere = (c3_index >= 0);
  if (c3_isLoggingEnabledHere) {
    c3_b_table = (emlrtLocationLoggingDataType *)&c3_table[c3_index];
    c3_d = c3_b_table[0U].SimMin * 32.0;
    if (c3_d < 65536.0) {
      if (c3_d >= 0.0) {
        c3_b_u = (uint16_T)c3_d;
      } else {
        c3_b_u = 0U;
      }
    } else if (c3_d >= 65536.0) {
      c3_b_u = MAX_uint16_T;
    } else {
      c3_b_u = 0U;
    }

    c3_localMin = c3_b_u;
    c3_d1 = c3_b_table[0U].SimMax * 32.0;
    if (c3_d1 < 65536.0) {
      if (c3_d1 >= 0.0) {
        c3_u1 = (uint16_T)c3_d1;
      } else {
        c3_u1 = 0U;
      }
    } else if (c3_d1 >= 65536.0) {
      c3_u1 = MAX_uint16_T;
    } else {
      c3_u1 = 0U;
    }

    c3_localMax = c3_u1;
    c3_histTable = c3_b_table[0U].HistogramTable;

    /* Simulation Min-Max logging. */
    if (c3_in < c3_localMin) {
      c3_localMin = c3_in;
    }

    if (c3_in > c3_localMax) {
      c3_localMax = c3_in;
    }

    /* Histogram logging. */
    c3_inDouble = (real_T)c3_in * 0.03125;
    c3_histTable->TotalNumberOfValues++;
    if (c3_inDouble == 0.0) {
      c3_histTable->NumberOfZeros++;
    } else {
      c3_histTable->SimSum += c3_inDouble;
      if ((!muDoubleScalarIsInf(c3_inDouble)) && (!muDoubleScalarIsNaN
           (c3_inDouble))) {
        c3_significand = frexp(c3_inDouble, &c3_exponent);
        if (c3_exponent > 128) {
          c3_exponent = 128;
        }

        if (c3_exponent < -127) {
          c3_exponent = -127;
        }

        if (c3_significand < 0.0) {
          c3_histTable->NumberOfNegativeValues++;
          c3_histTable->HistogramOfNegativeValues[127 + c3_exponent]++;
        } else {
          c3_histTable->NumberOfPositiveValues++;
          c3_histTable->HistogramOfPositiveValues[127 + c3_exponent]++;
        }
      }
    }

    c3_b_table[0U].SimMin = (real_T)c3_localMin * 0.03125;
    c3_b_table[0U].SimMax = (real_T)c3_localMax * 0.03125;

    /* IsAlwaysInteger logging. */
    if ((uint16_T)(c3_in & 31) != 0) {
      c3_b_table[0U].IsAlwaysInteger = false;
    }
  }

  return c3_in;
}

static void c3_emlrt_update_log_7(SFc3_float_modelInstanceStruct *chartInstance,
  uint16_T c3_in[1015], emlrtLocationLoggingDataType c3_table[], int32_T
  c3_index, uint16_T c3_out[1015])
{
  int32_T c3_i;
  for (c3_i = 0; c3_i < 1015; c3_i++) {
    c3_out[c3_i] = c3_in[c3_i];
  }

  c3_b_emlrt_update_log_7(chartInstance, c3_out, c3_table, c3_index);
}

static void c3_emlrt_update_log_8(SFc3_float_modelInstanceStruct *chartInstance,
  uint32_T c3_in[1015], emlrtLocationLoggingDataType c3_table[], int32_T
  c3_index, uint32_T c3_out[1015])
{
  int32_T c3_i;
  for (c3_i = 0; c3_i < 1015; c3_i++) {
    c3_out[c3_i] = c3_in[c3_i];
  }

  c3_b_emlrt_update_log_8(chartInstance, c3_out, c3_table, c3_index);
}

static uint16_T c3_emlrt_update_log_9(SFc3_float_modelInstanceStruct
  *chartInstance, uint16_T c3_in, emlrtLocationLoggingDataType c3_table[],
  int32_T c3_index)
{
  emlrtLocationLoggingDataType *c3_b_table;
  emlrtLocationLoggingHistogramType *c3_histTable;
  real_T c3_d;
  real_T c3_d1;
  real_T c3_inDouble;
  real_T c3_significand;
  int32_T c3_exponent;
  uint16_T c3_b_u;
  uint16_T c3_localMax;
  uint16_T c3_localMin;
  uint16_T c3_u1;
  boolean_T c3_isLoggingEnabledHere;
  (void)chartInstance;
  c3_isLoggingEnabledHere = (c3_index >= 0);
  if (c3_isLoggingEnabledHere) {
    c3_b_table = (emlrtLocationLoggingDataType *)&c3_table[c3_index];
    c3_d = c3_b_table[0U].SimMin * 2.097152E+6;
    if (c3_d < 65536.0) {
      if (c3_d >= 0.0) {
        c3_b_u = (uint16_T)c3_d;
      } else {
        c3_b_u = 0U;
      }
    } else if (c3_d >= 65536.0) {
      c3_b_u = MAX_uint16_T;
    } else {
      c3_b_u = 0U;
    }

    c3_localMin = c3_b_u;
    c3_d1 = c3_b_table[0U].SimMax * 2.097152E+6;
    if (c3_d1 < 65536.0) {
      if (c3_d1 >= 0.0) {
        c3_u1 = (uint16_T)c3_d1;
      } else {
        c3_u1 = 0U;
      }
    } else if (c3_d1 >= 65536.0) {
      c3_u1 = MAX_uint16_T;
    } else {
      c3_u1 = 0U;
    }

    c3_localMax = c3_u1;
    c3_histTable = c3_b_table[0U].HistogramTable;

    /* Simulation Min-Max logging. */
    if (c3_in < c3_localMin) {
      c3_localMin = c3_in;
    }

    if (c3_in > c3_localMax) {
      c3_localMax = c3_in;
    }

    /* Histogram logging. */
    c3_inDouble = (real_T)c3_in * 4.76837158203125E-7;
    c3_histTable->TotalNumberOfValues++;
    if (c3_inDouble == 0.0) {
      c3_histTable->NumberOfZeros++;
    } else {
      c3_histTable->SimSum += c3_inDouble;
      if ((!muDoubleScalarIsInf(c3_inDouble)) && (!muDoubleScalarIsNaN
           (c3_inDouble))) {
        c3_significand = frexp(c3_inDouble, &c3_exponent);
        if (c3_exponent > 128) {
          c3_exponent = 128;
        }

        if (c3_exponent < -127) {
          c3_exponent = -127;
        }

        if (c3_significand < 0.0) {
          c3_histTable->NumberOfNegativeValues++;
          c3_histTable->HistogramOfNegativeValues[127 + c3_exponent]++;
        } else {
          c3_histTable->NumberOfPositiveValues++;
          c3_histTable->HistogramOfPositiveValues[127 + c3_exponent]++;
        }
      }
    }

    c3_b_table[0U].SimMin = (real_T)c3_localMin * 4.76837158203125E-7;
    c3_b_table[0U].SimMax = (real_T)c3_localMax * 4.76837158203125E-7;

    /* IsAlwaysInteger logging. */
    if ((uint16_T)(c3_in & MAX_uint16_T) != 0) {
      c3_b_table[0U].IsAlwaysInteger = false;
    }
  }

  return c3_in;
}

static uint32_T c3_emlrt_update_log_10(SFc3_float_modelInstanceStruct
  *chartInstance, uint32_T c3_in, emlrtLocationLoggingDataType c3_table[],
  int32_T c3_index)
{
  emlrtLocationLoggingDataType *c3_b_table;
  emlrtLocationLoggingHistogramType *c3_histTable;
  real_T c3_d;
  real_T c3_d1;
  real_T c3_inDouble;
  real_T c3_significand;
  int32_T c3_exponent;
  uint32_T c3_b_u;
  uint32_T c3_localMax;
  uint32_T c3_localMin;
  uint32_T c3_u1;
  boolean_T c3_isLoggingEnabledHere;
  (void)chartInstance;
  c3_isLoggingEnabledHere = (c3_index >= 0);
  if (c3_isLoggingEnabledHere) {
    c3_b_table = (emlrtLocationLoggingDataType *)&c3_table[c3_index];
    c3_d = c3_b_table[0U].SimMin * 4.194304E+6;
    if (c3_d < 6.7108864E+7) {
      if (c3_d >= 0.0) {
        c3_b_u = (uint32_T)c3_d;
      } else {
        c3_b_u = 0U;
      }
    } else if (c3_d >= 6.7108864E+7) {
      c3_b_u = 67108863U;
    } else {
      c3_b_u = 0U;
    }

    c3_localMin = c3_b_u;
    c3_d1 = c3_b_table[0U].SimMax * 4.194304E+6;
    if (c3_d1 < 6.7108864E+7) {
      if (c3_d1 >= 0.0) {
        c3_u1 = (uint32_T)c3_d1;
      } else {
        c3_u1 = 0U;
      }
    } else if (c3_d1 >= 6.7108864E+7) {
      c3_u1 = 67108863U;
    } else {
      c3_u1 = 0U;
    }

    c3_localMax = c3_u1;
    c3_histTable = c3_b_table[0U].HistogramTable;

    /* Simulation Min-Max logging. */
    if (c3_in < c3_localMin) {
      c3_localMin = c3_in;
    }

    if (c3_in > c3_localMax) {
      c3_localMax = c3_in;
    }

    /* Histogram logging. */
    c3_inDouble = (real_T)c3_in * 2.384185791015625E-7;
    c3_histTable->TotalNumberOfValues++;
    if (c3_inDouble == 0.0) {
      c3_histTable->NumberOfZeros++;
    } else {
      c3_histTable->SimSum += c3_inDouble;
      if ((!muDoubleScalarIsInf(c3_inDouble)) && (!muDoubleScalarIsNaN
           (c3_inDouble))) {
        c3_significand = frexp(c3_inDouble, &c3_exponent);
        if (c3_exponent > 128) {
          c3_exponent = 128;
        }

        if (c3_exponent < -127) {
          c3_exponent = -127;
        }

        if (c3_significand < 0.0) {
          c3_histTable->NumberOfNegativeValues++;
          c3_histTable->HistogramOfNegativeValues[127 + c3_exponent]++;
        } else {
          c3_histTable->NumberOfPositiveValues++;
          c3_histTable->HistogramOfPositiveValues[127 + c3_exponent]++;
        }
      }
    }

    c3_b_table[0U].SimMin = (real_T)c3_localMin * 2.384185791015625E-7;
    c3_b_table[0U].SimMax = (real_T)c3_localMax * 2.384185791015625E-7;

    /* IsAlwaysInteger logging. */
    if ((c3_in & 4194303U) != 0U) {
      c3_b_table[0U].IsAlwaysInteger = false;
    }
  }

  return c3_in;
}

static uint16_T c3_emlrt_update_log_11(SFc3_float_modelInstanceStruct
  *chartInstance, uint16_T c3_in, emlrtLocationLoggingDataType c3_table[],
  int32_T c3_index)
{
  emlrtLocationLoggingDataType *c3_b_table;
  emlrtLocationLoggingHistogramType *c3_histTable;
  real_T c3_d;
  real_T c3_d1;
  real_T c3_inDouble;
  real_T c3_significand;
  int32_T c3_exponent;
  uint16_T c3_b_u;
  uint16_T c3_localMax;
  uint16_T c3_localMin;
  uint16_T c3_u1;
  boolean_T c3_isLoggingEnabledHere;
  (void)chartInstance;
  c3_isLoggingEnabledHere = (c3_index >= 0);
  if (c3_isLoggingEnabledHere) {
    c3_b_table = (emlrtLocationLoggingDataType *)&c3_table[c3_index];
    c3_d = c3_b_table[0U].SimMin * 1024.0;
    if (c3_d < 65536.0) {
      if (c3_d >= 0.0) {
        c3_b_u = (uint16_T)c3_d;
      } else {
        c3_b_u = 0U;
      }
    } else if (c3_d >= 65536.0) {
      c3_b_u = MAX_uint16_T;
    } else {
      c3_b_u = 0U;
    }

    c3_localMin = c3_b_u;
    c3_d1 = c3_b_table[0U].SimMax * 1024.0;
    if (c3_d1 < 65536.0) {
      if (c3_d1 >= 0.0) {
        c3_u1 = (uint16_T)c3_d1;
      } else {
        c3_u1 = 0U;
      }
    } else if (c3_d1 >= 65536.0) {
      c3_u1 = MAX_uint16_T;
    } else {
      c3_u1 = 0U;
    }

    c3_localMax = c3_u1;
    c3_histTable = c3_b_table[0U].HistogramTable;

    /* Simulation Min-Max logging. */
    if (c3_in < c3_localMin) {
      c3_localMin = c3_in;
    }

    if (c3_in > c3_localMax) {
      c3_localMax = c3_in;
    }

    /* Histogram logging. */
    c3_inDouble = (real_T)c3_in * 0.0009765625;
    c3_histTable->TotalNumberOfValues++;
    if (c3_inDouble == 0.0) {
      c3_histTable->NumberOfZeros++;
    } else {
      c3_histTable->SimSum += c3_inDouble;
      if ((!muDoubleScalarIsInf(c3_inDouble)) && (!muDoubleScalarIsNaN
           (c3_inDouble))) {
        c3_significand = frexp(c3_inDouble, &c3_exponent);
        if (c3_exponent > 128) {
          c3_exponent = 128;
        }

        if (c3_exponent < -127) {
          c3_exponent = -127;
        }

        if (c3_significand < 0.0) {
          c3_histTable->NumberOfNegativeValues++;
          c3_histTable->HistogramOfNegativeValues[127 + c3_exponent]++;
        } else {
          c3_histTable->NumberOfPositiveValues++;
          c3_histTable->HistogramOfPositiveValues[127 + c3_exponent]++;
        }
      }
    }

    c3_b_table[0U].SimMin = (real_T)c3_localMin * 0.0009765625;
    c3_b_table[0U].SimMax = (real_T)c3_localMax * 0.0009765625;

    /* IsAlwaysInteger logging. */
    if ((uint16_T)(c3_in & 1023) != 0) {
      c3_b_table[0U].IsAlwaysInteger = false;
    }
  }

  return c3_in;
}

static uint32_T c3_emlrt_update_log_12(SFc3_float_modelInstanceStruct
  *chartInstance, uint32_T c3_in, emlrtLocationLoggingDataType c3_table[],
  int32_T c3_index)
{
  emlrtLocationLoggingDataType *c3_b_table;
  emlrtLocationLoggingHistogramType *c3_histTable;
  real_T c3_d;
  real_T c3_d1;
  real_T c3_inDouble;
  real_T c3_significand;
  int32_T c3_exponent;
  uint32_T c3_b_u;
  uint32_T c3_localMax;
  uint32_T c3_localMin;
  uint32_T c3_u1;
  boolean_T c3_isLoggingEnabledHere;
  (void)chartInstance;
  c3_isLoggingEnabledHere = (c3_index >= 0);
  if (c3_isLoggingEnabledHere) {
    c3_b_table = (emlrtLocationLoggingDataType *)&c3_table[c3_index];
    c3_d = c3_b_table[0U].SimMin * 1.6777216E+7;
    if (c3_d < 4.294967296E+9) {
      if (c3_d >= 0.0) {
        c3_b_u = (uint32_T)c3_d;
      } else {
        c3_b_u = 0U;
      }
    } else if (c3_d >= 4.294967296E+9) {
      c3_b_u = MAX_uint32_T;
    } else {
      c3_b_u = 0U;
    }

    c3_localMin = c3_b_u;
    c3_d1 = c3_b_table[0U].SimMax * 1.6777216E+7;
    if (c3_d1 < 4.294967296E+9) {
      if (c3_d1 >= 0.0) {
        c3_u1 = (uint32_T)c3_d1;
      } else {
        c3_u1 = 0U;
      }
    } else if (c3_d1 >= 4.294967296E+9) {
      c3_u1 = MAX_uint32_T;
    } else {
      c3_u1 = 0U;
    }

    c3_localMax = c3_u1;
    c3_histTable = c3_b_table[0U].HistogramTable;

    /* Simulation Min-Max logging. */
    if (c3_in < c3_localMin) {
      c3_localMin = c3_in;
    }

    if (c3_in > c3_localMax) {
      c3_localMax = c3_in;
    }

    /* Histogram logging. */
    c3_inDouble = (real_T)c3_in * 5.9604644775390625E-8;
    c3_histTable->TotalNumberOfValues++;
    if (c3_inDouble == 0.0) {
      c3_histTable->NumberOfZeros++;
    } else {
      c3_histTable->SimSum += c3_inDouble;
      if ((!muDoubleScalarIsInf(c3_inDouble)) && (!muDoubleScalarIsNaN
           (c3_inDouble))) {
        c3_significand = frexp(c3_inDouble, &c3_exponent);
        if (c3_exponent > 128) {
          c3_exponent = 128;
        }

        if (c3_exponent < -127) {
          c3_exponent = -127;
        }

        if (c3_significand < 0.0) {
          c3_histTable->NumberOfNegativeValues++;
          c3_histTable->HistogramOfNegativeValues[127 + c3_exponent]++;
        } else {
          c3_histTable->NumberOfPositiveValues++;
          c3_histTable->HistogramOfPositiveValues[127 + c3_exponent]++;
        }
      }
    }

    c3_b_table[0U].SimMin = (real_T)c3_localMin * 5.9604644775390625E-8;
    c3_b_table[0U].SimMax = (real_T)c3_localMax * 5.9604644775390625E-8;

    /* IsAlwaysInteger logging. */
    if ((c3_in & 16777215U) != 0U) {
      c3_b_table[0U].IsAlwaysInteger = false;
    }
  }

  return c3_in;
}

static uint8_T c3_emlrt_update_log_13(SFc3_float_modelInstanceStruct
  *chartInstance, uint8_T c3_in, emlrtLocationLoggingDataType c3_table[],
  int32_T c3_index)
{
  emlrtLocationLoggingDataType *c3_b_table;
  emlrtLocationLoggingHistogramType *c3_histTable;
  real_T c3_d;
  real_T c3_d1;
  real_T c3_inDouble;
  real_T c3_significand;
  int32_T c3_exponent;
  uint8_T c3_b_u;
  uint8_T c3_localMax;
  uint8_T c3_localMin;
  uint8_T c3_u1;
  boolean_T c3_isLoggingEnabledHere;
  (void)chartInstance;
  c3_isLoggingEnabledHere = (c3_index >= 0);
  if (c3_isLoggingEnabledHere) {
    c3_b_table = (emlrtLocationLoggingDataType *)&c3_table[c3_index];
    c3_d = c3_b_table[0U].SimMin * 1024.0;
    if (c3_d < 256.0) {
      if (c3_d >= 0.0) {
        c3_b_u = (uint8_T)c3_d;
      } else {
        c3_b_u = 0U;
      }
    } else if (c3_d >= 256.0) {
      c3_b_u = MAX_uint8_T;
    } else {
      c3_b_u = 0U;
    }

    c3_localMin = c3_b_u;
    c3_d1 = c3_b_table[0U].SimMax * 1024.0;
    if (c3_d1 < 256.0) {
      if (c3_d1 >= 0.0) {
        c3_u1 = (uint8_T)c3_d1;
      } else {
        c3_u1 = 0U;
      }
    } else if (c3_d1 >= 256.0) {
      c3_u1 = MAX_uint8_T;
    } else {
      c3_u1 = 0U;
    }

    c3_localMax = c3_u1;
    c3_histTable = c3_b_table[0U].HistogramTable;

    /* Simulation Min-Max logging. */
    if (c3_in < c3_localMin) {
      c3_localMin = c3_in;
    }

    if (c3_in > c3_localMax) {
      c3_localMax = c3_in;
    }

    /* Histogram logging. */
    c3_inDouble = (real_T)c3_in * 0.0009765625;
    c3_histTable->TotalNumberOfValues++;
    if (c3_inDouble == 0.0) {
      c3_histTable->NumberOfZeros++;
    } else {
      c3_histTable->SimSum += c3_inDouble;
      if ((!muDoubleScalarIsInf(c3_inDouble)) && (!muDoubleScalarIsNaN
           (c3_inDouble))) {
        c3_significand = frexp(c3_inDouble, &c3_exponent);
        if (c3_exponent > 128) {
          c3_exponent = 128;
        }

        if (c3_exponent < -127) {
          c3_exponent = -127;
        }

        if (c3_significand < 0.0) {
          c3_histTable->NumberOfNegativeValues++;
          c3_histTable->HistogramOfNegativeValues[127 + c3_exponent]++;
        } else {
          c3_histTable->NumberOfPositiveValues++;
          c3_histTable->HistogramOfPositiveValues[127 + c3_exponent]++;
        }
      }
    }

    c3_b_table[0U].SimMin = (real_T)c3_localMin * 0.0009765625;
    c3_b_table[0U].SimMax = (real_T)c3_localMax * 0.0009765625;

    /* IsAlwaysInteger logging. */
    if ((uint8_T)(c3_in & MAX_uint8_T) != 0) {
      c3_b_table[0U].IsAlwaysInteger = false;
    }
  }

  return c3_in;
}

static real_T c3_emlrt_update_log_14(SFc3_float_modelInstanceStruct
  *chartInstance, real_T c3_in, emlrtLocationLoggingDataType c3_table[], int32_T
  c3_index)
{
  emlrtLocationLoggingDataType *c3_b_table;
  emlrtLocationLoggingHistogramType *c3_histTable;
  real_T c3_inDouble;
  real_T c3_localMax;
  real_T c3_localMin;
  real_T c3_significand;
  int32_T c3_exponent;
  boolean_T c3_isLoggingEnabledHere;
  (void)chartInstance;
  c3_isLoggingEnabledHere = (c3_index >= 0);
  if (c3_isLoggingEnabledHere) {
    c3_b_table = (emlrtLocationLoggingDataType *)&c3_table[c3_index];
    c3_localMin = c3_b_table[0U].SimMin;
    c3_localMax = c3_b_table[0U].SimMax;
    c3_histTable = c3_b_table[0U].HistogramTable;

    /* Simulation Min-Max logging. */
    if (c3_in < c3_localMin) {
      c3_localMin = c3_in;
    }

    if (c3_in > c3_localMax) {
      c3_localMax = c3_in;
    }

    /* Histogram logging. */
    c3_inDouble = c3_in;
    c3_histTable->TotalNumberOfValues++;
    if (c3_inDouble == 0.0) {
      c3_histTable->NumberOfZeros++;
    } else {
      c3_histTable->SimSum += c3_inDouble;
      if ((!muDoubleScalarIsInf(c3_inDouble)) && (!muDoubleScalarIsNaN
           (c3_inDouble))) {
        c3_significand = frexp(c3_inDouble, &c3_exponent);
        if (c3_exponent > 128) {
          c3_exponent = 128;
        }

        if (c3_exponent < -127) {
          c3_exponent = -127;
        }

        if (c3_significand < 0.0) {
          c3_histTable->NumberOfNegativeValues++;
          c3_histTable->HistogramOfNegativeValues[127 + c3_exponent]++;
        } else {
          c3_histTable->NumberOfPositiveValues++;
          c3_histTable->HistogramOfPositiveValues[127 + c3_exponent]++;
        }
      }
    }

    c3_b_table[0U].SimMin = c3_localMin;
    c3_b_table[0U].SimMax = c3_localMax;

    /* IsAlwaysInteger logging. */
    if (c3_in != muDoubleScalarFloor(c3_in)) {
      c3_b_table[0U].IsAlwaysInteger = false;
    }
  }

  return c3_in;
}

static boolean_T c3_emlrt_update_log_15(SFc3_float_modelInstanceStruct
  *chartInstance, boolean_T c3_in, emlrtLocationLoggingDataType c3_table[],
  int32_T c3_index)
{
  emlrtLocationLoggingDataType *c3_b_table;
  emlrtLocationLoggingHistogramType *c3_histTable;
  real_T c3_inDouble;
  real_T c3_significand;
  int32_T c3_exponent;
  boolean_T c3_isLoggingEnabledHere;
  boolean_T c3_localMax;
  boolean_T c3_localMin;
  (void)chartInstance;
  c3_isLoggingEnabledHere = (c3_index >= 0);
  if (c3_isLoggingEnabledHere) {
    c3_b_table = (emlrtLocationLoggingDataType *)&c3_table[c3_index];
    c3_localMin = (c3_b_table[0U].SimMin > 0.0);
    c3_localMax = (c3_b_table[0U].SimMax > 0.0);
    c3_histTable = c3_b_table[0U].HistogramTable;

    /* Simulation Min-Max logging. */
    if ((int32_T)c3_in < (int32_T)c3_localMin) {
      c3_localMin = c3_in;
    }

    if ((int32_T)c3_in > (int32_T)c3_localMax) {
      c3_localMax = c3_in;
    }

    /* Histogram logging. */
    c3_inDouble = (real_T)c3_in;
    c3_histTable->TotalNumberOfValues++;
    if (c3_inDouble == 0.0) {
      c3_histTable->NumberOfZeros++;
    } else {
      c3_histTable->SimSum += c3_inDouble;
      if ((!muDoubleScalarIsInf(c3_inDouble)) && (!muDoubleScalarIsNaN
           (c3_inDouble))) {
        c3_significand = frexp(c3_inDouble, &c3_exponent);
        if (c3_exponent > 128) {
          c3_exponent = 128;
        }

        if (c3_exponent < -127) {
          c3_exponent = -127;
        }

        if (c3_significand < 0.0) {
          c3_histTable->NumberOfNegativeValues++;
          c3_histTable->HistogramOfNegativeValues[127 + c3_exponent]++;
        } else {
          c3_histTable->NumberOfPositiveValues++;
          c3_histTable->HistogramOfPositiveValues[127 + c3_exponent]++;
        }
      }
    }

    c3_b_table[0U].SimMin = (real_T)c3_localMin;
    c3_b_table[0U].SimMax = (real_T)c3_localMax;

    /* IsAlwaysInteger logging. */
    /* Data type is always integer. */
  }

  return c3_in;
}

static uint16_T c3_emlrt_update_log_16(SFc3_float_modelInstanceStruct
  *chartInstance, uint16_T c3_in, emlrtLocationLoggingDataType c3_table[],
  int32_T c3_index)
{
  emlrtLocationLoggingDataType *c3_b_table;
  emlrtLocationLoggingHistogramType *c3_histTable;
  real_T c3_d;
  real_T c3_d1;
  real_T c3_inDouble;
  real_T c3_significand;
  int32_T c3_exponent;
  uint16_T c3_b_u;
  uint16_T c3_localMax;
  uint16_T c3_localMin;
  uint16_T c3_u1;
  boolean_T c3_isLoggingEnabledHere;
  (void)chartInstance;
  c3_isLoggingEnabledHere = (c3_index >= 0);
  if (c3_isLoggingEnabledHere) {
    c3_b_table = (emlrtLocationLoggingDataType *)&c3_table[c3_index];
    c3_d = c3_b_table[0U].SimMin * 131072.0;
    if (c3_d < 65536.0) {
      if (c3_d >= 0.0) {
        c3_b_u = (uint16_T)c3_d;
      } else {
        c3_b_u = 0U;
      }
    } else if (c3_d >= 65536.0) {
      c3_b_u = MAX_uint16_T;
    } else {
      c3_b_u = 0U;
    }

    c3_localMin = c3_b_u;
    c3_d1 = c3_b_table[0U].SimMax * 131072.0;
    if (c3_d1 < 65536.0) {
      if (c3_d1 >= 0.0) {
        c3_u1 = (uint16_T)c3_d1;
      } else {
        c3_u1 = 0U;
      }
    } else if (c3_d1 >= 65536.0) {
      c3_u1 = MAX_uint16_T;
    } else {
      c3_u1 = 0U;
    }

    c3_localMax = c3_u1;
    c3_histTable = c3_b_table[0U].HistogramTable;

    /* Simulation Min-Max logging. */
    if (c3_in < c3_localMin) {
      c3_localMin = c3_in;
    }

    if (c3_in > c3_localMax) {
      c3_localMax = c3_in;
    }

    /* Histogram logging. */
    c3_inDouble = (real_T)c3_in * 7.62939453125E-6;
    c3_histTable->TotalNumberOfValues++;
    if (c3_inDouble == 0.0) {
      c3_histTable->NumberOfZeros++;
    } else {
      c3_histTable->SimSum += c3_inDouble;
      if ((!muDoubleScalarIsInf(c3_inDouble)) && (!muDoubleScalarIsNaN
           (c3_inDouble))) {
        c3_significand = frexp(c3_inDouble, &c3_exponent);
        if (c3_exponent > 128) {
          c3_exponent = 128;
        }

        if (c3_exponent < -127) {
          c3_exponent = -127;
        }

        if (c3_significand < 0.0) {
          c3_histTable->NumberOfNegativeValues++;
          c3_histTable->HistogramOfNegativeValues[127 + c3_exponent]++;
        } else {
          c3_histTable->NumberOfPositiveValues++;
          c3_histTable->HistogramOfPositiveValues[127 + c3_exponent]++;
        }
      }
    }

    c3_b_table[0U].SimMin = (real_T)c3_localMin * 7.62939453125E-6;
    c3_b_table[0U].SimMax = (real_T)c3_localMax * 7.62939453125E-6;

    /* IsAlwaysInteger logging. */
    if ((uint16_T)(c3_in & MAX_uint16_T) != 0) {
      c3_b_table[0U].IsAlwaysInteger = false;
    }
  }

  return c3_in;
}

static void c3_emlrtInitVarDataTables(SFc3_float_modelInstanceStruct
  *chartInstance, emlrtLocationLoggingDataType c3_dataTables[26],
  emlrtLocationLoggingHistogramType c3_histTables[26])
{
  int32_T c3_i;
  int32_T c3_iH;
  (void)chartInstance;
  for (c3_i = 0; c3_i < 26; c3_i++) {
    c3_dataTables[c3_i].SimMin = rtInf;
    c3_dataTables[c3_i].SimMax = rtMinusInf;
    c3_dataTables[c3_i].OverflowWraps = 0;
    c3_dataTables[c3_i].Saturations = 0;
    c3_dataTables[c3_i].IsAlwaysInteger = true;
    c3_dataTables[c3_i].HistogramTable = &c3_histTables[c3_i];
    c3_histTables[c3_i].NumberOfZeros = 0.0;
    c3_histTables[c3_i].NumberOfPositiveValues = 0.0;
    c3_histTables[c3_i].NumberOfNegativeValues = 0.0;
    c3_histTables[c3_i].TotalNumberOfValues = 0.0;
    c3_histTables[c3_i].SimSum = 0.0;
    for (c3_iH = 0; c3_iH < 256; c3_iH++) {
      c3_histTables[c3_i].HistogramOfPositiveValues[c3_iH] = 0.0;
      c3_histTables[c3_i].HistogramOfNegativeValues[c3_iH] = 0.0;
    }
  }
}

const mxArray *sf_c3_float_model_get_eml_resolved_functions_info(void)
{
  const mxArray *c3_nameCaptureInfo = NULL;
  c3_nameCaptureInfo = NULL;
  sf_mex_assign(&c3_nameCaptureInfo, sf_mex_create("nameCaptureInfo", NULL, 0,
    0U, 1, 0U, 2, 0, 1), false);
  return c3_nameCaptureInfo;
}

static uint16_T c3_emlrt_marshallIn(SFc3_float_modelInstanceStruct
  *chartInstance, const emlrtStack *c3_sp, const mxArray *c3_nullptr, const
  char_T *c3_identifier)
{
  emlrtMsgIdentifier c3_thisId;
  uint16_T c3_b_y;
  c3_thisId.fIdentifier = (const char_T *)c3_identifier;
  c3_thisId.fParent = NULL;
  c3_thisId.bParentIsCell = false;
  c3_b_y = c3_b_emlrt_marshallIn(chartInstance, c3_sp, sf_mex_dup(c3_nullptr),
    &c3_thisId);
  sf_mex_destroy(&c3_nullptr);
  return c3_b_y;
}

static uint16_T c3_b_emlrt_marshallIn(SFc3_float_modelInstanceStruct
  *chartInstance, const emlrtStack *c3_sp, const mxArray *c3_b_u, const
  emlrtMsgIdentifier *c3_parentId)
{
  const mxArray *c3_mxFi = NULL;
  const mxArray *c3_mxInt = NULL;
  uint16_T c3_b_y;
  uint16_T c3_c_u;
  (void)chartInstance;
  sf_mex_check_fi(c3_parentId, c3_b_u, 0U, 0U, NULL, c3_eml_mx, c3_b_eml_mx);
  sf_mex_assign(&c3_mxFi, sf_mex_dup(c3_b_u), false);
  sf_mex_assign(&c3_mxInt, sf_mex_call(c3_sp, NULL, "interleavedsimulinkarray",
    1U, 1U, 14, sf_mex_dup(c3_mxFi)), false);
  sf_mex_import(c3_parentId, sf_mex_dup(c3_mxInt), &c3_c_u, 1, 5, 0U, 0, 0U, 0);
  sf_mex_destroy(&c3_mxFi);
  sf_mex_destroy(&c3_mxInt);
  c3_b_y = c3_c_u;
  sf_mex_destroy(&c3_mxFi);
  sf_mex_destroy(&c3_b_u);
  return c3_b_y;
}

static void c3_slStringInitializeDynamicBuffers(SFc3_float_modelInstanceStruct
  *chartInstance)
{
  (void)chartInstance;
}

static void c3_chart_data_browse_helper(SFc3_float_modelInstanceStruct
  *chartInstance, int32_T c3_ssIdNumber, const mxArray **c3_mxData, uint8_T
  *c3_isValueTooBig)
{
  real_T c3_d;
  uint16_T c3_b_u;
  *c3_mxData = NULL;
  *c3_mxData = NULL;
  *c3_isValueTooBig = 0U;
  switch (c3_ssIdNumber) {
   case 4U:
    sf_mex_assign(c3_mxData, sf_mex_create("mxData", *chartInstance->c3_u, 0, 1U,
      1, 0U, 2, 2048, 1), false);
    break;

   case 5U:
    c3_b_u = *chartInstance->c3_y;
    c3_d = (real_T)c3_b_u * 0.0009765625;
    sf_mex_assign(c3_mxData, sf_mex_create("mxData", &c3_d, 0, 0U, 0, 0U, 0),
                  false);
    break;
  }
}

static void c3_b_emlrt_update_log_1(SFc3_float_modelInstanceStruct
  *chartInstance, creal_T c3_in[2048], emlrtLocationLoggingDataType c3_table[],
  int32_T c3_index)
{
  emlrtLocationLoggingDataType *c3_b_table;
  emlrtLocationLoggingHistogramType *c3_histTable;
  real_T c3_b_inDouble;
  real_T c3_b_significand;
  real_T c3_inDouble;
  real_T c3_localMax;
  real_T c3_localMin;
  real_T c3_significand;
  int32_T c3_b_exponent;
  int32_T c3_b_i;
  int32_T c3_exponent;
  int32_T c3_i;
  boolean_T c3_isLoggingEnabledHere;
  (void)chartInstance;
  c3_isLoggingEnabledHere = (c3_index >= 0);
  if (c3_isLoggingEnabledHere) {
    c3_b_table = (emlrtLocationLoggingDataType *)&c3_table[c3_index];
    c3_localMin = c3_b_table[0U].SimMin;
    c3_localMax = c3_b_table[0U].SimMax;
    c3_histTable = c3_b_table[0U].HistogramTable;
    for (c3_i = 0; c3_i < 2048; c3_i++) {
      /* Simulation Min-Max logging. */
      if (c3_in[c3_i].re < c3_localMin) {
        c3_localMin = c3_in[c3_i].re;
      }

      if (c3_in[c3_i].re > c3_localMax) {
        c3_localMax = c3_in[c3_i].re;
      }

      if (c3_in[c3_i].im < c3_localMin) {
        c3_localMin = c3_in[c3_i].im;
      }

      if (c3_in[c3_i].im > c3_localMax) {
        c3_localMax = c3_in[c3_i].im;
      }

      /* Histogram logging. */
      c3_inDouble = c3_in[c3_i].re;
      c3_histTable->TotalNumberOfValues++;
      if (c3_inDouble == 0.0) {
        c3_histTable->NumberOfZeros++;
      } else {
        c3_histTable->SimSum += c3_inDouble;
        if ((!muDoubleScalarIsInf(c3_inDouble)) && (!muDoubleScalarIsNaN
             (c3_inDouble))) {
          c3_significand = frexp(c3_inDouble, &c3_exponent);
          if (c3_exponent > 128) {
            c3_exponent = 128;
          }

          if (c3_exponent < -127) {
            c3_exponent = -127;
          }

          if (c3_significand < 0.0) {
            c3_histTable->NumberOfNegativeValues++;
            c3_histTable->HistogramOfNegativeValues[127 + c3_exponent]++;
          } else {
            c3_histTable->NumberOfPositiveValues++;
            c3_histTable->HistogramOfPositiveValues[127 + c3_exponent]++;
          }
        }
      }

      c3_b_inDouble = c3_in[c3_i].im;
      c3_histTable->TotalNumberOfValues++;
      if (c3_b_inDouble == 0.0) {
        c3_histTable->NumberOfZeros++;
      } else {
        c3_histTable->SimSum += c3_b_inDouble;
        if ((!muDoubleScalarIsInf(c3_b_inDouble)) && (!muDoubleScalarIsNaN
             (c3_b_inDouble))) {
          c3_b_significand = frexp(c3_b_inDouble, &c3_b_exponent);
          if (c3_b_exponent > 128) {
            c3_b_exponent = 128;
          }

          if (c3_b_exponent < -127) {
            c3_b_exponent = -127;
          }

          if (c3_b_significand < 0.0) {
            c3_histTable->NumberOfNegativeValues++;
            c3_histTable->HistogramOfNegativeValues[127 + c3_b_exponent]++;
          } else {
            c3_histTable->NumberOfPositiveValues++;
            c3_histTable->HistogramOfPositiveValues[127 + c3_b_exponent]++;
          }
        }
      }
    }

    c3_b_table[0U].SimMin = c3_localMin;
    c3_b_table[0U].SimMax = c3_localMax;

    /* IsAlwaysInteger logging. */
    c3_b_i = 0;
    while (c3_b_table[0U].IsAlwaysInteger && (c3_b_i < 2048)) {
      if ((c3_in[c3_b_i].re != muDoubleScalarFloor(c3_in[c3_b_i].re)) ||
          (c3_in[c3_b_i].im != muDoubleScalarFloor(c3_in[c3_b_i].im))) {
        c3_b_table[0U].IsAlwaysInteger = false;
      }

      c3_b_i++;
    }
  }
}

static void c3_b_emlrt_update_log_2(SFc3_float_modelInstanceStruct
  *chartInstance, cint16_T c3_in[2048], emlrtLocationLoggingDataType c3_table[],
  int32_T c3_index)
{
  emlrtLocationLoggingDataType *c3_b_table;
  emlrtLocationLoggingHistogramType *c3_histTable;
  real_T c3_b_inDouble;
  real_T c3_b_significand;
  real_T c3_d;
  real_T c3_d1;
  real_T c3_inDouble;
  real_T c3_significand;
  int32_T c3_b_exponent;
  int32_T c3_b_i;
  int32_T c3_c_i;
  int32_T c3_exponent;
  int16_T c3_i;
  int16_T c3_i1;
  int16_T c3_localMax;
  int16_T c3_localMin;
  boolean_T c3_isLoggingEnabledHere;
  (void)chartInstance;
  c3_isLoggingEnabledHere = (c3_index >= 0);
  if (c3_isLoggingEnabledHere) {
    c3_b_table = (emlrtLocationLoggingDataType *)&c3_table[c3_index];
    c3_d = muDoubleScalarFloor(c3_b_table[0U].SimMin * 65536.0);
    if (c3_d < 32768.0) {
      if (c3_d >= -32768.0) {
        c3_i = (int16_T)c3_d;
      } else {
        c3_i = MIN_int16_T;
      }
    } else if (c3_d >= 32768.0) {
      c3_i = MAX_int16_T;
    } else {
      c3_i = 0;
    }

    c3_localMin = c3_i;
    c3_d1 = muDoubleScalarFloor(c3_b_table[0U].SimMax * 65536.0);
    if (c3_d1 < 32768.0) {
      if (c3_d1 >= -32768.0) {
        c3_i1 = (int16_T)c3_d1;
      } else {
        c3_i1 = MIN_int16_T;
      }
    } else if (c3_d1 >= 32768.0) {
      c3_i1 = MAX_int16_T;
    } else {
      c3_i1 = 0;
    }

    c3_localMax = c3_i1;
    c3_histTable = c3_b_table[0U].HistogramTable;
    for (c3_b_i = 0; c3_b_i < 2048; c3_b_i++) {
      /* Simulation Min-Max logging. */
      if (c3_in[c3_b_i].re < c3_localMin) {
        c3_localMin = c3_in[c3_b_i].re;
      }

      if (c3_in[c3_b_i].re > c3_localMax) {
        c3_localMax = c3_in[c3_b_i].re;
      }

      if (c3_in[c3_b_i].im < c3_localMin) {
        c3_localMin = c3_in[c3_b_i].im;
      }

      if (c3_in[c3_b_i].im > c3_localMax) {
        c3_localMax = c3_in[c3_b_i].im;
      }

      /* Histogram logging. */
      c3_inDouble = (real_T)c3_in[c3_b_i].re * 1.52587890625E-5;
      c3_histTable->TotalNumberOfValues++;
      if (c3_inDouble == 0.0) {
        c3_histTable->NumberOfZeros++;
      } else {
        c3_histTable->SimSum += c3_inDouble;
        if ((!muDoubleScalarIsInf(c3_inDouble)) && (!muDoubleScalarIsNaN
             (c3_inDouble))) {
          c3_significand = frexp(c3_inDouble, &c3_exponent);
          if (c3_exponent > 128) {
            c3_exponent = 128;
          }

          if (c3_exponent < -127) {
            c3_exponent = -127;
          }

          if (c3_significand < 0.0) {
            c3_histTable->NumberOfNegativeValues++;
            c3_histTable->HistogramOfNegativeValues[127 + c3_exponent]++;
          } else {
            c3_histTable->NumberOfPositiveValues++;
            c3_histTable->HistogramOfPositiveValues[127 + c3_exponent]++;
          }
        }
      }

      c3_b_inDouble = (real_T)c3_in[c3_b_i].im * 1.52587890625E-5;
      c3_histTable->TotalNumberOfValues++;
      if (c3_b_inDouble == 0.0) {
        c3_histTable->NumberOfZeros++;
      } else {
        c3_histTable->SimSum += c3_b_inDouble;
        if ((!muDoubleScalarIsInf(c3_b_inDouble)) && (!muDoubleScalarIsNaN
             (c3_b_inDouble))) {
          c3_b_significand = frexp(c3_b_inDouble, &c3_b_exponent);
          if (c3_b_exponent > 128) {
            c3_b_exponent = 128;
          }

          if (c3_b_exponent < -127) {
            c3_b_exponent = -127;
          }

          if (c3_b_significand < 0.0) {
            c3_histTable->NumberOfNegativeValues++;
            c3_histTable->HistogramOfNegativeValues[127 + c3_b_exponent]++;
          } else {
            c3_histTable->NumberOfPositiveValues++;
            c3_histTable->HistogramOfPositiveValues[127 + c3_b_exponent]++;
          }
        }
      }
    }

    c3_b_table[0U].SimMin = (real_T)c3_localMin * 1.52587890625E-5;
    c3_b_table[0U].SimMax = (real_T)c3_localMax * 1.52587890625E-5;

    /* IsAlwaysInteger logging. */
    c3_c_i = 0;
    while (c3_b_table[0U].IsAlwaysInteger && (c3_c_i < 2048)) {
      if (((uint16_T)((uint16_T)c3_in[c3_c_i].re & MAX_uint16_T) != 0) ||
          ((uint16_T)((uint16_T)c3_in[c3_c_i].im & MAX_uint16_T) != 0)) {
        c3_b_table[0U].IsAlwaysInteger = false;
      }

      c3_c_i++;
    }
  }
}

static void c3_b_emlrt_update_log_4(SFc3_float_modelInstanceStruct
  *chartInstance, uint16_T c3_in[2048], emlrtLocationLoggingDataType c3_table[],
  int32_T c3_index)
{
  emlrtLocationLoggingDataType *c3_b_table;
  emlrtLocationLoggingHistogramType *c3_histTable;
  real_T c3_d;
  real_T c3_d1;
  real_T c3_inDouble;
  real_T c3_significand;
  int32_T c3_b_i;
  int32_T c3_exponent;
  int32_T c3_i;
  uint16_T c3_b_u;
  uint16_T c3_localMax;
  uint16_T c3_localMin;
  uint16_T c3_u1;
  boolean_T c3_isLoggingEnabledHere;
  (void)chartInstance;
  c3_isLoggingEnabledHere = (c3_index >= 0);
  if (c3_isLoggingEnabledHere) {
    c3_b_table = (emlrtLocationLoggingDataType *)&c3_table[c3_index];
    c3_d = c3_b_table[0U].SimMin * 131072.0;
    if (c3_d < 65536.0) {
      if (c3_d >= 0.0) {
        c3_b_u = (uint16_T)c3_d;
      } else {
        c3_b_u = 0U;
      }
    } else if (c3_d >= 65536.0) {
      c3_b_u = MAX_uint16_T;
    } else {
      c3_b_u = 0U;
    }

    c3_localMin = c3_b_u;
    c3_d1 = c3_b_table[0U].SimMax * 131072.0;
    if (c3_d1 < 65536.0) {
      if (c3_d1 >= 0.0) {
        c3_u1 = (uint16_T)c3_d1;
      } else {
        c3_u1 = 0U;
      }
    } else if (c3_d1 >= 65536.0) {
      c3_u1 = MAX_uint16_T;
    } else {
      c3_u1 = 0U;
    }

    c3_localMax = c3_u1;
    c3_histTable = c3_b_table[0U].HistogramTable;
    for (c3_i = 0; c3_i < 2048; c3_i++) {
      /* Simulation Min-Max logging. */
      if (c3_in[c3_i] < c3_localMin) {
        c3_localMin = c3_in[c3_i];
      }

      if (c3_in[c3_i] > c3_localMax) {
        c3_localMax = c3_in[c3_i];
      }

      /* Histogram logging. */
      c3_inDouble = (real_T)c3_in[c3_i] * 7.62939453125E-6;
      c3_histTable->TotalNumberOfValues++;
      if (c3_inDouble == 0.0) {
        c3_histTable->NumberOfZeros++;
      } else {
        c3_histTable->SimSum += c3_inDouble;
        if ((!muDoubleScalarIsInf(c3_inDouble)) && (!muDoubleScalarIsNaN
             (c3_inDouble))) {
          c3_significand = frexp(c3_inDouble, &c3_exponent);
          if (c3_exponent > 128) {
            c3_exponent = 128;
          }

          if (c3_exponent < -127) {
            c3_exponent = -127;
          }

          if (c3_significand < 0.0) {
            c3_histTable->NumberOfNegativeValues++;
            c3_histTable->HistogramOfNegativeValues[127 + c3_exponent]++;
          } else {
            c3_histTable->NumberOfPositiveValues++;
            c3_histTable->HistogramOfPositiveValues[127 + c3_exponent]++;
          }
        }
      }
    }

    c3_b_table[0U].SimMin = (real_T)c3_localMin * 7.62939453125E-6;
    c3_b_table[0U].SimMax = (real_T)c3_localMax * 7.62939453125E-6;

    /* IsAlwaysInteger logging. */
    c3_b_i = 0;
    while (c3_b_table[0U].IsAlwaysInteger && (c3_b_i < 2048)) {
      if ((uint16_T)(c3_in[c3_b_i] & MAX_uint16_T) != 0) {
        c3_b_table[0U].IsAlwaysInteger = false;
      }

      c3_b_i++;
    }
  }
}

static void c3_b_emlrt_update_log_5(SFc3_float_modelInstanceStruct
  *chartInstance, int16_T c3_in[2048], emlrtLocationLoggingDataType c3_table[],
  int32_T c3_index)
{
  emlrtLocationLoggingDataType *c3_b_table;
  emlrtLocationLoggingHistogramType *c3_histTable;
  real_T c3_d;
  real_T c3_d1;
  real_T c3_inDouble;
  real_T c3_significand;
  int32_T c3_b_i;
  int32_T c3_c_i;
  int32_T c3_exponent;
  int16_T c3_i;
  int16_T c3_i1;
  int16_T c3_localMax;
  int16_T c3_localMin;
  boolean_T c3_isLoggingEnabledHere;
  (void)chartInstance;
  c3_isLoggingEnabledHere = (c3_index >= 0);
  if (c3_isLoggingEnabledHere) {
    c3_b_table = (emlrtLocationLoggingDataType *)&c3_table[c3_index];
    c3_d = muDoubleScalarFloor(c3_b_table[0U].SimMin * 65536.0);
    if (c3_d < 32768.0) {
      if (c3_d >= -32768.0) {
        c3_i = (int16_T)c3_d;
      } else {
        c3_i = MIN_int16_T;
      }
    } else if (c3_d >= 32768.0) {
      c3_i = MAX_int16_T;
    } else {
      c3_i = 0;
    }

    c3_localMin = c3_i;
    c3_d1 = muDoubleScalarFloor(c3_b_table[0U].SimMax * 65536.0);
    if (c3_d1 < 32768.0) {
      if (c3_d1 >= -32768.0) {
        c3_i1 = (int16_T)c3_d1;
      } else {
        c3_i1 = MIN_int16_T;
      }
    } else if (c3_d1 >= 32768.0) {
      c3_i1 = MAX_int16_T;
    } else {
      c3_i1 = 0;
    }

    c3_localMax = c3_i1;
    c3_histTable = c3_b_table[0U].HistogramTable;
    for (c3_b_i = 0; c3_b_i < 2048; c3_b_i++) {
      /* Simulation Min-Max logging. */
      if (c3_in[c3_b_i] < c3_localMin) {
        c3_localMin = c3_in[c3_b_i];
      }

      if (c3_in[c3_b_i] > c3_localMax) {
        c3_localMax = c3_in[c3_b_i];
      }

      /* Histogram logging. */
      c3_inDouble = (real_T)c3_in[c3_b_i] * 1.52587890625E-5;
      c3_histTable->TotalNumberOfValues++;
      if (c3_inDouble == 0.0) {
        c3_histTable->NumberOfZeros++;
      } else {
        c3_histTable->SimSum += c3_inDouble;
        if ((!muDoubleScalarIsInf(c3_inDouble)) && (!muDoubleScalarIsNaN
             (c3_inDouble))) {
          c3_significand = frexp(c3_inDouble, &c3_exponent);
          if (c3_exponent > 128) {
            c3_exponent = 128;
          }

          if (c3_exponent < -127) {
            c3_exponent = -127;
          }

          if (c3_significand < 0.0) {
            c3_histTable->NumberOfNegativeValues++;
            c3_histTable->HistogramOfNegativeValues[127 + c3_exponent]++;
          } else {
            c3_histTable->NumberOfPositiveValues++;
            c3_histTable->HistogramOfPositiveValues[127 + c3_exponent]++;
          }
        }
      }
    }

    c3_b_table[0U].SimMin = (real_T)c3_localMin * 1.52587890625E-5;
    c3_b_table[0U].SimMax = (real_T)c3_localMax * 1.52587890625E-5;

    /* IsAlwaysInteger logging. */
    c3_c_i = 0;
    while (c3_b_table[0U].IsAlwaysInteger && (c3_c_i < 2048)) {
      if ((uint16_T)((uint16_T)c3_in[c3_c_i] & MAX_uint16_T) != 0) {
        c3_b_table[0U].IsAlwaysInteger = false;
      }

      c3_c_i++;
    }
  }
}

static void c3_b_emlrt_update_log_7(SFc3_float_modelInstanceStruct
  *chartInstance, uint16_T c3_in[1015], emlrtLocationLoggingDataType c3_table[],
  int32_T c3_index)
{
  emlrtLocationLoggingDataType *c3_b_table;
  emlrtLocationLoggingHistogramType *c3_histTable;
  real_T c3_d;
  real_T c3_d1;
  real_T c3_inDouble;
  real_T c3_significand;
  int32_T c3_b_i;
  int32_T c3_exponent;
  int32_T c3_i;
  uint16_T c3_b_u;
  uint16_T c3_localMax;
  uint16_T c3_localMin;
  uint16_T c3_u1;
  boolean_T c3_isLoggingEnabledHere;
  (void)chartInstance;
  c3_isLoggingEnabledHere = (c3_index >= 0);
  if (c3_isLoggingEnabledHere) {
    c3_b_table = (emlrtLocationLoggingDataType *)&c3_table[c3_index];
    c3_d = c3_b_table[0U].SimMin * 4.194304E+6;
    if (c3_d < 65536.0) {
      if (c3_d >= 0.0) {
        c3_b_u = (uint16_T)c3_d;
      } else {
        c3_b_u = 0U;
      }
    } else if (c3_d >= 65536.0) {
      c3_b_u = MAX_uint16_T;
    } else {
      c3_b_u = 0U;
    }

    c3_localMin = c3_b_u;
    c3_d1 = c3_b_table[0U].SimMax * 4.194304E+6;
    if (c3_d1 < 65536.0) {
      if (c3_d1 >= 0.0) {
        c3_u1 = (uint16_T)c3_d1;
      } else {
        c3_u1 = 0U;
      }
    } else if (c3_d1 >= 65536.0) {
      c3_u1 = MAX_uint16_T;
    } else {
      c3_u1 = 0U;
    }

    c3_localMax = c3_u1;
    c3_histTable = c3_b_table[0U].HistogramTable;
    for (c3_i = 0; c3_i < 1015; c3_i++) {
      /* Simulation Min-Max logging. */
      if (c3_in[c3_i] < c3_localMin) {
        c3_localMin = c3_in[c3_i];
      }

      if (c3_in[c3_i] > c3_localMax) {
        c3_localMax = c3_in[c3_i];
      }

      /* Histogram logging. */
      c3_inDouble = (real_T)c3_in[c3_i] * 2.384185791015625E-7;
      c3_histTable->TotalNumberOfValues++;
      if (c3_inDouble == 0.0) {
        c3_histTable->NumberOfZeros++;
      } else {
        c3_histTable->SimSum += c3_inDouble;
        if ((!muDoubleScalarIsInf(c3_inDouble)) && (!muDoubleScalarIsNaN
             (c3_inDouble))) {
          c3_significand = frexp(c3_inDouble, &c3_exponent);
          if (c3_exponent > 128) {
            c3_exponent = 128;
          }

          if (c3_exponent < -127) {
            c3_exponent = -127;
          }

          if (c3_significand < 0.0) {
            c3_histTable->NumberOfNegativeValues++;
            c3_histTable->HistogramOfNegativeValues[127 + c3_exponent]++;
          } else {
            c3_histTable->NumberOfPositiveValues++;
            c3_histTable->HistogramOfPositiveValues[127 + c3_exponent]++;
          }
        }
      }
    }

    c3_b_table[0U].SimMin = (real_T)c3_localMin * 2.384185791015625E-7;
    c3_b_table[0U].SimMax = (real_T)c3_localMax * 2.384185791015625E-7;

    /* IsAlwaysInteger logging. */
    c3_b_i = 0;
    while (c3_b_table[0U].IsAlwaysInteger && (c3_b_i < 1015)) {
      if ((uint16_T)(c3_in[c3_b_i] & MAX_uint16_T) != 0) {
        c3_b_table[0U].IsAlwaysInteger = false;
      }

      c3_b_i++;
    }
  }
}

static void c3_b_emlrt_update_log_8(SFc3_float_modelInstanceStruct
  *chartInstance, uint32_T c3_in[1015], emlrtLocationLoggingDataType c3_table[],
  int32_T c3_index)
{
  emlrtLocationLoggingDataType *c3_b_table;
  emlrtLocationLoggingHistogramType *c3_histTable;
  real_T c3_d;
  real_T c3_d1;
  real_T c3_inDouble;
  real_T c3_significand;
  int32_T c3_b_i;
  int32_T c3_exponent;
  int32_T c3_i;
  uint32_T c3_b_u;
  uint32_T c3_localMax;
  uint32_T c3_localMin;
  uint32_T c3_u1;
  boolean_T c3_isLoggingEnabledHere;
  (void)chartInstance;
  c3_isLoggingEnabledHere = (c3_index >= 0);
  if (c3_isLoggingEnabledHere) {
    c3_b_table = (emlrtLocationLoggingDataType *)&c3_table[c3_index];
    c3_d = c3_b_table[0U].SimMin * 1.7179869184E+10;
    if (c3_d < 4.294967296E+9) {
      if (c3_d >= 0.0) {
        c3_b_u = (uint32_T)c3_d;
      } else {
        c3_b_u = 0U;
      }
    } else if (c3_d >= 4.294967296E+9) {
      c3_b_u = MAX_uint32_T;
    } else {
      c3_b_u = 0U;
    }

    c3_localMin = c3_b_u;
    c3_d1 = c3_b_table[0U].SimMax * 1.7179869184E+10;
    if (c3_d1 < 4.294967296E+9) {
      if (c3_d1 >= 0.0) {
        c3_u1 = (uint32_T)c3_d1;
      } else {
        c3_u1 = 0U;
      }
    } else if (c3_d1 >= 4.294967296E+9) {
      c3_u1 = MAX_uint32_T;
    } else {
      c3_u1 = 0U;
    }

    c3_localMax = c3_u1;
    c3_histTable = c3_b_table[0U].HistogramTable;
    for (c3_i = 0; c3_i < 1015; c3_i++) {
      /* Simulation Min-Max logging. */
      if (c3_in[c3_i] < c3_localMin) {
        c3_localMin = c3_in[c3_i];
      }

      if (c3_in[c3_i] > c3_localMax) {
        c3_localMax = c3_in[c3_i];
      }

      /* Histogram logging. */
      c3_inDouble = (real_T)c3_in[c3_i] * 5.8207660913467407E-11;
      c3_histTable->TotalNumberOfValues++;
      if (c3_inDouble == 0.0) {
        c3_histTable->NumberOfZeros++;
      } else {
        c3_histTable->SimSum += c3_inDouble;
        if ((!muDoubleScalarIsInf(c3_inDouble)) && (!muDoubleScalarIsNaN
             (c3_inDouble))) {
          c3_significand = frexp(c3_inDouble, &c3_exponent);
          if (c3_exponent > 128) {
            c3_exponent = 128;
          }

          if (c3_exponent < -127) {
            c3_exponent = -127;
          }

          if (c3_significand < 0.0) {
            c3_histTable->NumberOfNegativeValues++;
            c3_histTable->HistogramOfNegativeValues[127 + c3_exponent]++;
          } else {
            c3_histTable->NumberOfPositiveValues++;
            c3_histTable->HistogramOfPositiveValues[127 + c3_exponent]++;
          }
        }
      }
    }

    c3_b_table[0U].SimMin = (real_T)c3_localMin * 5.8207660913467407E-11;
    c3_b_table[0U].SimMax = (real_T)c3_localMax * 5.8207660913467407E-11;

    /* IsAlwaysInteger logging. */
    c3_b_i = 0;
    while (c3_b_table[0U].IsAlwaysInteger && (c3_b_i < 1015)) {
      if ((c3_in[c3_b_i] & MAX_uint32_T) != 0U) {
        c3_b_table[0U].IsAlwaysInteger = false;
      }

      c3_b_i++;
    }
  }
}

static uint32_T c3_divv_u32u64(SFc3_float_modelInstanceStruct *chartInstance,
  uint64_T c3_numerator, uint64_T c3_denominator, int32_T c3_EMLOvCount_src_loc,
  uint32_T c3_ssid_src_loc, int32_T c3_offset_src_loc, int32_T c3_length_src_loc)
{
  uint64_T c3_absDenominator;
  uint64_T c3_absNumerator;
  uint64_T c3_tempAbsQuotient;
  uint32_T c3_quotient;
  (void)c3_EMLOvCount_src_loc;
  if (c3_denominator == 0ULL) {
    c3_quotient = MAX_uint32_T;
    sf_data_divide_by_zero_error(chartInstance->S, c3_ssid_src_loc,
      c3_offset_src_loc, c3_length_src_loc);
  } else {
    c3_absNumerator = c3_numerator;
    c3_absDenominator = c3_denominator;
    c3_tempAbsQuotient = c3_absNumerator / c3_absDenominator;
    c3_quotient = c3__u32_u64_(chartInstance, c3_tempAbsQuotient, 0,
      c3_ssid_src_loc, c3_offset_src_loc, c3_length_src_loc);
  }

  return c3_quotient;
}

static int32_T c3__s32_minus__(SFc3_float_modelInstanceStruct *chartInstance,
  int32_T c3_b, int32_T c3_c, int32_T c3_EMLOvCount_src_loc, uint32_T
  c3_ssid_src_loc, int32_T c3_offset_src_loc, int32_T c3_length_src_loc)
{
  real_T c3_d;
  int32_T c3_PICOffset;
  int32_T c3_a;
  observerLogReadPIC(&c3_PICOffset);
  c3_a = c3_b - c3_c;
  if (((c3_b ^ c3_a) & (c3_b ^ c3_c)) < 0) {
    sf_data_overflow_error(chartInstance->S, c3_ssid_src_loc, c3_offset_src_loc,
      c3_length_src_loc);
    c3_d = 1.0;
    observerLog(c3_EMLOvCount_src_loc + c3_PICOffset, &c3_d, 1);
  }

  return c3_a;
}

static uint16_T c3__u16_u32_(SFc3_float_modelInstanceStruct *chartInstance,
  uint32_T c3_b, int32_T c3_EMLOvCount_src_loc, uint32_T c3_ssid_src_loc,
  int32_T c3_offset_src_loc, int32_T c3_length_src_loc)
{
  real_T c3_d;
  int32_T c3_PICOffset;
  uint16_T c3_a;
  observerLogReadPIC(&c3_PICOffset);
  c3_a = (uint16_T)c3_b;
  if (c3_a != c3_b) {
    sf_data_overflow_error(chartInstance->S, c3_ssid_src_loc, c3_offset_src_loc,
      c3_length_src_loc);
    c3_d = 1.0;
    observerLog(c3_EMLOvCount_src_loc + c3_PICOffset, &c3_d, 1);
  }

  return c3_a;
}

static uint64_T c3__u64_shl_s32_(SFc3_float_modelInstanceStruct *chartInstance,
  uint64_T c3_b, int32_T c3_c, int32_T c3_EMLOvCount_src_loc, uint32_T
  c3_ssid_src_loc, int32_T c3_offset_src_loc, int32_T c3_length_src_loc)
{
  real_T c3_d;
  uint64_T c3_a;
  int32_T c3_PICOffset;
  observerLogReadPIC(&c3_PICOffset);
  c3_a = c3_b << c3_c;
  if ((c3_b != c3_a >> c3_c) || ((uint32_T)c3_c > 63ULL)) {
    sf_data_overflow_error(chartInstance->S, c3_ssid_src_loc, c3_offset_src_loc,
      c3_length_src_loc);
    c3_d = 1.0;
    observerLog(c3_EMLOvCount_src_loc + c3_PICOffset, &c3_d, 1);
  }

  return c3_a;
}

static uint32_T c3__u32_s32_(SFc3_float_modelInstanceStruct *chartInstance,
  int32_T c3_b, int32_T c3_EMLOvCount_src_loc, uint32_T c3_ssid_src_loc, int32_T
  c3_offset_src_loc, int32_T c3_length_src_loc)
{
  real_T c3_d;
  int32_T c3_PICOffset;
  uint32_T c3_a;
  observerLogReadPIC(&c3_PICOffset);
  c3_a = (uint32_T)c3_b;
  if (c3_b < 0) {
    sf_data_overflow_error(chartInstance->S, c3_ssid_src_loc, c3_offset_src_loc,
      c3_length_src_loc);
    c3_d = 1.0;
    observerLog(c3_EMLOvCount_src_loc + c3_PICOffset, &c3_d, 1);
  }

  return c3_a;
}

static uint16_T c3__u16_s16_(SFc3_float_modelInstanceStruct *chartInstance,
  int16_T c3_b, int32_T c3_EMLOvCount_src_loc, uint32_T c3_ssid_src_loc, int32_T
  c3_offset_src_loc, int32_T c3_length_src_loc)
{
  real_T c3_d;
  int32_T c3_PICOffset;
  uint16_T c3_a;
  observerLogReadPIC(&c3_PICOffset);
  c3_a = (uint16_T)c3_b;
  if (c3_b < 0) {
    sf_data_overflow_error(chartInstance->S, c3_ssid_src_loc, c3_offset_src_loc,
      c3_length_src_loc);
    c3_d = 1.0;
    observerLog(c3_EMLOvCount_src_loc + c3_PICOffset, &c3_d, 1);
  }

  return c3_a;
}

static uint16_T c3__u16_shl_s32_(SFc3_float_modelInstanceStruct *chartInstance,
  uint16_T c3_b, int32_T c3_c, int32_T c3_EMLOvCount_src_loc, uint32_T
  c3_ssid_src_loc, int32_T c3_offset_src_loc, int32_T c3_length_src_loc)
{
  real_T c3_d;
  int32_T c3_PICOffset;
  uint16_T c3_a;
  observerLogReadPIC(&c3_PICOffset);
  c3_a = (uint16_T)(c3_b << c3_c);
  if ((c3_b != (uint16_T)((uint32_T)c3_a >> c3_c)) || ((uint32_T)c3_c > 15)) {
    sf_data_overflow_error(chartInstance->S, c3_ssid_src_loc, c3_offset_src_loc,
      c3_length_src_loc);
    c3_d = 1.0;
    observerLog(c3_EMLOvCount_src_loc + c3_PICOffset, &c3_d, 1);
  }

  return c3_a;
}

static uint32_T c3__u32_add__(SFc3_float_modelInstanceStruct *chartInstance,
  uint32_T c3_b, uint32_T c3_c, int32_T c3_EMLOvCount_src_loc, uint32_T
  c3_ssid_src_loc, int32_T c3_offset_src_loc, int32_T c3_length_src_loc)
{
  real_T c3_d;
  int32_T c3_PICOffset;
  uint32_T c3_a;
  observerLogReadPIC(&c3_PICOffset);
  c3_a = c3_b + c3_c;
  if (c3_a < c3_b) {
    sf_data_overflow_error(chartInstance->S, c3_ssid_src_loc, c3_offset_src_loc,
      c3_length_src_loc);
    c3_d = 1.0;
    observerLog(c3_EMLOvCount_src_loc + c3_PICOffset, &c3_d, 1);
  }

  return c3_a;
}

static uint32_T c3__u32_u64_(SFc3_float_modelInstanceStruct *chartInstance,
  uint64_T c3_b, int32_T c3_EMLOvCount_src_loc, uint32_T c3_ssid_src_loc,
  int32_T c3_offset_src_loc, int32_T c3_length_src_loc)
{
  uint32_T c3_a;
  (void)c3_EMLOvCount_src_loc;
  c3_a = (uint32_T)c3_b;
  if ((uint64_T)c3_a != c3_b) {
    sf_data_overflow_error(chartInstance->S, c3_ssid_src_loc, c3_offset_src_loc,
      c3_length_src_loc);
  }

  return c3_a;
}

static void init_dsm_address_info(SFc3_float_modelInstanceStruct *chartInstance)
{
  (void)chartInstance;
}

static void init_simulink_io_address(SFc3_float_modelInstanceStruct
  *chartInstance)
{
  chartInstance->c3_covrtInstance = (CovrtStateflowInstance *)
    sfrtGetCovrtInstance(chartInstance->S);
  chartInstance->c3_fEmlrtCtx = (void *)sfrtGetEmlrtCtx(chartInstance->S);
  chartInstance->c3_u = (creal_T (*)[2048])ssGetInputPortSignal_wrapper
    (chartInstance->S, 0);
  chartInstance->c3_y = (uint16_T *)ssGetOutputPortSignal_wrapper
    (chartInstance->S, 1);
}

#include <stdio.h>
#include <stdlib.h>
#include <string.h>

/* SFunction Glue Code */
void sf_c3_float_model_get_check_sum(mxArray *plhs[])
{
  ((real_T *)mxGetPr((plhs[0])))[0] = (real_T)(969111299U);
  ((real_T *)mxGetPr((plhs[0])))[1] = (real_T)(4225040809U);
  ((real_T *)mxGetPr((plhs[0])))[2] = (real_T)(800305949U);
  ((real_T *)mxGetPr((plhs[0])))[3] = (real_T)(3715878215U);
}

mxArray *sf_c3_float_model_third_party_uses_info(void)
{
  mxArray * mxcell3p = mxCreateCellMatrix(1,0);
  return(mxcell3p);
}

mxArray *sf_c3_float_model_jit_fallback_info(void)
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

mxArray *sf_c3_float_model_updateBuildInfo_args_info(void)
{
  mxArray *mxBIArgs = mxCreateCellMatrix(1,0);
  return mxBIArgs;
}

static const mxArray *sf_get_sim_state_info_c3_float_model(void)
{
  const char *infoFields[] = { "chartChecksum", "varInfo" };

  mxArray *mxInfo = mxCreateStructMatrix(1, 1, 2, infoFields);
  mxArray *mxVarInfo = sf_mex_decode(
    "eNpjYPT0ZQACPiCWYGRgYAPSHEDMxAABrFA+IxKGiLPAxRWAuKSyIBUkXlyU7JkCpPMSc8H8xNI"
    "Kz7y0fLD5FgwI89kImM8JFYeAD/aU6RdxAOk3QNLPQkC/AJBVCQ0XEAAALEwMtA=="
    );
  mxArray *mxChecksum = mxCreateDoubleMatrix(1, 4, mxREAL);
  sf_c3_float_model_get_check_sum(&mxChecksum);
  mxSetField(mxInfo, 0, infoFields[0], mxChecksum);
  mxSetField(mxInfo, 0, infoFields[1], mxVarInfo);
  return mxInfo;
}

static const char* sf_get_instance_specialization(void)
{
  return "sDW2RJAMjEfsTCmOKCL6qI";
}

static void sf_opaque_initialize_c3_float_model(void *chartInstanceVar)
{
  initialize_params_c3_float_model((SFc3_float_modelInstanceStruct*)
    chartInstanceVar);
  initialize_c3_float_model((SFc3_float_modelInstanceStruct*) chartInstanceVar);
}

static void sf_opaque_enable_c3_float_model(void *chartInstanceVar)
{
  enable_c3_float_model((SFc3_float_modelInstanceStruct*) chartInstanceVar);
}

static void sf_opaque_disable_c3_float_model(void *chartInstanceVar)
{
  disable_c3_float_model((SFc3_float_modelInstanceStruct*) chartInstanceVar);
}

static void sf_opaque_gateway_c3_float_model(void *chartInstanceVar)
{
  sf_gateway_c3_float_model((SFc3_float_modelInstanceStruct*) chartInstanceVar);
}

static const mxArray* sf_opaque_get_sim_state_c3_float_model(SimStruct* S)
{
  return get_sim_state_c3_float_model((SFc3_float_modelInstanceStruct *)
    sf_get_chart_instance_ptr(S));     /* raw sim ctx */
}

static void sf_opaque_set_sim_state_c3_float_model(SimStruct* S, const mxArray
  *st)
{
  set_sim_state_c3_float_model((SFc3_float_modelInstanceStruct*)
    sf_get_chart_instance_ptr(S), st);
}

static void sf_opaque_cleanup_runtime_resources_c3_float_model(void
  *chartInstanceVar)
{
  if (chartInstanceVar!=NULL) {
    SimStruct *S = ((SFc3_float_modelInstanceStruct*) chartInstanceVar)->S;
    if (sim_mode_is_rtw_gen(S) || sim_mode_is_external(S)) {
      sf_clear_rtw_identifier(S);
      unload_float_model_optimization_info();
    }

    mdl_cleanup_runtime_resources_c3_float_model((SFc3_float_modelInstanceStruct*)
      chartInstanceVar);
    utFree(chartInstanceVar);
    if (ssGetUserData(S)!= NULL) {
      sf_free_ChartRunTimeInfo(S);
    }

    ssSetUserData(S,NULL);
  }
}

static void sf_opaque_mdl_start_c3_float_model(void *chartInstanceVar)
{
  mdl_start_c3_float_model((SFc3_float_modelInstanceStruct*) chartInstanceVar);
  if (chartInstanceVar) {
    sf_reset_warnings_ChartRunTimeInfo(((SFc3_float_modelInstanceStruct*)
      chartInstanceVar)->S);
  }
}

static void sf_opaque_mdl_terminate_c3_float_model(void *chartInstanceVar)
{
  mdl_terminate_c3_float_model((SFc3_float_modelInstanceStruct*)
    chartInstanceVar);
}

extern unsigned int sf_machine_global_initializer_called(void);
static void mdlProcessParameters_c3_float_model(SimStruct *S)
{
  mdlProcessParamsCommon(S);
  if (sf_machine_global_initializer_called()) {
    initialize_params_c3_float_model((SFc3_float_modelInstanceStruct*)
      sf_get_chart_instance_ptr(S));
  }
}

const char* sf_c3_float_model_get_post_codegen_info(void)
{
  int i;
  const char* encStrCodegen [20] = {
    "eNrdWE1v40QYnlSlYj9YFQmxHFZajlyQoBWwQgi26yQQaGi0SXcRl2Viv46Hjmfc+Uga/gX/hJ/",
    "BgR/AiTs3Dkhw5B3HSSM3JB5H2hYsOc7YeeZ555n3yyGNTpfgcQ/PL+4TsofXV/HcIbPjlWLcWD",
    "pn93fJJ8W4d5uQMKHKdEQsif8RyghGIPo2jtmFJ1bYtEcVTXUNXkFTeApacmuYFH7GMxGDAhHiB",
    "JlUxotXs9RyJs7aVoSOWT9PWJj0E2l59AQnpNGJ4NN/482s6SFjkykITRsgMomSdpS0OR2tV0GZ",
    "SZBAeKZt6q2VBtO3mVuq7lpuWMahdQFhR2hDUQW9Yb19Qw0E5sLbQ5juz9EyzTijorrWCdV9yNA",
    "7DJxmEX6eWIPqVeRFviET1EjFKG+lPHAeXhHb42hnF92ae+tsUtOEoR2NmBg5dZVNQeD60U8qaB",
    "UHcgyKjuBEeMagW13rIt/ghV9Wj8GOc8taMWjT2a7oWtictzVGhXRN3nYoAsq59sMOZHYMY+A5f",
    "5MaWgM74/cAa82igXxGlYsCz0iygp1bKLCBFBGrvsPjEipPuF9j8qwAZ6lzKYhQ5oXpi4k2+aTV",
    "RqYBhlHz+Lgi31VsRxhQMQ2hcu5TlGlAg3O/8uSNmKZD7tCokslXWXkGELWhRMdWNCdSnaHGvkn",
    "2UisXCX5oiEbQBAN5wmihdz+j3Fa0OdWY4Zx7nGrMWH68iHXxUwsc0jCByNUTxqEL2k2gK+dnrC",
    "NHuNoxM9Mm6FCxrGokWQ0RFhKn0mCawak4E3Ii2kqm/aIjWONXAJg1qBJYFp5gWVLTNhpfzWoF5",
    "wPnWXXas5QaTofONz4HgZXFrdVVQhpiVLUEtm5o0DbYPvsBS7vQTBtsp6atPAaivB99q+HXj75e",
    "jA8XsdTRA4U7RbEMC+yUjoZ5swcDlkJ+o0+xp5gNi8PxvkcueW/trOfdwW+NmjiyJe7xEm53hT7",
    "3lnD7xTg8fBFzSc2LdNadlPnvVtB5ld1lHLmCu9R3fn1nCd9YwUuWrtvsy7JOr5V4dku4vUKrn3",
    "7/2Pz4XcTu/PJn8M1fv320Df/Pnn4837cH875sUbnGV5J7/t62wQ/eLPmBG+vm84OnXx51v2/Fe",
    "hCkJ18Fxx+ed0ituJvffxtPg4ktz5Mq7ETFO5YbUzvr/d38j5bs3dsw/60lfyLkj8+2w7/xuLyP",
    "uxvw+/htWvLbm54frisfXaedVfJW4yXjyEvGbbs+33z8X//9ujxASr/fv8HrIGvyk09dvmnr+pX",
    "41aGHxfjTxbtykDAerejWi8fYUMernv5P/PtvT/3uF+OW06/4s+/bwyNB+RTb89nrT3G7p9z/TI",
    "tHCqhe/Q50HXWoan98txTfbjxhIpIT/e77Bx8cbFPX/gHefPzO",
    ""
  };

  static char newstr [1401] = "";
  newstr[0] = '\0';
  for (i = 0; i < 20; i++) {
    strcat(newstr, encStrCodegen[i]);
  }

  return newstr;
}

static void mdlSetWorkWidths_c3_float_model(SimStruct *S)
{
  const char* newstr = sf_c3_float_model_get_post_codegen_info();
  sf_set_work_widths(S, newstr);
  ssSetChecksum0(S,(1950017968U));
  ssSetChecksum1(S,(1768186001U));
  ssSetChecksum2(S,(1140116491U));
  ssSetChecksum3(S,(937359192U));
}

static void mdlRTW_c3_float_model(SimStruct *S)
{
  if (sim_mode_is_rtw_gen(S)) {
    ssWriteRTWStrParam(S, "StateflowChartType", "Embedded MATLAB");
  }
}

static void mdlSetupRuntimeResources_c3_float_model(SimStruct *S)
{
  SFc3_float_modelInstanceStruct *chartInstance;
  chartInstance = (SFc3_float_modelInstanceStruct *)utMalloc(sizeof
    (SFc3_float_modelInstanceStruct));
  if (chartInstance==NULL) {
    sf_mex_error_message("Could not allocate memory for chart instance.");
  }

  memset(chartInstance, 0, sizeof(SFc3_float_modelInstanceStruct));
  chartInstance->chartInfo.chartInstance = chartInstance;
  chartInstance->chartInfo.isEMLChart = 1;
  chartInstance->chartInfo.chartInitialized = 0;
  chartInstance->chartInfo.sFunctionGateway = sf_opaque_gateway_c3_float_model;
  chartInstance->chartInfo.initializeChart = sf_opaque_initialize_c3_float_model;
  chartInstance->chartInfo.mdlStart = sf_opaque_mdl_start_c3_float_model;
  chartInstance->chartInfo.mdlTerminate = sf_opaque_mdl_terminate_c3_float_model;
  chartInstance->chartInfo.mdlCleanupRuntimeResources =
    sf_opaque_cleanup_runtime_resources_c3_float_model;
  chartInstance->chartInfo.enableChart = sf_opaque_enable_c3_float_model;
  chartInstance->chartInfo.disableChart = sf_opaque_disable_c3_float_model;
  chartInstance->chartInfo.getSimState = sf_opaque_get_sim_state_c3_float_model;
  chartInstance->chartInfo.setSimState = sf_opaque_set_sim_state_c3_float_model;
  chartInstance->chartInfo.getSimStateInfo =
    sf_get_sim_state_info_c3_float_model;
  chartInstance->chartInfo.zeroCrossings = NULL;
  chartInstance->chartInfo.outputs = NULL;
  chartInstance->chartInfo.derivatives = NULL;
  chartInstance->chartInfo.mdlRTW = mdlRTW_c3_float_model;
  chartInstance->chartInfo.mdlSetWorkWidths = mdlSetWorkWidths_c3_float_model;
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

  mdl_setup_runtime_resources_c3_float_model(chartInstance);
}

void c3_float_model_method_dispatcher(SimStruct *S, int_T method, void *data)
{
  switch (method) {
   case SS_CALL_MDL_SETUP_RUNTIME_RESOURCES:
    mdlSetupRuntimeResources_c3_float_model(S);
    break;

   case SS_CALL_MDL_SET_WORK_WIDTHS:
    mdlSetWorkWidths_c3_float_model(S);
    break;

   case SS_CALL_MDL_PROCESS_PARAMETERS:
    mdlProcessParameters_c3_float_model(S);
    break;

   default:
    /* Unhandled method */
    sf_mex_error_message("Stateflow Internal Error:\n"
                         "Error calling c3_float_model_method_dispatcher.\n"
                         "Can't handle method %d.\n", method);
    break;
  }
}

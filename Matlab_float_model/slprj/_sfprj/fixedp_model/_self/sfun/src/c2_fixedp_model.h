#ifndef __c2_fixedp_model_h__
#define __c2_fixedp_model_h__

/* Forward Declarations */

/* Type Definitions */
#ifndef typedef_SFc2_fixedp_modelInstanceStruct
#define typedef_SFc2_fixedp_modelInstanceStruct

typedef struct {
  SimStruct *S;
  ChartInfoStruct chartInfo;
  int32_T c2_sfEvent;
  boolean_T c2_doneDoubleBufferReInit;
  emlrtLocationLoggingDataType c2_emlrtLocationLoggingDataTables[6];
  void *c2_RuntimeVar;
  int32_T c2_IsDebuggerActive;
  int32_T c2_IsSequenceViewerPresent;
  int32_T c2_SequenceViewerOptimization;
  int32_T c2_IsHeatMapPresent;
  emlrtLocationLoggingHistogramType c2_emlrtLocLogHistTables[6];
  boolean_T c2_emlrtLocLogSimulated;
  uint8_T c2_JITStateAnimation[1];
  uint8_T c2_JITTransitionAnimation[1];
  uint32_T c2_mlFcnLineNumber;
  void *c2_fcnDataPtrs[2];
  const char_T *c2_dataNames[2];
  uint32_T c2_numFcnVars;
  uint32_T c2_ssIds[2];
  uint32_T c2_statuses[2];
  void *c2_outMexFcns[2];
  void *c2_inMexFcns[2];
  CovrtStateflowInstance *c2_covrtInstance;
  void *c2_fEmlrtCtx;
  creal_T (*c2_u)[512];
  real_T *c2_y;
} SFc2_fixedp_modelInstanceStruct;

#endif                                 /* typedef_SFc2_fixedp_modelInstanceStruct */

/* Named Constants */

/* Variable Declarations */

/* Variable Definitions */

/* Function Declarations */
extern const mxArray *sf_c2_fixedp_model_get_eml_resolved_functions_info(void);

/* Function Definitions */
extern void sf_c2_fixedp_model_get_check_sum(mxArray *plhs[]);
extern void c2_fixedp_model_method_dispatcher(SimStruct *S, int_T method, void
  *data);

#endif

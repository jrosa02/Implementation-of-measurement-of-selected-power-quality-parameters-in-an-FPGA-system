#ifndef __c2_float_model_h__
#define __c2_float_model_h__

/* Forward Declarations */

/* Type Definitions */
#ifndef typedef_SFc2_float_modelInstanceStruct
#define typedef_SFc2_float_modelInstanceStruct

typedef struct {
  SimStruct *S;
  ChartInfoStruct chartInfo;
  int32_T c2_sfEvent;
  boolean_T c2_doneDoubleBufferReInit;
  emlrtLocationLoggingDataType c2_emlrtLocationLoggingDataTables[7];
  void *c2_RuntimeVar;
  int32_T c2_IsDebuggerActive;
  int32_T c2_IsSequenceViewerPresent;
  int32_T c2_SequenceViewerOptimization;
  int32_T c2_IsHeatMapPresent;
  emlrtLocationLoggingHistogramType c2_emlrtLocLogHistTables[7];
  boolean_T c2_emlrtLocLogSimulated;
  uint8_T c2_JITStateAnimation[1];
  uint8_T c2_JITTransitionAnimation[1];
  uint32_T c2_mlFcnLineNumber;
  void *c2_fcnDataPtrs[7];
  const char_T *c2_dataNames[7];
  uint32_T c2_numFcnVars;
  uint32_T c2_ssIds[7];
  uint32_T c2_statuses[7];
  void *c2_outMexFcns[7];
  void *c2_inMexFcns[7];
  CovrtStateflowInstance *c2_covrtInstance;
  void *c2_fEmlrtCtx;
  real_T (*c2_u)[13];
  real_T *c2_y;
} SFc2_float_modelInstanceStruct;

#endif                                 /* typedef_SFc2_float_modelInstanceStruct */

/* Named Constants */

/* Variable Declarations */

/* Variable Definitions */

/* Function Declarations */
extern const mxArray *sf_c2_float_model_get_eml_resolved_functions_info(void);

/* Function Definitions */
extern void sf_c2_float_model_get_check_sum(mxArray *plhs[]);
extern void c2_float_model_method_dispatcher(SimStruct *S, int_T method, void
  *data);

#endif

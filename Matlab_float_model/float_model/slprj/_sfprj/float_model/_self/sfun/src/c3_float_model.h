#ifndef __c3_float_model_h__
#define __c3_float_model_h__

/* Forward Declarations */
#ifndef c3_typedef_c3_cell_wrap_0
#define c3_typedef_c3_cell_wrap_0

typedef struct c3_tag_fisVJns06LoJfzAcBfz34B c3_cell_wrap_0;

#endif                                 /* c3_typedef_c3_cell_wrap_0 */

#ifndef c3_typedef_c3_s_zUYCxtzNwHeXvBwj4o5lLE
#define c3_typedef_c3_s_zUYCxtzNwHeXvBwj4o5lLE

typedef struct c3_tag_zUYCxtzNwHeXvBwj4o5lLE c3_s_zUYCxtzNwHeXvBwj4o5lLE;

#endif                                 /* c3_typedef_c3_s_zUYCxtzNwHeXvBwj4o5lLE */

#ifndef c3_typedef_c3_sshBENxM6F5wB7z5eZ75jgC
#define c3_typedef_c3_sshBENxM6F5wB7z5eZ75jgC

typedef struct c3_tag_sshBENxM6F5wB7z5eZ75jgC c3_sshBENxM6F5wB7z5eZ75jgC;

#endif                                 /* c3_typedef_c3_sshBENxM6F5wB7z5eZ75jgC */

#ifndef c3_typedef_c3_s_l5MJv3BAkqfMKETUd0AZTB
#define c3_typedef_c3_s_l5MJv3BAkqfMKETUd0AZTB

typedef struct c3_tag_l5MJv3BAkqfMKETUd0AZTB c3_s_l5MJv3BAkqfMKETUd0AZTB;

#endif                                 /* c3_typedef_c3_s_l5MJv3BAkqfMKETUd0AZTB */

/* Type Definitions */
#ifndef c3_struct_c3_tag_fisVJns06LoJfzAcBfz34B
#define c3_struct_c3_tag_fisVJns06LoJfzAcBfz34B

struct c3_tag_fisVJns06LoJfzAcBfz34B
{
  char_T f1[10];
};

#endif                                 /* c3_struct_c3_tag_fisVJns06LoJfzAcBfz34B */

#ifndef c3_typedef_c3_cell_wrap_0
#define c3_typedef_c3_cell_wrap_0

typedef struct c3_tag_fisVJns06LoJfzAcBfz34B c3_cell_wrap_0;

#endif                                 /* c3_typedef_c3_cell_wrap_0 */

#ifndef c3_struct_c3_tag_zUYCxtzNwHeXvBwj4o5lLE
#define c3_struct_c3_tag_zUYCxtzNwHeXvBwj4o5lLE

struct c3_tag_zUYCxtzNwHeXvBwj4o5lLE
{
  c3_cell_wrap_0 _data;
};

#endif                                 /* c3_struct_c3_tag_zUYCxtzNwHeXvBwj4o5lLE */

#ifndef c3_typedef_c3_s_zUYCxtzNwHeXvBwj4o5lLE
#define c3_typedef_c3_s_zUYCxtzNwHeXvBwj4o5lLE

typedef struct c3_tag_zUYCxtzNwHeXvBwj4o5lLE c3_s_zUYCxtzNwHeXvBwj4o5lLE;

#endif                                 /* c3_typedef_c3_s_zUYCxtzNwHeXvBwj4o5lLE */

#ifndef c3_struct_c3_tag_sshBENxM6F5wB7z5eZ75jgC
#define c3_struct_c3_tag_sshBENxM6F5wB7z5eZ75jgC

struct c3_tag_sshBENxM6F5wB7z5eZ75jgC
{
  uint32_T cPrototype;
};

#endif                                 /* c3_struct_c3_tag_sshBENxM6F5wB7z5eZ75jgC */

#ifndef c3_typedef_c3_sshBENxM6F5wB7z5eZ75jgC
#define c3_typedef_c3_sshBENxM6F5wB7z5eZ75jgC

typedef struct c3_tag_sshBENxM6F5wB7z5eZ75jgC c3_sshBENxM6F5wB7z5eZ75jgC;

#endif                                 /* c3_typedef_c3_sshBENxM6F5wB7z5eZ75jgC */

#ifndef c3_struct_c3_tag_l5MJv3BAkqfMKETUd0AZTB
#define c3_struct_c3_tag_l5MJv3BAkqfMKETUd0AZTB

struct c3_tag_l5MJv3BAkqfMKETUd0AZTB
{
  c3_sshBENxM6F5wB7z5eZ75jgC nontunableWorkspace;
};

#endif                                 /* c3_struct_c3_tag_l5MJv3BAkqfMKETUd0AZTB */

#ifndef c3_typedef_c3_s_l5MJv3BAkqfMKETUd0AZTB
#define c3_typedef_c3_s_l5MJv3BAkqfMKETUd0AZTB

typedef struct c3_tag_l5MJv3BAkqfMKETUd0AZTB c3_s_l5MJv3BAkqfMKETUd0AZTB;

#endif                                 /* c3_typedef_c3_s_l5MJv3BAkqfMKETUd0AZTB */

#ifndef typedef_SFc3_float_modelInstanceStruct
#define typedef_SFc3_float_modelInstanceStruct

typedef struct {
  SimStruct *S;
  ChartInfoStruct chartInfo;
  int32_T c3_sfEvent;
  boolean_T c3_doneDoubleBufferReInit;
  emlrtLocationLoggingDataType c3_emlrtLocationLoggingDataTables[26];
  void *c3_RuntimeVar;
  int32_T c3_IsDebuggerActive;
  int32_T c3_IsSequenceViewerPresent;
  int32_T c3_SequenceViewerOptimization;
  int32_T c3_IsHeatMapPresent;
  emlrtLocationLoggingHistogramType c3_emlrtLocLogHistTables[26];
  boolean_T c3_emlrtLocLogSimulated;
  uint8_T c3_JITStateAnimation[1];
  uint8_T c3_JITTransitionAnimation[1];
  uint32_T c3_mlFcnLineNumber;
  void *c3_fcnDataPtrs[9];
  const char_T *c3_dataNames[9];
  uint32_T c3_numFcnVars;
  uint32_T c3_ssIds[9];
  uint32_T c3_statuses[9];
  void *c3_outMexFcns[9];
  void *c3_inMexFcns[9];
  CovrtStateflowInstance *c3_covrtInstance;
  void *c3_fEmlrtCtx;
  creal_T (*c3_u)[2048];
  uint16_T *c3_y;
} SFc3_float_modelInstanceStruct;

#endif                                 /* typedef_SFc3_float_modelInstanceStruct */

/* Named Constants */

/* Variable Declarations */

/* Variable Definitions */

/* Function Declarations */
extern const mxArray *sf_c3_float_model_get_eml_resolved_functions_info(void);

/* Function Definitions */
extern void sf_c3_float_model_get_check_sum(mxArray *plhs[]);
extern void c3_float_model_method_dispatcher(SimStruct *S, int_T method, void
  *data);

#endif

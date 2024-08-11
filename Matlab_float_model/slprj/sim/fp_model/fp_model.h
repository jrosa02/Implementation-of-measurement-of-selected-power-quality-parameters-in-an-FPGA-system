#ifndef fp_model_h_
#define fp_model_h_
#ifndef fp_model_COMMON_INCLUDES_
#define fp_model_COMMON_INCLUDES_
#include "rtwtypes.h"
#include "slsv_diagnostic_codegen_c_api.h"
#include "sl_AsyncioQueue/AsyncioQueueCAPI.h"
#include "simstruc.h"
#include "fixedpoint.h"
#include "math.h"
#include "sf_runtime/sfc_sdi.h"
#endif
#include "fp_model_types.h"
#include "rtw_modelmap_simtarget.h"
#include "rt_nonfinite.h"
#include <string.h>
#include <stddef.h>
typedef struct { real_T gaavansm5h [ 255 ] ; int32_T egar4djohu ; boolean_T
funf0lyujt ; } k0bbvic25x ; struct gbqnpvikt43_ { real_T P_0 ; } ; struct
f1kk5y0opp { struct SimStruct_tag * _mdlRefSfcnS ; struct {
rtwCAPI_ModelMappingInfo mmi ; rtwCAPI_ModelMapLoggingInstanceInfo
mmiLogInstanceInfo ; void * dataAddress [ 2 ] ; int32_T * vardimsAddress [ 2
] ; RTWLoggingFcnPtr loggingPtrs [ 2 ] ; sysRanDType * systemRan [ 3 ] ;
int_T systemTid [ 3 ] ; } DataMapInfo ; struct { int_T mdlref_GlobalTID [ 1 ]
; } Timing ; } ; typedef struct { k0bbvic25x rtdw ; cblbyci5dy rtm ; }
nt0bd1szwfg ; extern void lkqpaif35r ( SimStruct * _mdlRefSfcnS , int_T
mdlref_TID0 , cblbyci5dy * const jrnszy5bwy , k0bbvic25x * localDW , void *
sysRanPtr , int contextTid , rtwCAPI_ModelMappingInfo * rt_ParentMMI , const
char_T * rt_ChildPath , int_T rt_ChildMMIIdx , int_T rt_CSTATEIdx ) ; extern
void mr_fp_model_MdlInfoRegFcn ( SimStruct * mdlRefSfcnS , char_T * modelName
, int_T * retVal ) ; extern mxArray * mr_fp_model_GetDWork ( const
nt0bd1szwfg * mdlrefDW ) ; extern void mr_fp_model_SetDWork ( nt0bd1szwfg *
mdlrefDW , const mxArray * ssDW ) ; extern void
mr_fp_model_RegisterSimStateChecksum ( SimStruct * S ) ; extern mxArray *
mr_fp_model_GetSimStateDisallowedBlocks ( ) ; extern const
rtwCAPI_ModelMappingStaticInfo * fp_model_GetCAPIStaticMap ( void ) ; extern
void aisxmr5v0g ( k0bbvic25x * localDW ) ; extern void ksgf00li5o (
k0bbvic25x * localDW ) ; extern void fp_model ( const real_T * hji2uwxwcd ,
creal_T fmfow4syn2 [ 256 ] , real_T * hj11ljezie , k0bbvic25x * localDW ) ;
extern void dfi4ptkiax ( cblbyci5dy * const jrnszy5bwy ) ;
#endif

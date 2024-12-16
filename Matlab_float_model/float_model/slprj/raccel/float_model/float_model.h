#ifndef float_model_h_
#define float_model_h_
#ifndef float_model_COMMON_INCLUDES_
#define float_model_COMMON_INCLUDES_
#include <stdlib.h>
#include "rtwtypes.h"
#include "sigstream_rtw.h"
#include "simtarget/slSimTgtSigstreamRTW.h"
#include "simtarget/slSimTgtSlioCoreRTW.h"
#include "simtarget/slSimTgtSlioClientsRTW.h"
#include "simtarget/slSimTgtSlioSdiRTW.h"
#include "simstruc.h"
#include "fixedpoint.h"
#include "raccel.h"
#include "slsv_diagnostic_codegen_c_api.h"
#include "rt_logging_simtarget.h"
#include "rt_nonfinite.h"
#include "math.h"
#include "dt_info.h"
#include "ext_work.h"
#endif
#include "float_model_types.h"
#include <stddef.h>
#include <string.h>
#include "rtw_modelmap_simtarget.h"
#include "rt_defines.h"
#define MODEL_NAME float_model
#define NSAMPLE_TIMES (4) 
#define NINPUTS (0)       
#define NOUTPUTS (0)     
#define NBLOCKIO (6) 
#define NUM_ZC_EVENTS (0) 
#ifndef NCSTATES
#define NCSTATES (0)   
#elif NCSTATES != 0
#error Invalid specification of NCSTATES defined in compiler command
#endif
#ifndef rtmGetDataMapInfo
#define rtmGetDataMapInfo(rtm) (*rt_dataMapInfoPtr)
#endif
#ifndef rtmSetDataMapInfo
#define rtmSetDataMapInfo(rtm, val) (rt_dataMapInfoPtr = &val)
#endif
#ifndef IN_RACCEL_MAIN
#endif
typedef struct { creal_T f1qdjomdj2 [ 2048 ] ; real_T j3uwgmrtct_mbvzarwird [
2048 ] ; real_T idtut04grk ; real_T j3ohbey5vo ; real_T aoa31w0yrk ; real_T
m1tldgkwax ; real_T f3mepvdoa1 ; } B ; typedef struct { real_T kl4at23xp2 [
2047 ] ; real_T mqwb5qo2l3 ; real_T fpkatxq0cq ; real_T mhdn2cxqcd ; real_T
jtd4h2yzhn ; struct { void * LoggedData [ 4 ] ; } djsq5n5bf2 ; struct { void
* LoggedData ; } d3bwpvkuup ; int32_T armc3r3dlj ; boolean_T pl0dtoihqh ;
boolean_T dgprbspzct ; } DW ; typedef struct { real_T kflu3tjmoj [ 1536 ] ; }
ConstP ; typedef struct { rtwCAPI_ModelMappingInfo mmi ; } DataMapInfo ;
struct P_ { real_T WaveformGenerator_SelectedSignal ; real_T Buffer_ic ; } ;
extern const char_T * RT_MEMORY_ALLOCATION_ERROR ; extern B rtB ; extern DW
rtDW ; extern P rtP ; extern const ConstP rtConstP ; extern mxArray *
mr_float_model_GetDWork ( ) ; extern void mr_float_model_SetDWork ( const
mxArray * ssDW ) ; extern mxArray *
mr_float_model_GetSimStateDisallowedBlocks ( ) ; extern const
rtwCAPI_ModelMappingStaticInfo * float_model_GetCAPIStaticMap ( void ) ;
extern SimStruct * const rtS ; extern DataMapInfo * rt_dataMapInfoPtr ;
extern rtwCAPI_ModelMappingInfo * rt_modelMapInfoPtr ; void MdlOutputs (
int_T tid ) ; void MdlOutputsParameterSampleTime ( int_T tid ) ; void
MdlUpdate ( int_T tid ) ; void MdlTerminate ( void ) ; void
MdlInitializeSizes ( void ) ; void MdlInitializeSampleTimes ( void ) ;
SimStruct * raccel_register_model ( ssExecutionInfo * executionInfo ) ;
#endif

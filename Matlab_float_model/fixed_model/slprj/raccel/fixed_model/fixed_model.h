#ifndef fixed_model_h_
#define fixed_model_h_
#ifndef fixed_model_COMMON_INCLUDES_
#define fixed_model_COMMON_INCLUDES_
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
#include "fixed_model_types.h"
#include <stddef.h>
#include "rtw_modelmap_simtarget.h"
#include "rt_defines.h"
#include <string.h>
#define MODEL_NAME fixed_model
#define NSAMPLE_TIMES (4) 
#define NINPUTS (0)       
#define NOUTPUTS (0)     
#define NBLOCKIO (7) 
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
typedef struct { real_T ejhui3fdzv ; real_T bguuioxsov ; real_T gwp1gicv2u ;
uint16_T i0buti5e3e ; uint16_T pgtq0cyurp ; uint16_T ljkbqmtph2 ; cint16_T
m4e4llhd3u [ 2048 ] ; } B ; typedef struct { real_T ohndf50qyn ; real_T
ccx4hqwlgd ; real_T ozgv10a3wz ; struct { void * LoggedData [ 4 ] ; }
ldmmcxssq0 ; struct { void * LoggedData ; } otx1giruul ; struct { void *
LoggedData ; } akgc1wzhai ; struct { void * LoggedData ; } bt5rhvhi3z ;
int32_T nwjvykniub ; uint16_T nnt4zufick [ 2047 ] ; boolean_T eqwblmcedm ;
boolean_T nv3w34tckf ; } DW ; typedef struct { int16_T khs2nqknr5 [ 2048 ] ;
} ConstP ; typedef struct { rtwCAPI_ModelMappingInfo mmi ; } DataMapInfo ;
struct P_ { real_T WaveformGenerator_SelectedSignal ; real_T Constant_Value ;
real_T Constant1_Value ; uint16_T Buffer_ic ; } ; extern const char_T *
RT_MEMORY_ALLOCATION_ERROR ; extern B rtB ; extern DW rtDW ; extern P rtP ;
extern const ConstP rtConstP ; extern mxArray * mr_fixed_model_GetDWork ( ) ;
extern void mr_fixed_model_SetDWork ( const mxArray * ssDW ) ; extern mxArray
* mr_fixed_model_GetSimStateDisallowedBlocks ( ) ; extern const
rtwCAPI_ModelMappingStaticInfo * fixed_model_GetCAPIStaticMap ( void ) ;
extern SimStruct * const rtS ; extern DataMapInfo * rt_dataMapInfoPtr ;
extern rtwCAPI_ModelMappingInfo * rt_modelMapInfoPtr ; void MdlOutputs (
int_T tid ) ; void MdlOutputsParameterSampleTime ( int_T tid ) ; void
MdlUpdate ( int_T tid ) ; void MdlTerminate ( void ) ; void
MdlInitializeSizes ( void ) ; void MdlInitializeSampleTimes ( void ) ;
SimStruct * raccel_register_model ( ssExecutionInfo * executionInfo ) ;
#endif

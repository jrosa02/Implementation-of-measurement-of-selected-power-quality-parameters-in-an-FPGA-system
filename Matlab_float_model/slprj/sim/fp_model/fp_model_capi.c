#include <stddef.h>
#include "rtw_capi.h"
#ifdef HOST_CAPI_BUILD
#include "fp_model_capi_host.h"
#define sizeof(s) ((size_t)(0xFFFF))
#undef rt_offsetof
#define rt_offsetof(s,el) ((uint16_T)(0xFFFF))
#define TARGET_CONST
#define TARGET_STRING(s) (s)
#ifndef SS_UINT64
#define SS_UINT64 19
#endif
#ifndef SS_INT64
#define SS_INT64 20
#endif
#else
#include "builtin_typeid_types.h"
#include "fp_model.h"
#include "fp_model_capi.h"
#include "fp_model_private.h"
#ifdef LIGHT_WEIGHT_CAPI
#define TARGET_CONST
#define TARGET_STRING(s)               ((NULL))
#else
#define TARGET_CONST                   const
#define TARGET_STRING(s)               (s)
#endif
#endif
static rtwCAPI_Signals rtBlockSignals [ ] = { { 0 , 0 , ( NULL ) , ( NULL ) ,
0 , 0 , 0 , 0 , 0 } } ; static rtwCAPI_States rtBlockStates [ ] = { { 0 , - 1
, TARGET_STRING ( "fp_model/Buffer" ) , TARGET_STRING ( "CircBuff" ) , "" , 0
, 0 , 0 , 0 , 0 , 0 , - 1 , 0 } , { 1 , - 1 , TARGET_STRING (
"fp_model/Buffer" ) , TARGET_STRING ( "CircBufIdx" ) , "" , 0 , 1 , 1 , 0 , 0
, 0 , - 1 , 0 } , { 0 , - 1 , ( NULL ) , ( NULL ) , ( NULL ) , 0 , 0 , 0 , 0
, 0 , 0 , - 1 , 0 } } ; static int_T rt_LoggedStateIdxList [ ] = { 0 , 1 } ;
#ifndef HOST_CAPI_BUILD
static void fp_model_InitializeDataAddr ( void * dataAddr [ ] , k0bbvic25x *
localDW ) { dataAddr [ 0 ] = ( void * ) ( & localDW -> gaavansm5h [ 0 ] ) ;
dataAddr [ 1 ] = ( void * ) ( & localDW -> egar4djohu ) ; }
#endif
#ifndef HOST_CAPI_BUILD
static void fp_model_InitializeVarDimsAddr ( int32_T * vardimsAddr [ ] ) {
vardimsAddr [ 0 ] = ( NULL ) ; }
#endif
#ifndef HOST_CAPI_BUILD
static void fp_model_InitializeLoggingFunctions ( RTWLoggingFcnPtr
loggingPtrs [ ] ) { loggingPtrs [ 0 ] = ( NULL ) ; loggingPtrs [ 1 ] = ( NULL
) ; }
#endif
static TARGET_CONST rtwCAPI_DataTypeMap rtDataTypeMap [ ] = { { "double" ,
"real_T" , 0 , 0 , sizeof ( real_T ) , ( uint8_T ) SS_DOUBLE , 0 , 0 , 0 } ,
{ "int" , "int32_T" , 0 , 0 , sizeof ( int32_T ) , ( uint8_T ) SS_INT32 , 0 ,
0 , 0 } } ;
#ifdef HOST_CAPI_BUILD
#undef sizeof
#endif
static TARGET_CONST rtwCAPI_ElementMap rtElementMap [ ] = { { ( NULL ) , 0 ,
0 , 0 , 0 } , } ; static rtwCAPI_DimensionMap rtDimensionMap [ ] = { {
rtwCAPI_VECTOR , 0 , 2 , 0 } , { rtwCAPI_SCALAR , 2 , 2 , 0 } } ; static
uint_T rtDimensionArray [ ] = { 255 , 1 , 1 , 1 } ; static const real_T
rtcapiStoredFloats [ ] = { 3.3444816053511705E-5 , 0.0 } ; static
rtwCAPI_FixPtMap rtFixPtMap [ ] = { { ( NULL ) , ( NULL ) ,
rtwCAPI_FIX_RESERVED , 0 , 0 , ( boolean_T ) 0 } , } ; static
rtwCAPI_SampleTimeMap rtSampleTimeMap [ ] = { { ( const void * ) &
rtcapiStoredFloats [ 0 ] , ( const void * ) & rtcapiStoredFloats [ 1 ] , (
int8_T ) 0 , ( uint8_T ) 0 } } ; static int_T rtContextSystems [ 3 ] ; static
rtwCAPI_LoggingMetaInfo loggingMetaInfo [ ] = { { 0 , 0 , "" , 0 } } ; static
rtwCAPI_ModelMapLoggingStaticInfo mmiStaticInfoLogging = { 3 ,
rtContextSystems , loggingMetaInfo , 0 , ( NULL ) , { 0 , ( NULL ) , ( NULL )
} , 0 , ( NULL ) } ; static rtwCAPI_ModelMappingStaticInfo mmiStatic = { {
rtBlockSignals , 0 , ( NULL ) , 0 , ( NULL ) , 0 } , { ( NULL ) , 0 , ( NULL
) , 0 } , { rtBlockStates , 2 } , { rtDataTypeMap , rtDimensionMap ,
rtFixPtMap , rtElementMap , rtSampleTimeMap , rtDimensionArray } , "float" ,
{ 3478980281U , 2335602435U , 3606871135U , 2577704842U } , &
mmiStaticInfoLogging , 0 , ( boolean_T ) 0 , rt_LoggedStateIdxList } ; const
rtwCAPI_ModelMappingStaticInfo * fp_model_GetCAPIStaticMap ( void ) { return
& mmiStatic ; }
#ifndef HOST_CAPI_BUILD
static void fp_model_InitializeSystemRan ( cblbyci5dy * const jrnszy5bwy ,
sysRanDType * systemRan [ ] , k0bbvic25x * localDW , int_T systemTid [ ] ,
void * rootSysRanPtr , int rootTid ) { UNUSED_PARAMETER ( jrnszy5bwy ) ;
UNUSED_PARAMETER ( localDW ) ; systemRan [ 0 ] = ( sysRanDType * )
rootSysRanPtr ; systemRan [ 1 ] = ( NULL ) ; systemRan [ 2 ] = ( NULL ) ;
systemTid [ 1 ] = jrnszy5bwy -> Timing . mdlref_GlobalTID [ 0 ] ; systemTid [
2 ] = jrnszy5bwy -> Timing . mdlref_GlobalTID [ 0 ] ; systemTid [ 0 ] =
rootTid ; rtContextSystems [ 0 ] = 0 ; rtContextSystems [ 1 ] = 0 ;
rtContextSystems [ 2 ] = 0 ; }
#endif
#ifndef HOST_CAPI_BUILD
void fp_model_InitializeDataMapInfo ( cblbyci5dy * const jrnszy5bwy ,
k0bbvic25x * localDW , void * sysRanPtr , int contextTid ) {
rtwCAPI_SetVersion ( jrnszy5bwy -> DataMapInfo . mmi , 1 ) ;
rtwCAPI_SetStaticMap ( jrnszy5bwy -> DataMapInfo . mmi , & mmiStatic ) ;
rtwCAPI_SetLoggingStaticMap ( jrnszy5bwy -> DataMapInfo . mmi , &
mmiStaticInfoLogging ) ; fp_model_InitializeDataAddr ( jrnszy5bwy ->
DataMapInfo . dataAddress , localDW ) ; rtwCAPI_SetDataAddressMap (
jrnszy5bwy -> DataMapInfo . mmi , jrnszy5bwy -> DataMapInfo . dataAddress ) ;
fp_model_InitializeVarDimsAddr ( jrnszy5bwy -> DataMapInfo . vardimsAddress )
; rtwCAPI_SetVarDimsAddressMap ( jrnszy5bwy -> DataMapInfo . mmi , jrnszy5bwy
-> DataMapInfo . vardimsAddress ) ; rtwCAPI_SetPath ( jrnszy5bwy ->
DataMapInfo . mmi , ( NULL ) ) ; rtwCAPI_SetFullPath ( jrnszy5bwy ->
DataMapInfo . mmi , ( NULL ) ) ; fp_model_InitializeLoggingFunctions (
jrnszy5bwy -> DataMapInfo . loggingPtrs ) ; rtwCAPI_SetLoggingPtrs (
jrnszy5bwy -> DataMapInfo . mmi , jrnszy5bwy -> DataMapInfo . loggingPtrs ) ;
rtwCAPI_SetInstanceLoggingInfo ( jrnszy5bwy -> DataMapInfo . mmi , &
jrnszy5bwy -> DataMapInfo . mmiLogInstanceInfo ) ; rtwCAPI_SetChildMMIArray (
jrnszy5bwy -> DataMapInfo . mmi , ( NULL ) ) ; rtwCAPI_SetChildMMIArrayLen (
jrnszy5bwy -> DataMapInfo . mmi , 0 ) ; fp_model_InitializeSystemRan (
jrnszy5bwy , jrnszy5bwy -> DataMapInfo . systemRan , localDW , jrnszy5bwy ->
DataMapInfo . systemTid , sysRanPtr , contextTid ) ; rtwCAPI_SetSystemRan (
jrnszy5bwy -> DataMapInfo . mmi , jrnszy5bwy -> DataMapInfo . systemRan ) ;
rtwCAPI_SetSystemTid ( jrnszy5bwy -> DataMapInfo . mmi , jrnszy5bwy ->
DataMapInfo . systemTid ) ; rtwCAPI_SetGlobalTIDMap ( jrnszy5bwy ->
DataMapInfo . mmi , & jrnszy5bwy -> Timing . mdlref_GlobalTID [ 0 ] ) ; }
#else
#ifdef __cplusplus
extern "C" {
#endif
void fp_model_host_InitializeDataMapInfo ( fp_model_host_DataMapInfo_T *
dataMap , const char * path ) { rtwCAPI_SetVersion ( dataMap -> mmi , 1 ) ;
rtwCAPI_SetStaticMap ( dataMap -> mmi , & mmiStatic ) ;
rtwCAPI_SetDataAddressMap ( dataMap -> mmi , ( NULL ) ) ;
rtwCAPI_SetVarDimsAddressMap ( dataMap -> mmi , ( NULL ) ) ; rtwCAPI_SetPath
( dataMap -> mmi , path ) ; rtwCAPI_SetFullPath ( dataMap -> mmi , ( NULL ) )
; rtwCAPI_SetChildMMIArray ( dataMap -> mmi , ( NULL ) ) ;
rtwCAPI_SetChildMMIArrayLen ( dataMap -> mmi , 0 ) ; }
#ifdef __cplusplus
}
#endif
#endif

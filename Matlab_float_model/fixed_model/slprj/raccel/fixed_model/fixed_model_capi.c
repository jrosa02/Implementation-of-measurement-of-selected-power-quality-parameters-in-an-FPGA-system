#include "rtw_capi.h"
#ifdef HOST_CAPI_BUILD
#include "fixed_model_capi_host.h"
#define sizeof(s) ((size_t)(0xFFFF))
#undef rt_offsetof
#define rt_offsetof(s,el) ((uint16_T)(0xFFFF))
#define TARGET_CONST
#define TARGET_STRING(s) (s)
#ifndef SS_UINT64
#define SS_UINT64 25
#endif
#ifndef SS_INT64
#define SS_INT64 26
#endif
#else
#include "builtin_typeid_types.h"
#include "fixed_model.h"
#include "fixed_model_capi.h"
#include "fixed_model_private.h"
#ifdef LIGHT_WEIGHT_CAPI
#define TARGET_CONST
#define TARGET_STRING(s)               ((NULL))
#else
#define TARGET_CONST                   const
#define TARGET_STRING(s)               (s)
#endif
#endif
static const rtwCAPI_Signals rtBlockSignals [ ] = { { 0 , 0 , TARGET_STRING (
"fixed_model/Data Type Conversion" ) , TARGET_STRING ( "" ) , 0 , 0 , 0 , 1 ,
0 } , { 1 , 0 , TARGET_STRING ( "fixed_model/Divide" ) , TARGET_STRING (
"RMS" ) , 0 , 1 , 0 , 0 , 0 } , { 2 , 0 , TARGET_STRING ( "fixed_model/FFT" )
, TARGET_STRING ( "FFT" ) , 0 , 2 , 1 , 2 , 0 } , { 3 , 0 , TARGET_STRING (
"fixed_model/Maximum" ) , TARGET_STRING ( "Max" ) , 0 , 0 , 0 , 1 , 0 } , { 4
, 0 , TARGET_STRING ( "fixed_model/Minimum" ) , TARGET_STRING ( "Min" ) , 0 ,
0 , 0 , 1 , 0 } , { 5 , 0 , TARGET_STRING ( "fixed_model/Add" ) ,
TARGET_STRING ( "" ) , 0 , 1 , 0 , 0 , 1 } , { 6 , 0 , TARGET_STRING (
"fixed_model/Subtract" ) , TARGET_STRING ( "" ) , 0 , 1 , 0 , 0 , 0 } , { 0 ,
0 , ( NULL ) , ( NULL ) , 0 , 0 , 0 , 0 , 0 } } ; static const
rtwCAPI_BlockParameters rtBlockParameters [ ] = { { 7 , TARGET_STRING (
"fixed_model/Waveform Generator" ) , TARGET_STRING ( "SelectedSignal" ) , 1 ,
0 , 0 } , { 8 , TARGET_STRING ( "fixed_model/Constant" ) , TARGET_STRING (
"Value" ) , 1 , 0 , 0 } , { 9 , TARGET_STRING ( "fixed_model/Constant1" ) ,
TARGET_STRING ( "Value" ) , 1 , 0 , 0 } , { 10 , TARGET_STRING (
"fixed_model/Buffer" ) , TARGET_STRING ( "ic" ) , 0 , 0 , 1 } , { 0 , ( NULL
) , ( NULL ) , 0 , 0 , 0 } } ; static int_T rt_LoggedStateIdxList [ ] = { - 1
} ; static const rtwCAPI_Signals rtRootInputs [ ] = { { 0 , 0 , ( NULL ) , (
NULL ) , 0 , 0 , 0 , 0 , 0 } } ; static const rtwCAPI_Signals rtRootOutputs [
] = { { 0 , 0 , ( NULL ) , ( NULL ) , 0 , 0 , 0 , 0 , 0 } } ; static const
rtwCAPI_ModelParameters rtModelParameters [ ] = { { 0 , ( NULL ) , 0 , 0 , 0
} } ;
#ifndef HOST_CAPI_BUILD
static void * rtDataAddrMap [ ] = { & rtB . i0buti5e3e , & rtB . bguuioxsov ,
& rtB . m4e4llhd3u [ 0 ] . re , & rtB . ljkbqmtph2 , & rtB . pgtq0cyurp , &
rtB . ejhui3fdzv , & rtB . gwp1gicv2u , & rtP .
WaveformGenerator_SelectedSignal , & rtP . Constant_Value , & rtP .
Constant1_Value , & rtP . Buffer_ic , } ; static int32_T * rtVarDimsAddrMap [
] = { ( NULL ) } ;
#endif
static TARGET_CONST rtwCAPI_DataTypeMap rtDataTypeMap [ ] = { {
"unsigned short" , "uint16_T" , 0 , 0 , sizeof ( uint16_T ) , ( uint8_T )
SS_UINT16 , 0 , 0 , 0 } , { "double" , "real_T" , 0 , 0 , sizeof ( real_T ) ,
( uint8_T ) SS_DOUBLE , 0 , 0 , 0 } , { "struct" , "cint16_T" , 0 , 0 ,
sizeof ( cint16_T ) , ( uint8_T ) SS_INT16 , 1 , 0 , 0 } } ;
#ifdef HOST_CAPI_BUILD
#undef sizeof
#endif
static TARGET_CONST rtwCAPI_ElementMap rtElementMap [ ] = { { ( NULL ) , 0 ,
0 , 0 , 0 } , } ; static const rtwCAPI_DimensionMap rtDimensionMap [ ] = { {
rtwCAPI_SCALAR , 0 , 2 , 0 } , { rtwCAPI_MATRIX_COL_MAJOR , 2 , 2 , 0 } } ;
static const uint_T rtDimensionArray [ ] = { 1 , 1 , 2048 , 1 } ; static
const real_T rtcapiStoredFloats [ ] = { 0.0 , 1.0 , 7.8125E-5 , 3.90625E-5 }
; static const rtwCAPI_FixPtMap rtFixPtMap [ ] = { { ( NULL ) , ( NULL ) ,
rtwCAPI_FIX_RESERVED , 0 , 0 , ( boolean_T ) 0 } , { ( const void * ) &
rtcapiStoredFloats [ 1 ] , ( const void * ) & rtcapiStoredFloats [ 0 ] ,
rtwCAPI_FIX_UNIFORM_SCALING , 12 , - 12 , ( boolean_T ) 0 } , { ( const void
* ) & rtcapiStoredFloats [ 1 ] , ( const void * ) & rtcapiStoredFloats [ 0 ]
, rtwCAPI_FIX_UNIFORM_SCALING , 12 , - 12 , ( boolean_T ) 1 } } ; static
const rtwCAPI_SampleTimeMap rtSampleTimeMap [ ] = { { ( const void * ) &
rtcapiStoredFloats [ 2 ] , ( const void * ) & rtcapiStoredFloats [ 0 ] , (
int8_T ) 2 , ( uint8_T ) 0 } , { ( const void * ) & rtcapiStoredFloats [ 3 ]
, ( const void * ) & rtcapiStoredFloats [ 0 ] , ( int8_T ) 1 , ( uint8_T ) 0
} } ; static rtwCAPI_ModelMappingStaticInfo mmiStatic = { { rtBlockSignals ,
7 , rtRootInputs , 0 , rtRootOutputs , 0 } , { rtBlockParameters , 4 ,
rtModelParameters , 0 } , { ( NULL ) , 0 } , { rtDataTypeMap , rtDimensionMap
, rtFixPtMap , rtElementMap , rtSampleTimeMap , rtDimensionArray } , "float"
, { 2100977479U , 3844255430U , 978070657U , 1233519456U } , ( NULL ) , 0 , (
boolean_T ) 0 , rt_LoggedStateIdxList } ; const
rtwCAPI_ModelMappingStaticInfo * fixed_model_GetCAPIStaticMap ( void ) {
return & mmiStatic ; }
#ifndef HOST_CAPI_BUILD
void fixed_model_InitializeDataMapInfo ( void ) { rtwCAPI_SetVersion ( ( *
rt_dataMapInfoPtr ) . mmi , 1 ) ; rtwCAPI_SetStaticMap ( ( *
rt_dataMapInfoPtr ) . mmi , & mmiStatic ) ; rtwCAPI_SetLoggingStaticMap ( ( *
rt_dataMapInfoPtr ) . mmi , ( NULL ) ) ; rtwCAPI_SetDataAddressMap ( ( *
rt_dataMapInfoPtr ) . mmi , rtDataAddrMap ) ; rtwCAPI_SetVarDimsAddressMap (
( * rt_dataMapInfoPtr ) . mmi , rtVarDimsAddrMap ) ;
rtwCAPI_SetInstanceLoggingInfo ( ( * rt_dataMapInfoPtr ) . mmi , ( NULL ) ) ;
rtwCAPI_SetChildMMIArray ( ( * rt_dataMapInfoPtr ) . mmi , ( NULL ) ) ;
rtwCAPI_SetChildMMIArrayLen ( ( * rt_dataMapInfoPtr ) . mmi , 0 ) ; }
#else
#ifdef __cplusplus
extern "C" {
#endif
void fixed_model_host_InitializeDataMapInfo ( fixed_model_host_DataMapInfo_T
* dataMap , const char * path ) { rtwCAPI_SetVersion ( dataMap -> mmi , 1 ) ;
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

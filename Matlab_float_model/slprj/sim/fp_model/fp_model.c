#include "fp_model.h"
#include "rtwtypes.h"
#include "fp_model_private.h"
#include "MWDSPCG_FFT_Interleave_R2BR_D.h"
#include <emmintrin.h>
#include "MWDSPCG_R2DIT_TBLS_Z.h"
#include "MWDSPCG_FFT_DblLen_Z.h"
#include "sumColumnB_tFbr2DZL.h"
#include "mwmathutil.h"
#include "fp_model_capi.h"
#include <string.h>
static RegMdlInfo rtMdlInfo_fp_model [ 46 ] = { { "nt0bd1szwfg" ,
MDL_INFO_NAME_MDLREF_DWORK , 0 , - 1 , ( void * ) "fp_model" } , {
"nl1rgkgmna" , MDL_INFO_ID_GLOBAL_RTW_CONSTRUCT , 0 , - 1 , ( void * )
"fp_model" } , { "afla2ubvcz" , MDL_INFO_ID_GLOBAL_RTW_CONSTRUCT , 0 , - 1 ,
( void * ) "fp_model" } , { "hcuwoezcba" , MDL_INFO_ID_GLOBAL_RTW_CONSTRUCT ,
0 , - 1 , ( void * ) "fp_model" } , { "mva0g1v53a" ,
MDL_INFO_ID_GLOBAL_RTW_CONSTRUCT , 0 , - 1 , ( void * ) "fp_model" } , {
"mfbidiawef" , MDL_INFO_ID_GLOBAL_RTW_CONSTRUCT , 0 , - 1 , ( void * )
"fp_model" } , { "ex4rnjeko0" , MDL_INFO_ID_GLOBAL_RTW_CONSTRUCT , 0 , - 1 ,
( void * ) "fp_model" } , { "e5infblnxt" , MDL_INFO_ID_GLOBAL_RTW_CONSTRUCT ,
0 , - 1 , ( void * ) "fp_model" } , { "k10sfgaapa" ,
MDL_INFO_ID_GLOBAL_RTW_CONSTRUCT , 0 , - 1 , ( void * ) "fp_model" } , {
"jqc4jf1uiy" , MDL_INFO_ID_GLOBAL_RTW_CONSTRUCT , 0 , - 1 , ( void * )
"fp_model" } , { "f4guiugkdb" , MDL_INFO_ID_GLOBAL_RTW_CONSTRUCT , 0 , - 1 ,
( void * ) "fp_model" } , { "pb2gcnd4qn" , MDL_INFO_ID_GLOBAL_RTW_CONSTRUCT ,
0 , - 1 , ( void * ) "fp_model" } , { "k0bbvic25x" ,
MDL_INFO_ID_GLOBAL_RTW_CONSTRUCT , 0 , - 1 , ( void * ) "fp_model" } , {
"hu55tky4es" , MDL_INFO_ID_GLOBAL_RTW_CONSTRUCT , 0 , - 1 , ( void * )
"fp_model" } , { "nqdsctmkkc" , MDL_INFO_ID_GLOBAL_RTW_CONSTRUCT , 0 , - 1 ,
( void * ) "fp_model" } , { "dfi4ptkiax" , MDL_INFO_ID_GLOBAL_RTW_CONSTRUCT ,
0 , - 1 , ( void * ) "fp_model" } , { "lac2kloju2" ,
MDL_INFO_ID_GLOBAL_RTW_CONSTRUCT , 0 , - 1 , ( void * ) "fp_model" } , {
"grsr3lwstx" , MDL_INFO_ID_GLOBAL_RTW_CONSTRUCT , 0 , - 1 , ( void * )
"fp_model" } , { "ksgf00li5o" , MDL_INFO_ID_GLOBAL_RTW_CONSTRUCT , 0 , - 1 ,
( void * ) "fp_model" } , { "aisxmr5v0g" , MDL_INFO_ID_GLOBAL_RTW_CONSTRUCT ,
0 , - 1 , ( void * ) "fp_model" } , { "lkqpaif35r" ,
MDL_INFO_ID_GLOBAL_RTW_CONSTRUCT , 0 , - 1 , ( void * ) "fp_model" } , {
"mvra4sn0lq" , MDL_INFO_ID_GLOBAL_RTW_CONSTRUCT , 0 , - 1 , ( void * )
"fp_model" } , { "hxvqq3slwr" , MDL_INFO_ID_GLOBAL_RTW_CONSTRUCT , 0 , - 1 ,
( void * ) "fp_model" } , { "fp_model" , MDL_INFO_ID_GLOBAL_RTW_CONSTRUCT , 0
, 0 , ( NULL ) } , { "g3xqtxpprc" , MDL_INFO_ID_GLOBAL_RTW_CONSTRUCT , 0 , -
1 , ( void * ) "fp_model" } , { "hmvp0fi11ko" ,
MDL_INFO_ID_GLOBAL_RTW_CONSTRUCT , 0 , - 1 , ( void * ) "fp_model" } , {
"hmvp0fi11k" , MDL_INFO_ID_GLOBAL_RTW_CONSTRUCT , 0 , - 1 , ( void * )
"fp_model" } , { "gbqnpvikt43" , MDL_INFO_ID_GLOBAL_RTW_CONSTRUCT , 0 , - 1 ,
( void * ) "fp_model" } , { "f1kk5y0opp" , MDL_INFO_ID_GLOBAL_RTW_CONSTRUCT ,
0 , - 1 , ( void * ) "fp_model" } , { "cblbyci5dy" ,
MDL_INFO_ID_GLOBAL_RTW_CONSTRUCT , 0 , - 1 , ( void * ) "fp_model" } , {
"struct_nEAWNfhTll1UtDV8aniGT" , MDL_INFO_ID_DATA_TYPE , 0 , - 1 , ( NULL ) }
, { "struct_tWjMVrOBp0cYoZ8XXGA92G" , MDL_INFO_ID_DATA_TYPE , 0 , - 1 , (
NULL ) } , { "mr_fp_model_GetSimStateDisallowedBlocks" ,
MDL_INFO_ID_MODEL_FCN_NAME , 0 , - 1 , ( void * ) "fp_model" } , {
"mr_fp_model_extractBitFieldFromCellArrayWithOffset" ,
MDL_INFO_ID_MODEL_FCN_NAME , 0 , - 1 , ( void * ) "fp_model" } , {
"mr_fp_model_cacheBitFieldToCellArrayWithOffset" , MDL_INFO_ID_MODEL_FCN_NAME
, 0 , - 1 , ( void * ) "fp_model" } , {
"mr_fp_model_restoreDataFromMxArrayWithOffset" , MDL_INFO_ID_MODEL_FCN_NAME ,
0 , - 1 , ( void * ) "fp_model" } , {
"mr_fp_model_cacheDataToMxArrayWithOffset" , MDL_INFO_ID_MODEL_FCN_NAME , 0 ,
- 1 , ( void * ) "fp_model" } , { "mr_fp_model_extractBitFieldFromMxArray" ,
MDL_INFO_ID_MODEL_FCN_NAME , 0 , - 1 , ( void * ) "fp_model" } , {
"mr_fp_model_cacheBitFieldToMxArray" , MDL_INFO_ID_MODEL_FCN_NAME , 0 , - 1 ,
( void * ) "fp_model" } , { "mr_fp_model_restoreDataFromMxArray" ,
MDL_INFO_ID_MODEL_FCN_NAME , 0 , - 1 , ( void * ) "fp_model" } , {
"mr_fp_model_cacheDataAsMxArray" , MDL_INFO_ID_MODEL_FCN_NAME , 0 , - 1 , (
void * ) "fp_model" } , { "mr_fp_model_RegisterSimStateChecksum" ,
MDL_INFO_ID_MODEL_FCN_NAME , 0 , - 1 , ( void * ) "fp_model" } , {
"mr_fp_model_SetDWork" , MDL_INFO_ID_MODEL_FCN_NAME , 0 , - 1 , ( void * )
"fp_model" } , { "mr_fp_model_GetDWork" , MDL_INFO_ID_MODEL_FCN_NAME , 0 , -
1 , ( void * ) "fp_model" } , { "fp_model.h" , MDL_INFO_MODEL_FILENAME , 0 ,
- 1 , ( NULL ) } , { "fp_model.c" , MDL_INFO_MODEL_FILENAME , 0 , - 1 , (
void * ) "fp_model" } } ; gbqnpvikt43 gbqnpvikt4 = { 0.0 } ; void aisxmr5v0g
( k0bbvic25x * localDW ) { int32_T i ; for ( i = 0 ; i < 1023 ; i ++ ) {
localDW -> gaavansm5h [ i ] = gbqnpvikt4 . P_0 ; } localDW -> egar4djohu = 0
; localDW -> funf0lyujt = false ; } void ksgf00li5o ( k0bbvic25x * localDW )
{ int32_T i ; for ( i = 0 ; i < 1023 ; i ++ ) { localDW -> gaavansm5h [ i ] =
gbqnpvikt4 . P_0 ; } localDW -> egar4djohu = 0 ; localDW -> funf0lyujt =
false ; } void fp_model ( const real_T * hji2uwxwcd , creal_T fmfow4syn2 [
1024 ] , real_T * hj11ljezie , hu55tky4es * localB , k0bbvic25x * localDW ) {
__m128d tmp_p ; creal_T tmp ; real_T tmp_e [ 2 ] ; real_T ai ; real_T bim ;
real_T brm ; real_T d ; real_T fmliclu24u_p ; real_T sgnbi ; int32_T i ;
fmliclu24u_p = * hji2uwxwcd ; for ( i = 0 ; i < 1023 - localDW -> egar4djohu
; i ++ ) { localB -> jvm5tmqx4j_mbvzarwird [ i ] = localDW -> gaavansm5h [
localDW -> egar4djohu + i ] ; } for ( i = 0 ; i < localDW -> egar4djohu ; i
++ ) { localB -> jvm5tmqx4j_mbvzarwird [ ( i - localDW -> egar4djohu ) + 1023
] = localDW -> gaavansm5h [ i ] ; } localB -> jvm5tmqx4j_mbvzarwird [ 1023 ]
= fmliclu24u_p ; localDW -> gaavansm5h [ localDW -> egar4djohu ] =
fmliclu24u_p ; localDW -> egar4djohu ++ ; if ( localDW -> egar4djohu >= 1023
) { localDW -> egar4djohu -= 1023 ; } for ( i = 0 ; i <= 1022 ; i += 2 ) {
tmp_p = _mm_loadu_pd ( & localB -> jvm5tmqx4j_mbvzarwird [ i ] ) ;
_mm_storeu_pd ( & localB -> jvm5tmqx4j_mbvzarwird [ i ] , _mm_mul_pd ( tmp_p
, _mm_loadu_pd ( & hmvp0fi11ko . cgjkkoqvz2 [ i ] ) ) ) ; }
MWDSPCG_FFT_Interleave_R2BR_D ( & localB -> jvm5tmqx4j_mbvzarwird [ 0U ] , &
fmfow4syn2 [ 0U ] , 1 , 1024 ) ; MWDSPCG_R2DIT_TBLS_Z ( & fmfow4syn2 [ 0U ] ,
1 , 1024 , 512 , 0 , & hmvp0fi11ko . ih3f2xjm4c [ 0U ] , 2 , false ) ;
MWDSPCG_FFT_DblLen_Z ( & fmfow4syn2 [ 0U ] , 1 , 1024 , & hmvp0fi11ko .
ih3f2xjm4c [ 0U ] , 1 ) ; tmp = sumColumnB_tFbr2DZL ( fmfow4syn2 , 1 ) ;
fmliclu24u_p = fmfow4syn2 [ 0 ] . re ; ai = fmfow4syn2 [ 0 ] . im ; if ( tmp
. im == 0.0 ) { if ( ai == 0.0 ) { bim = fmliclu24u_p / tmp . re ;
fmliclu24u_p = 0.0 ; } else if ( fmliclu24u_p == 0.0 ) { bim = 0.0 ;
fmliclu24u_p = ai / tmp . re ; } else { _mm_storeu_pd ( & tmp_e [ 0 ] ,
_mm_div_pd ( _mm_set_pd ( ai , fmliclu24u_p ) , _mm_set1_pd ( tmp . re ) ) )
; bim = tmp_e [ 0 ] ; fmliclu24u_p = tmp_e [ 1 ] ; } } else if ( tmp . re ==
0.0 ) { if ( fmliclu24u_p == 0.0 ) { bim = ai / tmp . im ; fmliclu24u_p = 0.0
; } else if ( ai == 0.0 ) { bim = 0.0 ; fmliclu24u_p = - ( fmliclu24u_p / tmp
. im ) ; } else { bim = ai / tmp . im ; fmliclu24u_p = - ( fmliclu24u_p / tmp
. im ) ; } } else { brm = muDoubleScalarAbs ( tmp . re ) ; bim =
muDoubleScalarAbs ( tmp . im ) ; if ( brm > bim ) { brm = tmp . im / tmp . re
; d = brm * tmp . im + tmp . re ; bim = ( brm * ai + fmliclu24u_p ) / d ;
fmliclu24u_p = ( ai - brm * fmliclu24u_p ) / d ; } else if ( bim == brm ) {
if ( tmp . re > 0.0 ) { d = 0.5 ; } else { d = - 0.5 ; } if ( tmp . im > 0.0
) { sgnbi = 0.5 ; } else { sgnbi = - 0.5 ; } bim = ( fmliclu24u_p * d + ai *
sgnbi ) / brm ; fmliclu24u_p = ( ai * d - fmliclu24u_p * sgnbi ) / brm ; }
else { brm = tmp . re / tmp . im ; d = brm * tmp . re + tmp . im ; bim = (
brm * fmliclu24u_p + ai ) / d ; fmliclu24u_p = ( brm * ai - fmliclu24u_p ) /
d ; } } * hj11ljezie = muDoubleScalarHypot ( bim , fmliclu24u_p ) ; } void
dfi4ptkiax ( cblbyci5dy * const jrnszy5bwy ) { if ( !
slIsRapidAcceleratorSimulating ( ) ) { slmrRunPluginEvent ( jrnszy5bwy ->
_mdlRefSfcnS , "fp_model" , "SIMSTATUS_TERMINATING_MODELREF_ACCEL_EVENT" ) ;
} } void lkqpaif35r ( SimStruct * _mdlRefSfcnS , int_T mdlref_TID0 ,
cblbyci5dy * const jrnszy5bwy , k0bbvic25x * localDW , void * sysRanPtr , int
contextTid , rtwCAPI_ModelMappingInfo * rt_ParentMMI , const char_T *
rt_ChildPath , int_T rt_ChildMMIIdx , int_T rt_CSTATEIdx ) { ( void ) memset
( ( void * ) jrnszy5bwy , 0 , sizeof ( cblbyci5dy ) ) ; jrnszy5bwy -> Timing
. mdlref_GlobalTID [ 0 ] = mdlref_TID0 ; jrnszy5bwy -> _mdlRefSfcnS = (
_mdlRefSfcnS ) ; if ( ! slIsRapidAcceleratorSimulating ( ) ) {
slmrRunPluginEvent ( jrnszy5bwy -> _mdlRefSfcnS , "fp_model" ,
"START_OF_SIM_MODEL_MODELREF_ACCEL_EVENT" ) ; } ( void ) memset ( ( void * )
localDW , 0 , sizeof ( k0bbvic25x ) ) ; { int32_T i ; for ( i = 0 ; i < 1023
; i ++ ) { localDW -> gaavansm5h [ i ] = 0.0 ; } }
fp_model_InitializeDataMapInfo ( jrnszy5bwy , localDW , sysRanPtr ,
contextTid ) ; if ( ( rt_ParentMMI != ( NULL ) ) && ( rt_ChildPath != ( NULL
) ) ) { rtwCAPI_SetChildMMI ( * rt_ParentMMI , rt_ChildMMIIdx , & (
jrnszy5bwy -> DataMapInfo . mmi ) ) ; rtwCAPI_SetPath ( jrnszy5bwy ->
DataMapInfo . mmi , rt_ChildPath ) ; rtwCAPI_MMISetContStateStartIndex (
jrnszy5bwy -> DataMapInfo . mmi , rt_CSTATEIdx ) ; } } void
mr_fp_model_MdlInfoRegFcn ( SimStruct * mdlRefSfcnS , char_T * modelName ,
int_T * retVal ) { * retVal = 0 ; { boolean_T regSubmodelsMdlinfo = false ;
ssGetRegSubmodelsMdlinfo ( mdlRefSfcnS , & regSubmodelsMdlinfo ) ; if (
regSubmodelsMdlinfo ) { } } * retVal = 0 ; ssRegModelRefMdlInfo ( mdlRefSfcnS
, modelName , rtMdlInfo_fp_model , 46 ) ; * retVal = 1 ; } static void
mr_fp_model_cacheDataAsMxArray ( mxArray * destArray , mwIndex i , int j ,
const void * srcData , size_t numBytes ) ; static void
mr_fp_model_cacheDataAsMxArray ( mxArray * destArray , mwIndex i , int j ,
const void * srcData , size_t numBytes ) { mxArray * newArray =
mxCreateUninitNumericMatrix ( ( size_t ) 1 , numBytes , mxUINT8_CLASS ,
mxREAL ) ; memcpy ( ( uint8_T * ) mxGetData ( newArray ) , ( const uint8_T *
) srcData , numBytes ) ; mxSetFieldByNumber ( destArray , i , j , newArray )
; } static void mr_fp_model_restoreDataFromMxArray ( void * destData , const
mxArray * srcArray , mwIndex i , int j , size_t numBytes ) ; static void
mr_fp_model_restoreDataFromMxArray ( void * destData , const mxArray *
srcArray , mwIndex i , int j , size_t numBytes ) { memcpy ( ( uint8_T * )
destData , ( const uint8_T * ) mxGetData ( mxGetFieldByNumber ( srcArray , i
, j ) ) , numBytes ) ; } static void mr_fp_model_cacheBitFieldToMxArray (
mxArray * destArray , mwIndex i , int j , uint_T bitVal ) ; static void
mr_fp_model_cacheBitFieldToMxArray ( mxArray * destArray , mwIndex i , int j
, uint_T bitVal ) { mxSetFieldByNumber ( destArray , i , j ,
mxCreateDoubleScalar ( ( real_T ) bitVal ) ) ; } static uint_T
mr_fp_model_extractBitFieldFromMxArray ( const mxArray * srcArray , mwIndex i
, int j , uint_T numBits ) ; static uint_T
mr_fp_model_extractBitFieldFromMxArray ( const mxArray * srcArray , mwIndex i
, int j , uint_T numBits ) { const uint_T varVal = ( uint_T ) mxGetScalar (
mxGetFieldByNumber ( srcArray , i , j ) ) ; return varVal & ( ( 1u << numBits
) - 1u ) ; } static void mr_fp_model_cacheDataToMxArrayWithOffset ( mxArray *
destArray , mwIndex i , int j , mwIndex offset , const void * srcData ,
size_t numBytes ) ; static void mr_fp_model_cacheDataToMxArrayWithOffset (
mxArray * destArray , mwIndex i , int j , mwIndex offset , const void *
srcData , size_t numBytes ) { uint8_T * varData = ( uint8_T * ) mxGetData (
mxGetFieldByNumber ( destArray , i , j ) ) ; memcpy ( ( uint8_T * ) & varData
[ offset * numBytes ] , ( const uint8_T * ) srcData , numBytes ) ; } static
void mr_fp_model_restoreDataFromMxArrayWithOffset ( void * destData , const
mxArray * srcArray , mwIndex i , int j , mwIndex offset , size_t numBytes ) ;
static void mr_fp_model_restoreDataFromMxArrayWithOffset ( void * destData ,
const mxArray * srcArray , mwIndex i , int j , mwIndex offset , size_t
numBytes ) { const uint8_T * varData = ( const uint8_T * ) mxGetData (
mxGetFieldByNumber ( srcArray , i , j ) ) ; memcpy ( ( uint8_T * ) destData ,
( const uint8_T * ) & varData [ offset * numBytes ] , numBytes ) ; } static
void mr_fp_model_cacheBitFieldToCellArrayWithOffset ( mxArray * destArray ,
mwIndex i , int j , mwIndex offset , uint_T fieldVal ) ; static void
mr_fp_model_cacheBitFieldToCellArrayWithOffset ( mxArray * destArray ,
mwIndex i , int j , mwIndex offset , uint_T fieldVal ) { mxSetCell (
mxGetFieldByNumber ( destArray , i , j ) , offset , mxCreateDoubleScalar ( (
real_T ) fieldVal ) ) ; } static uint_T
mr_fp_model_extractBitFieldFromCellArrayWithOffset ( const mxArray * srcArray
, mwIndex i , int j , mwIndex offset , uint_T numBits ) ; static uint_T
mr_fp_model_extractBitFieldFromCellArrayWithOffset ( const mxArray * srcArray
, mwIndex i , int j , mwIndex offset , uint_T numBits ) { const uint_T
fieldVal = ( uint_T ) mxGetScalar ( mxGetCell ( mxGetFieldByNumber ( srcArray
, i , j ) , offset ) ) ; return fieldVal & ( ( 1u << numBits ) - 1u ) ; }
mxArray * mr_fp_model_GetDWork ( const nt0bd1szwfg * mdlrefDW ) { static
const char_T * ssDWFieldNames [ 3 ] = { "rtb" , "rtdw" , "NULL->rtzce" , } ;
mxArray * ssDW = mxCreateStructMatrix ( 1 , 1 , 3 , ssDWFieldNames ) ;
mr_fp_model_cacheDataAsMxArray ( ssDW , 0 , 0 , ( const void * ) & ( mdlrefDW
-> rtb ) , sizeof ( mdlrefDW -> rtb ) ) ; { static const char_T *
rtdwDataFieldNames [ 3 ] = { "mdlrefDW->rtdw.gaavansm5h" ,
"mdlrefDW->rtdw.egar4djohu" , "mdlrefDW->rtdw.funf0lyujt" , } ; mxArray *
rtdwData = mxCreateStructMatrix ( 1 , 1 , 3 , rtdwDataFieldNames ) ;
mr_fp_model_cacheDataAsMxArray ( rtdwData , 0 , 0 , ( const void * ) & (
mdlrefDW -> rtdw . gaavansm5h ) , sizeof ( mdlrefDW -> rtdw . gaavansm5h ) )
; mr_fp_model_cacheDataAsMxArray ( rtdwData , 0 , 1 , ( const void * ) & (
mdlrefDW -> rtdw . egar4djohu ) , sizeof ( mdlrefDW -> rtdw . egar4djohu ) )
; mr_fp_model_cacheDataAsMxArray ( rtdwData , 0 , 2 , ( const void * ) & (
mdlrefDW -> rtdw . funf0lyujt ) , sizeof ( mdlrefDW -> rtdw . funf0lyujt ) )
; mxSetFieldByNumber ( ssDW , 0 , 1 , rtdwData ) ; } ( void ) mdlrefDW ;
return ssDW ; } void mr_fp_model_SetDWork ( nt0bd1szwfg * mdlrefDW , const
mxArray * ssDW ) { ( void ) ssDW ; ( void ) mdlrefDW ;
mr_fp_model_restoreDataFromMxArray ( ( void * ) & ( mdlrefDW -> rtb ) , ssDW
, 0 , 0 , sizeof ( mdlrefDW -> rtb ) ) ; { const mxArray * rtdwData =
mxGetFieldByNumber ( ssDW , 0 , 1 ) ; mr_fp_model_restoreDataFromMxArray ( (
void * ) & ( mdlrefDW -> rtdw . gaavansm5h ) , rtdwData , 0 , 0 , sizeof (
mdlrefDW -> rtdw . gaavansm5h ) ) ; mr_fp_model_restoreDataFromMxArray ( (
void * ) & ( mdlrefDW -> rtdw . egar4djohu ) , rtdwData , 0 , 1 , sizeof (
mdlrefDW -> rtdw . egar4djohu ) ) ; mr_fp_model_restoreDataFromMxArray ( (
void * ) & ( mdlrefDW -> rtdw . funf0lyujt ) , rtdwData , 0 , 2 , sizeof (
mdlrefDW -> rtdw . funf0lyujt ) ) ; } } void
mr_fp_model_RegisterSimStateChecksum ( SimStruct * S ) { const uint32_T
chksum [ 4 ] = { 1225761474U , 2166540473U , 2721222342U , 33396189U , } ;
slmrModelRefRegisterSimStateChecksum ( S , "fp_model" , & chksum [ 0 ] ) ; }
mxArray * mr_fp_model_GetSimStateDisallowedBlocks ( ) { return ( NULL ) ; }
#if defined(_MSC_VER)
#pragma warning(disable: 4505) //unreferenced local function has been removed
#endif

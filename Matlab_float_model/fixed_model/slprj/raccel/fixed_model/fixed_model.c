#include "fixed_model.h"
#include "rtwtypes.h"
#include "mwmathutil.h"
#include "fixed_model_private.h"
#include "rt_logging_mmi.h"
#include "fixed_model_capi.h"
#include "fixed_model_dt.h"
extern void * CreateDiagnosticAsVoidPtr_wrapper ( const char * id , int nargs
, ... ) ; extern ssExecutionInfo gblExecutionInfo ; RTWExtModeInfo *
gblRTWExtModeInfo = NULL ; void raccelForceExtModeShutdown ( boolean_T
extModeStartPktReceived ) { if ( ! extModeStartPktReceived ) { boolean_T
stopRequested = false ; rtExtModeWaitForStartPkt ( gblRTWExtModeInfo , 3 , &
stopRequested ) ; } rtExtModeShutdown ( 3 ) ; }
#include "slsv_diagnostic_codegen_c_api.h"
#include "slsa_engine_exec.h"
#ifdef RSIM_WITH_SOLVER_MULTITASKING
boolean_T gbl_raccel_isMultitasking = 1 ;
#else
boolean_T gbl_raccel_isMultitasking = 0 ;
#endif
boolean_T gbl_raccel_tid01eq = 0 ; int_T gbl_raccel_NumST = 4 ; const char_T
* gbl_raccel_Version = "24.1 (R2024a) 19-Nov-2023" ; void
raccel_setup_MMIStateLog ( SimStruct * S ) {
#ifdef UseMMIDataLogging
rt_FillStateSigInfoFromMMI ( ssGetRTWLogInfo ( S ) , & ssGetErrorStatus ( S )
) ;
#else
UNUSED_PARAMETER ( S ) ;
#endif
} static DataMapInfo rt_dataMapInfo ; DataMapInfo * rt_dataMapInfoPtr = &
rt_dataMapInfo ; rtwCAPI_ModelMappingInfo * rt_modelMapInfoPtr = & (
rt_dataMapInfo . mmi ) ; int_T enableFcnCallFlag [ ] = { 1 , 1 , 1 , 1 } ;
const char * raccelLoadInputsAndAperiodicHitTimes ( SimStruct * S , const
char * inportFileName , int * matFileFormat ) { return
rt_RAccelReadInportsMatFile ( S , inportFileName , matFileFormat ) ; }
#include "simstruc.h"
#include "fixedpoint.h"
#include "slsa_engine_exec.h"
#include "simtarget/slSimTgtSLExecSimBridge.h"
B rtB ; DW rtDW ; static SimStruct model_S ; SimStruct * const rtS = &
model_S ; void MWDSPCG_FFT_Interleave_R2BR_YCs12n12_Xu12n12_c_s ( const
uint16_T x [ ] , cint16_T y [ ] , int32_T nChans , int32_T nRows ) { int32_T
bit_fftLen ; int32_T br_j ; int32_T j ; int32_T nChansBy2 ; int32_T uIdx ;
int32_T yIdx ; uint16_T tmp ; br_j = 0 ; yIdx = 0 ; uIdx = 0 ; for (
nChansBy2 = nChans >> 1 ; nChansBy2 != 0 ; nChansBy2 -- ) { for ( j = nRows ;
j - 1 > 0 ; j -- ) { tmp = x [ uIdx ] ; if ( tmp > 2047 ) { tmp = 2047U ; } y
[ yIdx + br_j ] . re = ( int16_T ) tmp ; tmp = x [ uIdx + nRows ] ; if ( tmp
> 2047 ) { tmp = 2047U ; } y [ yIdx + br_j ] . im = ( int16_T ) tmp ; uIdx ++
; bit_fftLen = nRows ; do { bit_fftLen = ( int32_T ) ( ( uint32_T )
bit_fftLen >> 1 ) ; br_j ^= bit_fftLen ; } while ( ( br_j & bit_fftLen ) == 0
) ; } tmp = x [ uIdx ] ; if ( tmp > 2047 ) { tmp = 2047U ; } y [ yIdx + br_j
] . re = ( int16_T ) tmp ; tmp = x [ uIdx + nRows ] ; if ( tmp > 2047 ) { tmp
= 2047U ; } y [ yIdx + br_j ] . im = ( int16_T ) tmp ; uIdx = ( uIdx + nRows
) + 1 ; yIdx += nRows << 1 ; br_j = 0 ; } if ( ( ( uint32_T ) nChans & 1U )
!= 0U ) { for ( j = nRows >> 1 ; j - 1 > 0 ; j -- ) { tmp = x [ uIdx ] ; if (
tmp > 2047 ) { tmp = 2047U ; } y [ yIdx + br_j ] . re = ( int16_T ) tmp ; tmp
= x [ uIdx + 1 ] ; if ( tmp > 2047 ) { tmp = 2047U ; } y [ yIdx + br_j ] . im
= ( int16_T ) tmp ; uIdx += 2 ; bit_fftLen = nRows >> 1 ; do { bit_fftLen = (
int32_T ) ( ( uint32_T ) bit_fftLen >> 1 ) ; br_j ^= bit_fftLen ; } while ( (
br_j & bit_fftLen ) == 0 ) ; } tmp = x [ uIdx ] ; if ( tmp > 2047 ) { tmp =
2047U ; } y [ yIdx + br_j ] . re = ( int16_T ) tmp ; tmp = x [ uIdx + 1 ] ;
if ( tmp > 2047 ) { tmp = 2047U ; } y [ yIdx + br_j ] . im = ( int16_T ) tmp
; } } void MWDSPCG_R2DIT_TBLS_Ys12n12C_Ts12n11_As16n12_Ps16n12_c_s_SCL (
cint16_T y [ ] , int32_T nChans , int32_T nRows , int32_T fftLen , int32_T
offset , const int16_T tablePtr [ ] , int32_T twiddleStep , boolean_T
isInverse ) { int32_T i1 ; int32_T i2 ; int32_T iCh ; int32_T idelta ;
int32_T imagOffset ; int32_T istart ; int32_T ix ; int32_T j ; int32_T k ;
int32_T kratio ; int32_T nHalf ; int32_T nQtr ; int32_T offsetCh ; int16_T
mulTmp_im ; int16_T mulTmp_re ; int16_T temp2Im ; int16_T temp2Re ; int16_T
twidIm ; int16_T twidRe ; nHalf = ( fftLen >> 1 ) * twiddleStep ; nQtr =
nHalf >> 1 ; if ( isInverse ) { imagOffset = 0 ; } else { imagOffset = nHalf
; } offsetCh = offset ; for ( iCh = 0 ; iCh < nChans ; iCh ++ ) { for ( ix =
offsetCh ; ix < ( fftLen + offsetCh ) - 1 ; ix += 2 ) { twidIm = y [ ix + 1 ]
. re ; twidRe = y [ ix + 1 ] . im ; temp2Re = ( int16_T ) ( ( ( int16_T ) ( y
[ ix ] . re + twidIm ) + 1 ) >> 1 ) ; if ( temp2Re > 2047 ) { temp2Re = 2047
; } else if ( temp2Re < - 2048 ) { temp2Re = - 2048 ; } temp2Im = ( int16_T )
( ( ( int16_T ) ( y [ ix ] . im + twidRe ) + 1 ) >> 1 ) ; if ( temp2Im > 2047
) { temp2Im = 2047 ; } else if ( temp2Im < - 2048 ) { temp2Im = - 2048 ; }
mulTmp_re = ( int16_T ) ( ( ( int16_T ) ( y [ ix ] . re - twidIm ) + 1 ) >> 1
) ; if ( mulTmp_re > 2047 ) { mulTmp_re = 2047 ; } else if ( mulTmp_re < -
2048 ) { mulTmp_re = - 2048 ; } y [ ix + 1 ] . re = mulTmp_re ; mulTmp_re = (
int16_T ) ( ( ( int16_T ) ( y [ ix ] . im - twidRe ) + 1 ) >> 1 ) ; if (
mulTmp_re > 2047 ) { mulTmp_re = 2047 ; } else if ( mulTmp_re < - 2048 ) {
mulTmp_re = - 2048 ; } y [ ix + 1 ] . im = mulTmp_re ; y [ ix ] . re =
temp2Re ; y [ ix ] . im = temp2Im ; } idelta = 2 ; k = fftLen >> 2 ; kratio =
k * twiddleStep ; while ( k > 0 ) { i1 = offsetCh ; for ( ix = 0 ; ix < k ;
ix ++ ) { i2 = i1 + idelta ; twidIm = y [ i2 ] . re ; twidRe = y [ i2 ] . im
; temp2Re = ( int16_T ) ( ( ( int16_T ) ( y [ i1 ] . re + twidIm ) + 1 ) >> 1
) ; if ( temp2Re > 2047 ) { temp2Re = 2047 ; } else if ( temp2Re < - 2048 ) {
temp2Re = - 2048 ; } temp2Im = ( int16_T ) ( ( ( int16_T ) ( y [ i1 ] . im +
twidRe ) + 1 ) >> 1 ) ; if ( temp2Im > 2047 ) { temp2Im = 2047 ; } else if (
temp2Im < - 2048 ) { temp2Im = - 2048 ; } mulTmp_re = ( int16_T ) ( ( (
int16_T ) ( y [ i1 ] . re - twidIm ) + 1 ) >> 1 ) ; if ( mulTmp_re > 2047 ) {
mulTmp_re = 2047 ; } else if ( mulTmp_re < - 2048 ) { mulTmp_re = - 2048 ; }
y [ i2 ] . re = mulTmp_re ; mulTmp_re = ( int16_T ) ( ( ( int16_T ) ( y [ i1
] . im - twidRe ) + 1 ) >> 1 ) ; if ( mulTmp_re > 2047 ) { mulTmp_re = 2047 ;
} else if ( mulTmp_re < - 2048 ) { mulTmp_re = - 2048 ; } y [ i2 ] . im =
mulTmp_re ; y [ i1 ] . re = temp2Re ; y [ i1 ] . im = temp2Im ; i1 += idelta
<< 1 ; } istart = offsetCh ; for ( j = kratio ; j < nHalf ; j += kratio ) {
i1 = istart + 1 ; twidRe = tablePtr [ j + nQtr ] ; twidIm = tablePtr [ j +
imagOffset ] ; for ( ix = 0 ; ix < k ; ix ++ ) { i2 = i1 + idelta ; mulTmp_re
= ( int16_T ) ( ( int16_T ) ( ( y [ i2 ] . re * twidRe + 2047 ) >> 11 ) - (
int16_T ) ( ( y [ i2 ] . im * twidIm + 2047 ) >> 11 ) ) ; if ( mulTmp_re >
2047 ) { mulTmp_re = 2047 ; } else if ( mulTmp_re < - 2048 ) { mulTmp_re = -
2048 ; } mulTmp_im = ( int16_T ) ( ( int16_T ) ( ( y [ i2 ] . re * twidIm +
2047 ) >> 11 ) + ( int16_T ) ( ( y [ i2 ] . im * twidRe + 2047 ) >> 11 ) ) ;
if ( mulTmp_im > 2047 ) { mulTmp_im = 2047 ; } else if ( mulTmp_im < - 2048 )
{ mulTmp_im = - 2048 ; } temp2Re = ( int16_T ) ( ( ( int16_T ) ( y [ i1 ] .
re + mulTmp_re ) + 1 ) >> 1 ) ; if ( temp2Re > 2047 ) { temp2Re = 2047 ; }
else if ( temp2Re < - 2048 ) { temp2Re = - 2048 ; } temp2Im = ( int16_T ) ( (
( int16_T ) ( y [ i1 ] . im + mulTmp_im ) + 1 ) >> 1 ) ; if ( temp2Im > 2047
) { temp2Im = 2047 ; } else if ( temp2Im < - 2048 ) { temp2Im = - 2048 ; }
mulTmp_re = ( int16_T ) ( ( ( int16_T ) ( y [ i1 ] . re - mulTmp_re ) + 1 )
>> 1 ) ; if ( mulTmp_re > 2047 ) { mulTmp_re = 2047 ; } else if ( mulTmp_re <
- 2048 ) { mulTmp_re = - 2048 ; } y [ i2 ] . re = mulTmp_re ; mulTmp_re = (
int16_T ) ( ( ( int16_T ) ( y [ i1 ] . im - mulTmp_im ) + 1 ) >> 1 ) ; if (
mulTmp_re > 2047 ) { mulTmp_re = 2047 ; } else if ( mulTmp_re < - 2048 ) {
mulTmp_re = - 2048 ; } y [ i2 ] . im = mulTmp_re ; y [ i1 ] . re = temp2Re ;
y [ i1 ] . im = temp2Im ; i1 += idelta << 1 ; } istart ++ ; } idelta <<= 1 ;
k >>= 1 ; kratio >>= 1 ; } offsetCh += nRows ; } } void
MWDSPCG_FFT_DblLen_Nrm_YCs12n12s12n11_As16n12_Ps16n12_c_s ( cint16_T y [ ] ,
int32_T nChans , int32_T nRows , const int16_T twiddleTable [ ] , int32_T
twiddleStep ) { int32_T N2 ; int32_T N4 ; int32_T ix ; int32_T k ; int32_T
tmp_p ; int32_T yIdx ; int16_T cTemp_im ; int16_T cTemp_re ; int16_T
tempOut0Im ; int16_T tempOut0Re ; int16_T tmp ; N2 = nRows >> 1 ; N4 = N2 >>
1 ; yIdx = ( nChans - 1 ) * nRows ; if ( nRows > 2 ) { tempOut0Re = ( int16_T
) ( ( y [ N4 + yIdx ] . re + 1 ) >> 1 ) ; tempOut0Im = ( int16_T ) ( ( y [ N4
+ yIdx ] . im + 1 ) >> 1 ) ; y [ ( N2 + N4 ) + yIdx ] . re = tempOut0Re ; y [
( N2 + N4 ) + yIdx ] . im = tempOut0Im ; y [ N4 + yIdx ] . re = tempOut0Re ;
tmp_p = - tempOut0Im ; if ( - tempOut0Im > 2047 ) { tmp_p = 2047 ; } else if
( - tempOut0Im < - 2048 ) { tmp_p = - 2048 ; } y [ N4 + yIdx ] . im = (
int16_T ) tmp_p ; } if ( nRows > 1 ) { tmp = ( int16_T ) ( ( ( int16_T ) ( y
[ yIdx ] . re - y [ yIdx ] . im ) + 1 ) >> 1 ) ; if ( tmp > 2047 ) { tmp =
2047 ; } else if ( tmp < - 2048 ) { tmp = - 2048 ; } y [ N2 + yIdx ] . re =
tmp ; y [ N2 + yIdx ] . im = 0 ; } tmp = ( int16_T ) ( ( ( int16_T ) ( y [
yIdx ] . re + y [ yIdx ] . im ) + 1 ) >> 1 ) ; if ( tmp > 2047 ) { tmp = 2047
; } else if ( tmp < - 2048 ) { tmp = - 2048 ; } y [ yIdx ] . re = tmp ; y [
yIdx ] . im = 0 ; k = twiddleStep ; for ( ix = 1 ; ix < N4 ; ix ++ ) {
tempOut0Re = ( int16_T ) ( ( ( int16_T ) ( y [ ( N2 - ix ) + yIdx ] . re + y
[ ix + yIdx ] . re ) + 3 ) >> 2 ) ; if ( tempOut0Re > 2047 ) { tempOut0Re =
2047 ; } else if ( tempOut0Re < - 2048 ) { tempOut0Re = - 2048 ; } tempOut0Im
= ( int16_T ) ( ( ( int16_T ) ( y [ ix + yIdx ] . im - y [ ( N2 - ix ) + yIdx
] . im ) + 3 ) >> 2 ) ; if ( tempOut0Im > 2047 ) { tempOut0Im = 2047 ; } else
if ( tempOut0Im < - 2048 ) { tempOut0Im = - 2048 ; } tmp = y [ ( N2 - ix ) +
yIdx ] . re ; cTemp_re = y [ ix + yIdx ] . re ; cTemp_im = ( int16_T ) ( ( (
int16_T ) ( y [ ( N2 - ix ) + yIdx ] . im + y [ ix + yIdx ] . im ) + 3 ) >> 2
) ; if ( cTemp_im > 2047 ) { cTemp_im = 2047 ; } else if ( cTemp_im < - 2048
) { cTemp_im = - 2048 ; } y [ ix + yIdx ] . re = cTemp_im ; tmp = ( int16_T )
( ( ( int16_T ) ( tmp - cTemp_re ) + 3 ) >> 2 ) ; if ( tmp > 2047 ) { tmp =
2047 ; } else if ( tmp < - 2048 ) { tmp = - 2048 ; } y [ ix + yIdx ] . im =
tmp ; cTemp_re = ( int16_T ) ( ( int16_T ) ( ( twiddleTable [ N4 *
twiddleStep + k ] * y [ ix + yIdx ] . re + 2047 ) >> 11 ) - ( int16_T ) ( (
twiddleTable [ N2 * twiddleStep + k ] * y [ ix + yIdx ] . im + 2047 ) >> 11 )
) ; if ( cTemp_re > 2047 ) { cTemp_re = 2047 ; } else if ( cTemp_re < - 2048
) { cTemp_re = - 2048 ; } cTemp_im = ( int16_T ) ( ( int16_T ) ( (
twiddleTable [ N4 * twiddleStep + k ] * y [ ix + yIdx ] . im + 2047 ) >> 11 )
+ ( int16_T ) ( ( twiddleTable [ N2 * twiddleStep + k ] * y [ ix + yIdx ] .
re + 2047 ) >> 11 ) ) ; if ( cTemp_im > 2047 ) { cTemp_im = 2047 ; } else if
( cTemp_im < - 2048 ) { cTemp_im = - 2048 ; } tmp = ( int16_T ) ( tempOut0Re
+ cTemp_re ) ; if ( tmp > 2047 ) { tmp = 2047 ; } else if ( tmp < - 2048 ) {
tmp = - 2048 ; } y [ ix + yIdx ] . re = tmp ; tmp = ( int16_T ) ( tempOut0Im
+ cTemp_im ) ; if ( tmp > 2047 ) { tmp = 2047 ; } else if ( tmp < - 2048 ) {
tmp = - 2048 ; } y [ ix + yIdx ] . im = tmp ; tmp = y [ ix + yIdx ] . im ; y
[ ( nRows - ix ) + yIdx ] . re = y [ ix + yIdx ] . re ; tmp_p = - y [ ix +
yIdx ] . im ; if ( - tmp > 2047 ) { tmp_p = 2047 ; } else if ( - tmp < - 2048
) { tmp_p = - 2048 ; } y [ ( nRows - ix ) + yIdx ] . im = ( int16_T ) tmp_p ;
tmp = ( int16_T ) ( tempOut0Re - cTemp_re ) ; if ( tmp > 2047 ) { tmp = 2047
; } else if ( tmp < - 2048 ) { tmp = - 2048 ; } y [ ( N2 + ix ) + yIdx ] . re
= tmp ; tmp = ( int16_T ) ( tempOut0Im - cTemp_im ) ; if ( tmp > 2047 ) { tmp
= 2047 ; } else if ( tmp < - 2048 ) { tmp = - 2048 ; } y [ ( N2 + ix ) + yIdx
] . im = tmp ; tmp = y [ ( N2 + ix ) + yIdx ] . im ; y [ ( N2 - ix ) + yIdx ]
. re = y [ ( N2 + ix ) + yIdx ] . re ; tmp_p = - y [ ( N2 + ix ) + yIdx ] .
im ; if ( - tmp > 2047 ) { tmp_p = 2047 ; } else if ( - tmp < - 2048 ) {
tmp_p = - 2048 ; } y [ ( N2 - ix ) + yIdx ] . im = ( int16_T ) tmp_p ; k +=
twiddleStep ; } } void MdlInitialize ( void ) { int32_T i ; rtDW . eqwblmcedm
= false ; rtDW . ohndf50qyn = 0.0 ; rtDW . nv3w34tckf = false ; rtDW .
ccx4hqwlgd = 0.0 ; for ( i = 0 ; i < 2047 ; i ++ ) { rtDW . nnt4zufick [ i ]
= rtP . Buffer_ic ; } rtDW . nwjvykniub = 0 ; } void MdlStart ( void ) { {
bool externalInputIsInDatasetFormat = false ; void * pISigstreamManager =
rt_GetISigstreamManager ( rtS ) ;
rtwISigstreamManagerGetInputIsInDatasetFormat ( pISigstreamManager , &
externalInputIsInDatasetFormat ) ; if ( externalInputIsInDatasetFormat ) { }
} { RTWLogSignalInfo rt_ScopeSignalInfo ; static int_T rt_ScopeSignalWidths [
] = { 2048 , 1 , 1 , 1 } ; static int_T rt_ScopeSignalNumDimensions [ ] = { 2
, 2 , 2 , 2 } ; static int_T rt_ScopeSignalDimensions [ ] = { 2048 , 1 , 1 ,
1 , 1 , 1 , 1 , 1 } ; static void * rt_ScopeCurrSigDims [ ] = { ( NULL ) , (
NULL ) , ( NULL ) , ( NULL ) , ( NULL ) , ( NULL ) , ( NULL ) , ( NULL ) } ;
static int_T rt_ScopeCurrSigDimsSize [ ] = { 4 , 4 , 4 , 4 , 4 , 4 , 4 , 4 }
; static const char_T * rt_ScopeSignalLabels [ ] = { "FFT" , "RMS" , "Min" ,
"Max" } ; static char_T rt_ScopeSignalTitles [ ] = "FFTRMSMinMax" ; static
int_T rt_ScopeSignalTitleLengths [ ] = { 3 , 3 , 3 , 3 } ; static boolean_T
rt_ScopeSignalIsVarDims [ ] = { 0 , 0 , 0 , 0 } ; static int_T
rt_ScopeSignalPlotStyles [ ] = { 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 ,
1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1
, 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 ,
1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1
, 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 ,
1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1
, 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 ,
1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1
, 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 ,
1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1
, 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 ,
1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1
, 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 ,
1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1
, 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 ,
1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1
, 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 ,
1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1
, 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 ,
1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1
, 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 ,
1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1
, 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 ,
1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1
, 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 ,
1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1
, 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 ,
1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1
, 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 ,
1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1
, 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 ,
1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1
, 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 ,
1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1
, 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 ,
1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1
, 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 ,
1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1
, 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 ,
1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1
, 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 ,
1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1
, 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 ,
1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1
, 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 ,
1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1
, 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 ,
1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1
, 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 ,
1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1
, 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 ,
1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1
, 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 ,
1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1
, 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 ,
1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1
, 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 ,
1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1
, 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 ,
1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1
, 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 ,
1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1
, 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 ,
1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1
, 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 ,
1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1
, 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 ,
1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1
, 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 ,
1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1
, 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 ,
1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1
, 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 ,
1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1
, 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 ,
1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1
, 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 ,
1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1
, 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 ,
1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1
, 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 ,
1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1
, 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 ,
1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1
, 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 ,
1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1
, 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 ,
1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1
, 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 ,
1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1
, 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 ,
1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1
, 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 ,
1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1
, 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 ,
1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1
, 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 ,
1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1
, 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 ,
1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1
, 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 ,
1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1
, 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 ,
1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1
, 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 ,
1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 } ; BuiltInDTypeId dTypes [ 4 ]
= { SS_DOUBLE , SS_DOUBLE , SS_DOUBLE , SS_DOUBLE } ; static char_T
rt_ScopeBlockName [ ] = "fixed_model/Scope" ; static int_T rt_ScopeFrameData
[ ] = { 0 , 0 , 0 , 0 } ; static RTWPreprocessingFcnPtr
rt_ScopeSignalLoggingPreprocessingFcnPtrs [ ] = { ( NULL ) , ( NULL ) , (
NULL ) , ( NULL ) , ( NULL ) , ( NULL ) , ( NULL ) , ( NULL ) } ;
rt_ScopeSignalInfo . numSignals = 4 ; rt_ScopeSignalInfo . numCols =
rt_ScopeSignalWidths ; rt_ScopeSignalInfo . numDims =
rt_ScopeSignalNumDimensions ; rt_ScopeSignalInfo . dims =
rt_ScopeSignalDimensions ; rt_ScopeSignalInfo . isVarDims =
rt_ScopeSignalIsVarDims ; rt_ScopeSignalInfo . currSigDims =
rt_ScopeCurrSigDims ; rt_ScopeSignalInfo . currSigDimsSize =
rt_ScopeCurrSigDimsSize ; rt_ScopeSignalInfo . dataTypes = dTypes ;
rt_ScopeSignalInfo . complexSignals = ( NULL ) ; rt_ScopeSignalInfo .
frameData = rt_ScopeFrameData ; rt_ScopeSignalInfo . preprocessingPtrs =
rt_ScopeSignalLoggingPreprocessingFcnPtrs ; rt_ScopeSignalInfo . labels .
cptr = rt_ScopeSignalLabels ; rt_ScopeSignalInfo . titles =
rt_ScopeSignalTitles ; rt_ScopeSignalInfo . titleLengths =
rt_ScopeSignalTitleLengths ; rt_ScopeSignalInfo . plotStyles =
rt_ScopeSignalPlotStyles ; rt_ScopeSignalInfo . blockNames . cptr = ( NULL )
; rt_ScopeSignalInfo . stateNames . cptr = ( NULL ) ; rt_ScopeSignalInfo .
crossMdlRef = ( NULL ) ; rt_ScopeSignalInfo . dataTypeConvert = ( NULL ) ;
rtDW . ldmmcxssq0 . LoggedData [ 0 ] = rt_CreateStructLogVar (
ssGetRTWLogInfo ( rtS ) , ssGetTStart ( rtS ) , ssGetTFinal ( rtS ) , 0.0 , (
& ssGetErrorStatus ( rtS ) ) , "fixed_point" , 1 , 0 , 1 , 7.8125E-5 , &
rt_ScopeSignalInfo , rt_ScopeBlockName ) ; if ( rtDW . ldmmcxssq0 .
LoggedData [ 0 ] == ( NULL ) ) return ; } { RTWLogSignalInfo
rt_ScopeSignalInfo ; static int_T rt_ScopeSignalWidths [ ] = { 1 } ; static
int_T rt_ScopeSignalNumDimensions [ ] = { 2 } ; static int_T
rt_ScopeSignalDimensions [ ] = { 1 , 1 } ; static void * rt_ScopeCurrSigDims
[ ] = { ( NULL ) , ( NULL ) } ; static int_T rt_ScopeCurrSigDimsSize [ ] = {
4 , 4 } ; static const char_T * rt_ScopeSignalLabels [ ] = { "" } ; static
char_T rt_ScopeSignalTitles [ ] = "" ; static int_T
rt_ScopeSignalTitleLengths [ ] = { 0 } ; static boolean_T
rt_ScopeSignalIsVarDims [ ] = { 0 } ; static int_T rt_ScopeSignalPlotStyles [
] = { 1 } ; BuiltInDTypeId dTypes [ 1 ] = { SS_DOUBLE } ; static char_T
rt_ScopeBlockName [ ] = "fixed_model/Scope2" ; static int_T rt_ScopeFrameData
[ ] = { 0 } ; static RTWPreprocessingFcnPtr
rt_ScopeSignalLoggingPreprocessingFcnPtrs [ ] = { ( NULL ) , ( NULL ) } ;
rt_ScopeSignalInfo . numSignals = 1 ; rt_ScopeSignalInfo . numCols =
rt_ScopeSignalWidths ; rt_ScopeSignalInfo . numDims =
rt_ScopeSignalNumDimensions ; rt_ScopeSignalInfo . dims =
rt_ScopeSignalDimensions ; rt_ScopeSignalInfo . isVarDims =
rt_ScopeSignalIsVarDims ; rt_ScopeSignalInfo . currSigDims =
rt_ScopeCurrSigDims ; rt_ScopeSignalInfo . currSigDimsSize =
rt_ScopeCurrSigDimsSize ; rt_ScopeSignalInfo . dataTypes = dTypes ;
rt_ScopeSignalInfo . complexSignals = ( NULL ) ; rt_ScopeSignalInfo .
frameData = rt_ScopeFrameData ; rt_ScopeSignalInfo . preprocessingPtrs =
rt_ScopeSignalLoggingPreprocessingFcnPtrs ; rt_ScopeSignalInfo . labels .
cptr = rt_ScopeSignalLabels ; rt_ScopeSignalInfo . titles =
rt_ScopeSignalTitles ; rt_ScopeSignalInfo . titleLengths =
rt_ScopeSignalTitleLengths ; rt_ScopeSignalInfo . plotStyles =
rt_ScopeSignalPlotStyles ; rt_ScopeSignalInfo . blockNames . cptr = ( NULL )
; rt_ScopeSignalInfo . stateNames . cptr = ( NULL ) ; rt_ScopeSignalInfo .
crossMdlRef = ( NULL ) ; rt_ScopeSignalInfo . dataTypeConvert = ( NULL ) ;
rtDW . akgc1wzhai . LoggedData = rt_CreateStructLogVar ( ssGetRTWLogInfo (
rtS ) , ssGetTStart ( rtS ) , ssGetTFinal ( rtS ) , 0.0 , ( &
ssGetErrorStatus ( rtS ) ) , "Wave_Quant_diff" , 1 , 0 , 1 , 7.8125E-5 , &
rt_ScopeSignalInfo , rt_ScopeBlockName ) ; if ( rtDW . akgc1wzhai .
LoggedData == ( NULL ) ) return ; } MdlInitialize ( ) ; } void MdlOutputs (
int_T tid ) { real_T f1r2lrv54d ; real_T tempLastSin ; real_T timeFreqProduct
; int32_T i ; uint32_T tmp ; uint16_T kmivvxdqax [ 2048 ] ; uint16_T
jn5tyydr3u ; if ( ssIsSampleHit ( rtS , 1 , 0 ) ) { timeFreqProduct =
ssGetTaskTime ( rtS , 1 ) * 314.15926535897933 ; if ( rtDW . eqwblmcedm ) {
tempLastSin = rtDW . ohndf50qyn ; } else { tempLastSin = muDoubleScalarSin (
timeFreqProduct ) ; } rtDW . eqwblmcedm = true ; if ( rtDW . nv3w34tckf ) {
timeFreqProduct = rtDW . ccx4hqwlgd ; } else { timeFreqProduct =
muDoubleScalarCos ( timeFreqProduct ) ; } rtDW . nv3w34tckf = true ; rtDW .
ohndf50qyn = tempLastSin * 0.9999247018391445 + timeFreqProduct *
0.012271538285719925 ; rtDW . ccx4hqwlgd = timeFreqProduct *
0.9999247018391445 - tempLastSin * 0.012271538285719925 ; rtB . ejhui3fdzv =
( ( tempLastSin * 0.9999247018391445 + timeFreqProduct * -
0.012271538285719925 ) * 0.9999247018391445 + ( timeFreqProduct *
0.9999247018391445 - tempLastSin * - 0.012271538285719925 ) *
0.012271538285719925 ) * 0.5 * 0.99 + rtP . Constant_Value ; if (
ssIsSampleHit ( rtS , 2 , 0 ) ) { rtDW . ozgv10a3wz = rtB . ejhui3fdzv ; } }
if ( ssIsSampleHit ( rtS , 2 , 0 ) ) { f1r2lrv54d = rtDW . ozgv10a3wz ;
timeFreqProduct = muDoubleScalarFloor ( rtDW . ozgv10a3wz * 4096.0 ) ; if (
muDoubleScalarIsNaN ( timeFreqProduct ) || muDoubleScalarIsInf (
timeFreqProduct ) ) { timeFreqProduct = 0.0 ; } else { timeFreqProduct =
muDoubleScalarRem ( timeFreqProduct , 4096.0 ) ; } rtB . i0buti5e3e = (
uint16_T ) ( ( uint16_T ) ( int16_T ) timeFreqProduct & 4095 ) ; for ( i = 0
; i < 2047 - rtDW . nwjvykniub ; i ++ ) { kmivvxdqax [ i ] = rtDW .
nnt4zufick [ rtDW . nwjvykniub + i ] ; } for ( i = 0 ; i < rtDW . nwjvykniub
; i ++ ) { kmivvxdqax [ ( i - rtDW . nwjvykniub ) + 2047 ] = rtDW .
nnt4zufick [ i ] ; } kmivvxdqax [ 2047 ] = rtB . i0buti5e3e ; rtDW .
nnt4zufick [ rtDW . nwjvykniub ] = rtB . i0buti5e3e ; rtDW . nwjvykniub ++ ;
if ( rtDW . nwjvykniub >= 2047 ) { rtDW . nwjvykniub -= 2047 ; }
MWDSPCG_FFT_Interleave_R2BR_YCs12n12_Xu12n12_c_s ( & kmivvxdqax [ 0U ] , &
rtB . m4e4llhd3u [ 0U ] , 1 , 2048 ) ;
MWDSPCG_R2DIT_TBLS_Ys12n12C_Ts12n11_As16n12_Ps16n12_c_s_SCL ( & rtB .
m4e4llhd3u [ 0U ] , 1 , 2048 , 1024 , 0 , & rtConstP . khs2nqknr5 [ 0U ] , 2
, false ) ; MWDSPCG_FFT_DblLen_Nrm_YCs12n12s12n11_As16n12_Ps16n12_c_s ( & rtB
. m4e4llhd3u [ 0U ] , 1 , 2048 , & rtConstP . khs2nqknr5 [ 0U ] , 1 ) ; tmp =
0U ; for ( i = 0 ; i < 2048 ; i ++ ) { tmp = ( tmp + kmivvxdqax [ i ] ) &
8388607U ; } rtB . bguuioxsov = ( real_T ) tmp * 0.000244140625 / rtP .
Constant1_Value ; rtB . pgtq0cyurp = kmivvxdqax [ 0 ] ; rtB . ljkbqmtph2 =
kmivvxdqax [ 0 ] ; for ( i = 0 ; i < 2047 ; i ++ ) { jn5tyydr3u = kmivvxdqax
[ i + 1 ] ; if ( jn5tyydr3u < rtB . pgtq0cyurp ) { rtB . pgtq0cyurp =
jn5tyydr3u ; } if ( jn5tyydr3u > rtB . ljkbqmtph2 ) { rtB . ljkbqmtph2 =
jn5tyydr3u ; } } if ( ssGetLogOutput ( rtS ) ) { StructLogVar * svar = (
StructLogVar * ) rtDW . ldmmcxssq0 . LoggedData [ 0 ] ; LogVar * var = svar
-> signals . values ; { double locTime = ssGetTaskTime ( rtS , 2 ) ;
rt_UpdateLogVar ( ( LogVar * ) svar -> time , & locTime , 0 ) ; } { creal_T
up0 [ 2048 ] ; { int_T i1 ; const cint16_T * u0 = & rtB . m4e4llhd3u [ 0 ] ;
for ( i1 = 0 ; i1 < 2048 ; i1 ++ ) { up0 [ i1 ] = ( real_T ) u0 [ i1 ] *
0.000244140625 ; } } rt_UpdateLogVar ( ( LogVar * ) var , up0 , 0 ) ; var =
var -> next ; } { real_T up1 [ 1 ] ; up1 [ 0 ] = rtB . bguuioxsov ;
rt_UpdateLogVar ( ( LogVar * ) var , up1 , 0 ) ; var = var -> next ; } {
real_T up2 [ 1 ] ; up2 [ 0 ] = ( real_T ) rtB . pgtq0cyurp * 0.000244140625 ;
rt_UpdateLogVar ( ( LogVar * ) var , up2 , 0 ) ; var = var -> next ; } {
real_T up3 [ 1 ] ; up3 [ 0 ] = ( real_T ) rtB . ljkbqmtph2 * 0.000244140625 ;
rt_UpdateLogVar ( ( LogVar * ) var , up3 , 0 ) ; } } } if ( ssIsSampleHit (
rtS , 1 , 0 ) ) { } if ( ssIsSampleHit ( rtS , 2 , 0 ) ) { rtB . gwp1gicv2u =
( real_T ) rtB . i0buti5e3e * 0.000244140625 - f1r2lrv54d ; if (
ssGetLogOutput ( rtS ) ) { StructLogVar * svar = ( StructLogVar * ) rtDW .
akgc1wzhai . LoggedData ; LogVar * var = svar -> signals . values ; { double
locTime = ssGetTaskTime ( rtS , 2 ) ; rt_UpdateLogVar ( ( LogVar * ) svar ->
time , & locTime , 0 ) ; } { real_T up0 [ 1 ] ; up0 [ 0 ] = rtB . gwp1gicv2u
; rt_UpdateLogVar ( ( LogVar * ) var , up0 , 0 ) ; } } } UNUSED_PARAMETER (
tid ) ; } void MdlOutputsTID3 ( int_T tid ) { UNUSED_PARAMETER ( tid ) ; }
void MdlUpdate ( int_T tid ) { UNUSED_PARAMETER ( tid ) ; } void
MdlUpdateTID3 ( int_T tid ) { UNUSED_PARAMETER ( tid ) ; } void MdlTerminate
( void ) { } static void mr_fixed_model_cacheDataAsMxArray ( mxArray *
destArray , mwIndex i , int j , const void * srcData , size_t numBytes ) ;
static void mr_fixed_model_cacheDataAsMxArray ( mxArray * destArray , mwIndex
i , int j , const void * srcData , size_t numBytes ) { mxArray * newArray =
mxCreateUninitNumericMatrix ( ( size_t ) 1 , numBytes , mxUINT8_CLASS ,
mxREAL ) ; memcpy ( ( uint8_T * ) mxGetData ( newArray ) , ( const uint8_T *
) srcData , numBytes ) ; mxSetFieldByNumber ( destArray , i , j , newArray )
; } static void mr_fixed_model_restoreDataFromMxArray ( void * destData ,
const mxArray * srcArray , mwIndex i , int j , size_t numBytes ) ; static
void mr_fixed_model_restoreDataFromMxArray ( void * destData , const mxArray
* srcArray , mwIndex i , int j , size_t numBytes ) { memcpy ( ( uint8_T * )
destData , ( const uint8_T * ) mxGetData ( mxGetFieldByNumber ( srcArray , i
, j ) ) , numBytes ) ; } static void mr_fixed_model_cacheBitFieldToMxArray (
mxArray * destArray , mwIndex i , int j , uint_T bitVal ) ; static void
mr_fixed_model_cacheBitFieldToMxArray ( mxArray * destArray , mwIndex i , int
j , uint_T bitVal ) { mxSetFieldByNumber ( destArray , i , j ,
mxCreateDoubleScalar ( ( real_T ) bitVal ) ) ; } static uint_T
mr_fixed_model_extractBitFieldFromMxArray ( const mxArray * srcArray ,
mwIndex i , int j , uint_T numBits ) ; static uint_T
mr_fixed_model_extractBitFieldFromMxArray ( const mxArray * srcArray ,
mwIndex i , int j , uint_T numBits ) { const uint_T varVal = ( uint_T )
mxGetScalar ( mxGetFieldByNumber ( srcArray , i , j ) ) ; return varVal & ( (
1u << numBits ) - 1u ) ; } static void
mr_fixed_model_cacheDataToMxArrayWithOffset ( mxArray * destArray , mwIndex i
, int j , mwIndex offset , const void * srcData , size_t numBytes ) ; static
void mr_fixed_model_cacheDataToMxArrayWithOffset ( mxArray * destArray ,
mwIndex i , int j , mwIndex offset , const void * srcData , size_t numBytes )
{ uint8_T * varData = ( uint8_T * ) mxGetData ( mxGetFieldByNumber (
destArray , i , j ) ) ; memcpy ( ( uint8_T * ) & varData [ offset * numBytes
] , ( const uint8_T * ) srcData , numBytes ) ; } static void
mr_fixed_model_restoreDataFromMxArrayWithOffset ( void * destData , const
mxArray * srcArray , mwIndex i , int j , mwIndex offset , size_t numBytes ) ;
static void mr_fixed_model_restoreDataFromMxArrayWithOffset ( void * destData
, const mxArray * srcArray , mwIndex i , int j , mwIndex offset , size_t
numBytes ) { const uint8_T * varData = ( const uint8_T * ) mxGetData (
mxGetFieldByNumber ( srcArray , i , j ) ) ; memcpy ( ( uint8_T * ) destData ,
( const uint8_T * ) & varData [ offset * numBytes ] , numBytes ) ; } static
void mr_fixed_model_cacheBitFieldToCellArrayWithOffset ( mxArray * destArray
, mwIndex i , int j , mwIndex offset , uint_T fieldVal ) ; static void
mr_fixed_model_cacheBitFieldToCellArrayWithOffset ( mxArray * destArray ,
mwIndex i , int j , mwIndex offset , uint_T fieldVal ) { mxSetCell (
mxGetFieldByNumber ( destArray , i , j ) , offset , mxCreateDoubleScalar ( (
real_T ) fieldVal ) ) ; } static uint_T
mr_fixed_model_extractBitFieldFromCellArrayWithOffset ( const mxArray *
srcArray , mwIndex i , int j , mwIndex offset , uint_T numBits ) ; static
uint_T mr_fixed_model_extractBitFieldFromCellArrayWithOffset ( const mxArray
* srcArray , mwIndex i , int j , mwIndex offset , uint_T numBits ) { const
uint_T fieldVal = ( uint_T ) mxGetScalar ( mxGetCell ( mxGetFieldByNumber (
srcArray , i , j ) , offset ) ) ; return fieldVal & ( ( 1u << numBits ) - 1u
) ; } mxArray * mr_fixed_model_GetDWork ( ) { static const char_T *
ssDWFieldNames [ 3 ] = { "rtB" , "rtDW" , "NULL_PrevZCX" , } ; mxArray * ssDW
= mxCreateStructMatrix ( 1 , 1 , 3 , ssDWFieldNames ) ;
mr_fixed_model_cacheDataAsMxArray ( ssDW , 0 , 0 , ( const void * ) & ( rtB )
, sizeof ( rtB ) ) ; { static const char_T * rtdwDataFieldNames [ 7 ] = {
"rtDW.ohndf50qyn" , "rtDW.ccx4hqwlgd" , "rtDW.ozgv10a3wz" , "rtDW.nwjvykniub"
, "rtDW.nnt4zufick" , "rtDW.eqwblmcedm" , "rtDW.nv3w34tckf" , } ; mxArray *
rtdwData = mxCreateStructMatrix ( 1 , 1 , 7 , rtdwDataFieldNames ) ;
mr_fixed_model_cacheDataAsMxArray ( rtdwData , 0 , 0 , ( const void * ) & (
rtDW . ohndf50qyn ) , sizeof ( rtDW . ohndf50qyn ) ) ;
mr_fixed_model_cacheDataAsMxArray ( rtdwData , 0 , 1 , ( const void * ) & (
rtDW . ccx4hqwlgd ) , sizeof ( rtDW . ccx4hqwlgd ) ) ;
mr_fixed_model_cacheDataAsMxArray ( rtdwData , 0 , 2 , ( const void * ) & (
rtDW . ozgv10a3wz ) , sizeof ( rtDW . ozgv10a3wz ) ) ;
mr_fixed_model_cacheDataAsMxArray ( rtdwData , 0 , 3 , ( const void * ) & (
rtDW . nwjvykniub ) , sizeof ( rtDW . nwjvykniub ) ) ;
mr_fixed_model_cacheDataAsMxArray ( rtdwData , 0 , 4 , ( const void * ) & (
rtDW . nnt4zufick ) , sizeof ( rtDW . nnt4zufick ) ) ;
mr_fixed_model_cacheDataAsMxArray ( rtdwData , 0 , 5 , ( const void * ) & (
rtDW . eqwblmcedm ) , sizeof ( rtDW . eqwblmcedm ) ) ;
mr_fixed_model_cacheDataAsMxArray ( rtdwData , 0 , 6 , ( const void * ) & (
rtDW . nv3w34tckf ) , sizeof ( rtDW . nv3w34tckf ) ) ; mxSetFieldByNumber (
ssDW , 0 , 1 , rtdwData ) ; } return ssDW ; } void mr_fixed_model_SetDWork (
const mxArray * ssDW ) { ( void ) ssDW ;
mr_fixed_model_restoreDataFromMxArray ( ( void * ) & ( rtB ) , ssDW , 0 , 0 ,
sizeof ( rtB ) ) ; { const mxArray * rtdwData = mxGetFieldByNumber ( ssDW , 0
, 1 ) ; mr_fixed_model_restoreDataFromMxArray ( ( void * ) & ( rtDW .
ohndf50qyn ) , rtdwData , 0 , 0 , sizeof ( rtDW . ohndf50qyn ) ) ;
mr_fixed_model_restoreDataFromMxArray ( ( void * ) & ( rtDW . ccx4hqwlgd ) ,
rtdwData , 0 , 1 , sizeof ( rtDW . ccx4hqwlgd ) ) ;
mr_fixed_model_restoreDataFromMxArray ( ( void * ) & ( rtDW . ozgv10a3wz ) ,
rtdwData , 0 , 2 , sizeof ( rtDW . ozgv10a3wz ) ) ;
mr_fixed_model_restoreDataFromMxArray ( ( void * ) & ( rtDW . nwjvykniub ) ,
rtdwData , 0 , 3 , sizeof ( rtDW . nwjvykniub ) ) ;
mr_fixed_model_restoreDataFromMxArray ( ( void * ) & ( rtDW . nnt4zufick ) ,
rtdwData , 0 , 4 , sizeof ( rtDW . nnt4zufick ) ) ;
mr_fixed_model_restoreDataFromMxArray ( ( void * ) & ( rtDW . eqwblmcedm ) ,
rtdwData , 0 , 5 , sizeof ( rtDW . eqwblmcedm ) ) ;
mr_fixed_model_restoreDataFromMxArray ( ( void * ) & ( rtDW . nv3w34tckf ) ,
rtdwData , 0 , 6 , sizeof ( rtDW . nv3w34tckf ) ) ; } } mxArray *
mr_fixed_model_GetSimStateDisallowedBlocks ( ) { mxArray * data =
mxCreateCellMatrix ( 4 , 3 ) ; mwIndex subs [ 2 ] , offset ; { static const
char_T * blockType [ 4 ] = { "Scope" , "Scope" , "Scope" , "Scope" , } ;
static const char_T * blockPath [ 4 ] = { "fixed_model/Scope" ,
"fixed_model/Scope1" , "fixed_model/Scope2" , "fixed_model/Scope3" , } ;
static const int reason [ 4 ] = { 0 , 0 , 0 , 0 , } ; for ( subs [ 0 ] = 0 ;
subs [ 0 ] < 4 ; ++ ( subs [ 0 ] ) ) { subs [ 1 ] = 0 ; offset =
mxCalcSingleSubscript ( data , 2 , subs ) ; mxSetCell ( data , offset ,
mxCreateString ( blockType [ subs [ 0 ] ] ) ) ; subs [ 1 ] = 1 ; offset =
mxCalcSingleSubscript ( data , 2 , subs ) ; mxSetCell ( data , offset ,
mxCreateString ( blockPath [ subs [ 0 ] ] ) ) ; subs [ 1 ] = 2 ; offset =
mxCalcSingleSubscript ( data , 2 , subs ) ; mxSetCell ( data , offset ,
mxCreateDoubleScalar ( ( real_T ) reason [ subs [ 0 ] ] ) ) ; } } return data
; } void MdlInitializeSizes ( void ) { ssSetNumContStates ( rtS , 0 ) ;
ssSetNumY ( rtS , 0 ) ; ssSetNumU ( rtS , 0 ) ; ssSetDirectFeedThrough ( rtS
, 0 ) ; ssSetNumSampleTimes ( rtS , 3 ) ; ssSetNumBlocks ( rtS , 19 ) ;
ssSetNumBlockIO ( rtS , 7 ) ; ssSetNumBlockParams ( rtS , 4 ) ; } void
MdlInitializeSampleTimes ( void ) { ssSetSampleTime ( rtS , 0 , 0.0 ) ;
ssSetSampleTime ( rtS , 1 , 3.90625E-5 ) ; ssSetSampleTime ( rtS , 2 ,
7.8125E-5 ) ; ssSetOffsetTime ( rtS , 0 , 1.0 ) ; ssSetOffsetTime ( rtS , 1 ,
0.0 ) ; ssSetOffsetTime ( rtS , 2 , 0.0 ) ; } void raccel_set_checksum ( ) {
ssSetChecksumVal ( rtS , 0 , 2100977479U ) ; ssSetChecksumVal ( rtS , 1 ,
3844255430U ) ; ssSetChecksumVal ( rtS , 2 , 978070657U ) ; ssSetChecksumVal
( rtS , 3 , 1233519456U ) ; }
#if defined(_MSC_VER)
#pragma optimize( "", off )
#endif
SimStruct * raccel_register_model ( ssExecutionInfo * executionInfo ) {
static struct _ssMdlInfo mdlInfo ; static struct _ssBlkInfo2 blkInfo2 ;
static struct _ssBlkInfoSLSize blkInfoSLSize ; rt_modelMapInfoPtr = & (
rt_dataMapInfo . mmi ) ; executionInfo -> gblObjects_ . numToFiles = 0 ;
executionInfo -> gblObjects_ . numFrFiles = 0 ; executionInfo -> gblObjects_
. numFrWksBlocks = 0 ; executionInfo -> gblObjects_ . numModelInputs = 0 ;
executionInfo -> gblObjects_ . numRootInportBlks = 0 ; executionInfo ->
gblObjects_ . inportDataTypeIdx = NULL ; executionInfo -> gblObjects_ .
inportDims = NULL ; executionInfo -> gblObjects_ . inportComplex = NULL ;
executionInfo -> gblObjects_ . inportInterpoFlag = NULL ; executionInfo ->
gblObjects_ . inportContinuous = NULL ; ( void ) memset ( ( char_T * ) rtS ,
0 , sizeof ( SimStruct ) ) ; ( void ) memset ( ( char_T * ) & mdlInfo , 0 ,
sizeof ( struct _ssMdlInfo ) ) ; ( void ) memset ( ( char_T * ) & blkInfo2 ,
0 , sizeof ( struct _ssBlkInfo2 ) ) ; ( void ) memset ( ( char_T * ) &
blkInfoSLSize , 0 , sizeof ( struct _ssBlkInfoSLSize ) ) ; ssSetBlkInfo2Ptr (
rtS , & blkInfo2 ) ; ssSetBlkInfoSLSizePtr ( rtS , & blkInfoSLSize ) ;
ssSetMdlInfoPtr ( rtS , & mdlInfo ) ; ssSetExecutionInfo ( rtS ,
executionInfo ) ; slsaAllocOPModelData ( rtS ) ; { static time_T mdlPeriod [
NSAMPLE_TIMES ] ; static time_T mdlOffset [ NSAMPLE_TIMES ] ; static time_T
mdlTaskTimes [ NSAMPLE_TIMES ] ; static int_T mdlTsMap [ NSAMPLE_TIMES ] ;
static int_T mdlSampleHits [ NSAMPLE_TIMES ] ; static boolean_T
mdlTNextWasAdjustedPtr [ NSAMPLE_TIMES ] ; static int_T mdlPerTaskSampleHits
[ NSAMPLE_TIMES * NSAMPLE_TIMES ] ; static time_T mdlTimeOfNextSampleHit [
NSAMPLE_TIMES ] ; { int_T i ; for ( i = 0 ; i < NSAMPLE_TIMES ; i ++ ) {
mdlPeriod [ i ] = 0.0 ; mdlOffset [ i ] = 0.0 ; mdlTaskTimes [ i ] = 0.0 ;
mdlTsMap [ i ] = i ; mdlSampleHits [ i ] = 1 ; } } ssSetSampleTimePtr ( rtS ,
& mdlPeriod [ 0 ] ) ; ssSetOffsetTimePtr ( rtS , & mdlOffset [ 0 ] ) ;
ssSetSampleTimeTaskIDPtr ( rtS , & mdlTsMap [ 0 ] ) ; ssSetTPtr ( rtS , &
mdlTaskTimes [ 0 ] ) ; ssSetSampleHitPtr ( rtS , & mdlSampleHits [ 0 ] ) ;
ssSetTNextWasAdjustedPtr ( rtS , & mdlTNextWasAdjustedPtr [ 0 ] ) ;
ssSetPerTaskSampleHitsPtr ( rtS , & mdlPerTaskSampleHits [ 0 ] ) ;
ssSetTimeOfNextSampleHitPtr ( rtS , & mdlTimeOfNextSampleHit [ 0 ] ) ; }
ssSetSolverMode ( rtS , SOLVER_MODE_SINGLETASKING ) ; { ssSetBlockIO ( rtS ,
( ( void * ) & rtB ) ) ; ( void ) memset ( ( ( void * ) & rtB ) , 0 , sizeof
( B ) ) ; } { void * dwork = ( void * ) & rtDW ; ssSetRootDWork ( rtS , dwork
) ; ( void ) memset ( dwork , 0 , sizeof ( DW ) ) ; } { static
DataTypeTransInfo dtInfo ; ( void ) memset ( ( char_T * ) & dtInfo , 0 ,
sizeof ( dtInfo ) ) ; ssSetModelMappingInfo ( rtS , & dtInfo ) ; dtInfo .
numDataTypes = 31 ; dtInfo . dataTypeSizes = & rtDataTypeSizes [ 0 ] ; dtInfo
. dataTypeNames = & rtDataTypeNames [ 0 ] ; dtInfo . BTransTable = &
rtBTransTable ; dtInfo . PTransTable = & rtPTransTable ; dtInfo .
dataTypeInfoTable = rtDataTypeInfoTable ; } fixed_model_InitializeDataMapInfo
( ) ; ssSetIsRapidAcceleratorActive ( rtS , true ) ; ssSetRootSS ( rtS , rtS
) ; ssSetVersion ( rtS , SIMSTRUCT_VERSION_LEVEL2 ) ; ssSetModelName ( rtS ,
"fixed_model" ) ; ssSetPath ( rtS , "fixed_model" ) ; ssSetTStart ( rtS , 0.0
) ; ssSetTFinal ( rtS , 1.0 ) ; { static RTWLogInfo rt_DataLoggingInfo ;
rt_DataLoggingInfo . loggingInterval = ( NULL ) ; ssSetRTWLogInfo ( rtS , &
rt_DataLoggingInfo ) ; } { { static int_T rt_LoggedStateWidths [ ] = { 1 ,
2047 } ; static int_T rt_LoggedStateNumDimensions [ ] = { 1 , 1 } ; static
int_T rt_LoggedStateDimensions [ ] = { 1 , 2047 } ; static boolean_T
rt_LoggedStateIsVarDims [ ] = { 0 , 0 } ; static BuiltInDTypeId
rt_LoggedStateDataTypeIds [ ] = { SS_INT32 , SS_DOUBLE } ; static int_T
rt_LoggedStateComplexSignals [ ] = { 0 , 0 } ; static RTWPreprocessingFcnPtr
rt_LoggingStatePreprocessingFcnPtrs [ ] = { ( NULL ) , ( NULL ) } ; static
const char_T * rt_LoggedStateLabels [ ] = { "CircBufIdx" , "CircBuff" } ;
static const char_T * rt_LoggedStateBlockNames [ ] = { "fixed_model/Buffer" ,
"fixed_model/Buffer" } ; static const char_T * rt_LoggedStateNames [ ] = {
"CircBufIdx" , "CircBuff" } ; static boolean_T rt_LoggedStateCrossMdlRef [ ]
= { 0 , 0 } ; static RTWLogDataTypeConvert rt_RTWLogDataTypeConvert [ ] = { {
0 , SS_INT32 , SS_INT32 , 0 , 0 , 0 , 1.0 , 0 , 0.0 } , { 1 , SS_DOUBLE ,
SS_UINT16 , 64 , 1 , 0 , 1.0 , - 12 , 0.0 } } ; static int_T
rt_LoggedStateIdxList [ ] = { 8 , 7 } ; static RTWLogSignalInfo
rt_LoggedStateSignalInfo = { 2 , rt_LoggedStateWidths ,
rt_LoggedStateNumDimensions , rt_LoggedStateDimensions ,
rt_LoggedStateIsVarDims , ( NULL ) , ( NULL ) , rt_LoggedStateDataTypeIds ,
rt_LoggedStateComplexSignals , ( NULL ) , rt_LoggingStatePreprocessingFcnPtrs
, { rt_LoggedStateLabels } , ( NULL ) , ( NULL ) , ( NULL ) , {
rt_LoggedStateBlockNames } , { rt_LoggedStateNames } ,
rt_LoggedStateCrossMdlRef , rt_RTWLogDataTypeConvert , rt_LoggedStateIdxList
} ; static void * rt_LoggedStateSignalPtrs [ 2 ] ; rtliSetLogXSignalPtrs (
ssGetRTWLogInfo ( rtS ) , ( LogSignalPtrsType ) rt_LoggedStateSignalPtrs ) ;
rtliSetLogXSignalInfo ( ssGetRTWLogInfo ( rtS ) , & rt_LoggedStateSignalInfo
) ; rt_LoggedStateSignalPtrs [ 0 ] = ( void * ) & rtDW . nwjvykniub ;
rt_LoggedStateSignalPtrs [ 1 ] = ( void * ) rtDW . nnt4zufick ; } rtliSetLogT
( ssGetRTWLogInfo ( rtS ) , "tout" ) ; rtliSetLogX ( ssGetRTWLogInfo ( rtS )
, "" ) ; rtliSetLogXFinal ( ssGetRTWLogInfo ( rtS ) , "xFinal" ) ;
rtliSetLogVarNameModifier ( ssGetRTWLogInfo ( rtS ) , "none" ) ;
rtliSetLogFormat ( ssGetRTWLogInfo ( rtS ) , 4 ) ; rtliSetLogMaxRows (
ssGetRTWLogInfo ( rtS ) , 0 ) ; rtliSetLogDecimation ( ssGetRTWLogInfo ( rtS
) , 1 ) ; rtliSetLogY ( ssGetRTWLogInfo ( rtS ) , "" ) ;
rtliSetLogYSignalInfo ( ssGetRTWLogInfo ( rtS ) , ( NULL ) ) ;
rtliSetLogYSignalPtrs ( ssGetRTWLogInfo ( rtS ) , ( NULL ) ) ; } { static
ssSolverInfo slvrInfo ; ssSetStepSize ( rtS , 3.90625E-5 ) ; ssSetMinStepSize
( rtS , 0.0 ) ; ssSetMaxNumMinSteps ( rtS , - 1 ) ; ssSetMinStepViolatedError
( rtS , 0 ) ; ssSetMaxStepSize ( rtS , 3.90625E-5 ) ; ssSetSolverMaxOrder (
rtS , - 1 ) ; ssSetSolverRefineFactor ( rtS , 1 ) ; ssSetOutputTimes ( rtS ,
( NULL ) ) ; ssSetNumOutputTimes ( rtS , 0 ) ; ssSetOutputTimesOnly ( rtS , 0
) ; ssSetOutputTimesIndex ( rtS , 0 ) ; ssSetZCCacheNeedsReset ( rtS , 0 ) ;
ssSetDerivCacheNeedsReset ( rtS , 0 ) ; ssSetNumNonContDerivSigInfos ( rtS ,
0 ) ; ssSetNonContDerivSigInfos ( rtS , ( NULL ) ) ; ssSetSolverInfo ( rtS ,
& slvrInfo ) ; ssSetSolverName ( rtS , "VariableStepDiscrete" ) ;
ssSetVariableStepSolver ( rtS , 1 ) ; ssSetSolverConsistencyChecking ( rtS ,
0 ) ; ssSetSolverAdaptiveZcDetection ( rtS , 0 ) ;
ssSetSolverRobustResetMethod ( rtS , 0 ) ; ssSetSolverStateProjection ( rtS ,
0 ) ; ssSetSolverMassMatrixType ( rtS , ( ssMatrixType ) 0 ) ;
ssSetSolverMassMatrixNzMax ( rtS , 0 ) ; ssSetModelOutputs ( rtS , MdlOutputs
) ; ssSetModelUpdate ( rtS , MdlUpdate ) ; ssSetTNextTid ( rtS , INT_MIN ) ;
ssSetTNext ( rtS , rtMinusInf ) ; ssSetSolverNeedsReset ( rtS ) ;
ssSetNumNonsampledZCs ( rtS , 0 ) ; } ssSetChecksumVal ( rtS , 0 ,
2100977479U ) ; ssSetChecksumVal ( rtS , 1 , 3844255430U ) ; ssSetChecksumVal
( rtS , 2 , 978070657U ) ; ssSetChecksumVal ( rtS , 3 , 1233519456U ) ; {
static const sysRanDType rtAlwaysEnabled = SUBSYS_RAN_BC_ENABLE ; static
RTWExtModeInfo rt_ExtModeInfo ; static const sysRanDType * systemRan [ 1 ] ;
gblRTWExtModeInfo = & rt_ExtModeInfo ; ssSetRTWExtModeInfo ( rtS , &
rt_ExtModeInfo ) ; rteiSetSubSystemActiveVectorAddresses ( & rt_ExtModeInfo ,
systemRan ) ; systemRan [ 0 ] = & rtAlwaysEnabled ;
rteiSetModelMappingInfoPtr ( ssGetRTWExtModeInfo ( rtS ) , &
ssGetModelMappingInfo ( rtS ) ) ; rteiSetChecksumsPtr ( ssGetRTWExtModeInfo (
rtS ) , ssGetChecksums ( rtS ) ) ; rteiSetTPtr ( ssGetRTWExtModeInfo ( rtS )
, ssGetTPtr ( rtS ) ) ; } slsaDisallowedBlocksForSimTargetOP ( rtS ,
mr_fixed_model_GetSimStateDisallowedBlocks ) ; slsaGetWorkFcnForSimTargetOP (
rtS , mr_fixed_model_GetDWork ) ; slsaSetWorkFcnForSimTargetOP ( rtS ,
mr_fixed_model_SetDWork ) ; rt_RapidReadMatFileAndUpdateParams ( rtS ) ; if (
ssGetErrorStatus ( rtS ) ) { return rtS ; } executionInfo ->
simulationOptions_ . stateSaveName_ = rtliGetLogX ( ssGetRTWLogInfo ( rtS ) )
; executionInfo -> simulationOptions_ . finalStateName_ = rtliGetLogXFinal (
ssGetRTWLogInfo ( rtS ) ) ; executionInfo -> simulationOptions_ .
outputSaveName_ = rtliGetLogY ( ssGetRTWLogInfo ( rtS ) ) ; return rtS ; }
#if defined(_MSC_VER)
#pragma optimize( "", on )
#endif
void MdlOutputsParameterSampleTime ( int_T tid ) { MdlOutputsTID3 ( tid ) ; }

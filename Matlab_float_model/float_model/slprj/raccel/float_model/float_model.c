#include "float_model.h"
#include "rtwtypes.h"
#include "mwmathutil.h"
#include "float_model_private.h"
#include "rt_logging_mmi.h"
#include "float_model_capi.h"
#include "float_model_dt.h"
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
model_S ; void MWDSPCG_FFT_Interleave_R2BR_D ( const real_T x [ ] , creal_T y
[ ] , int32_T nChans , int32_T nRows ) { int32_T bit_fftLen ; int32_T br_j ;
int32_T j ; int32_T nChansBy2 ; int32_T uIdx ; int32_T yIdx ; br_j = 0 ; yIdx
= 0 ; uIdx = 0 ; for ( nChansBy2 = nChans >> 1 ; nChansBy2 != 0 ; nChansBy2
-- ) { for ( j = nRows ; j - 1 > 0 ; j -- ) { y [ yIdx + br_j ] . re = x [
uIdx ] ; y [ yIdx + br_j ] . im = x [ uIdx + nRows ] ; uIdx ++ ; bit_fftLen =
nRows ; do { bit_fftLen = ( int32_T ) ( ( uint32_T ) bit_fftLen >> 1 ) ; br_j
^= bit_fftLen ; } while ( ( br_j & bit_fftLen ) == 0 ) ; } y [ yIdx + br_j ]
. re = x [ uIdx ] ; y [ yIdx + br_j ] . im = x [ uIdx + nRows ] ; uIdx = (
uIdx + nRows ) + 1 ; yIdx += nRows << 1 ; br_j = 0 ; } if ( ( ( uint32_T )
nChans & 1U ) != 0U ) { for ( j = nRows >> 1 ; j - 1 > 0 ; j -- ) { y [ yIdx
+ br_j ] . re = x [ uIdx ] ; y [ yIdx + br_j ] . im = x [ uIdx + 1 ] ; uIdx
+= 2 ; bit_fftLen = nRows >> 1 ; do { bit_fftLen = ( int32_T ) ( ( uint32_T )
bit_fftLen >> 1 ) ; br_j ^= bit_fftLen ; } while ( ( br_j & bit_fftLen ) == 0
) ; } y [ yIdx + br_j ] . re = x [ uIdx ] ; y [ yIdx + br_j ] . im = x [ uIdx
+ 1 ] ; } } void MWDSPCG_R2DIT_TBLS_Z ( creal_T y [ ] , int32_T nChans ,
int32_T nRows , int32_T fftLen , int32_T offset , const real_T tablePtr [ ] ,
int32_T twiddleStep , boolean_T isInverse ) { real_T tmp_im ; real_T tmp_re ;
real_T twidIm ; real_T twidRe ; int32_T fwdInvFactor ; int32_T i1 ; int32_T
i2 ; int32_T iCh ; int32_T idelta ; int32_T istart ; int32_T ix ; int32_T j ;
int32_T k ; int32_T kratio ; int32_T nHalf ; int32_T nQtr ; int32_T offsetCh
; nHalf = ( fftLen >> 1 ) * twiddleStep ; nQtr = nHalf >> 1 ; if ( isInverse
) { fwdInvFactor = - 1 ; } else { fwdInvFactor = 1 ; } offsetCh = offset ;
for ( iCh = 0 ; iCh < nChans ; iCh ++ ) { for ( ix = offsetCh ; ix < ( fftLen
+ offsetCh ) - 1 ; ix += 2 ) { tmp_re = y [ ix + 1 ] . re ; tmp_im = y [ ix +
1 ] . im ; y [ ix + 1 ] . re = y [ ix ] . re - y [ ix + 1 ] . re ; y [ ix + 1
] . im = y [ ix ] . im - y [ ix + 1 ] . im ; y [ ix ] . re += tmp_re ; y [ ix
] . im += tmp_im ; } idelta = 2 ; k = fftLen >> 2 ; kratio = k * twiddleStep
; while ( k > 0 ) { i1 = offsetCh ; for ( ix = 0 ; ix < k ; ix ++ ) { i2 = i1
+ idelta ; tmp_re = y [ i2 ] . re ; tmp_im = y [ i2 ] . im ; y [ i2 ] . re =
y [ i1 ] . re - y [ i2 ] . re ; y [ i2 ] . im = y [ i1 ] . im - y [ i2 ] . im
; y [ i1 ] . re += tmp_re ; y [ i1 ] . im += tmp_im ; i1 += idelta << 1 ; }
istart = offsetCh ; for ( j = kratio ; j < nHalf ; j += kratio ) { i1 =
istart + 1 ; twidRe = tablePtr [ j ] ; twidIm = tablePtr [ j + nQtr ] * (
real_T ) fwdInvFactor ; for ( ix = 0 ; ix < k ; ix ++ ) { i2 = i1 + idelta ;
tmp_re = y [ i2 ] . re * twidRe - y [ i2 ] . im * twidIm ; tmp_im = y [ i2 ]
. re * twidIm + y [ i2 ] . im * twidRe ; y [ i2 ] . re = y [ i1 ] . re -
tmp_re ; y [ i2 ] . im = y [ i1 ] . im - tmp_im ; y [ i1 ] . re += tmp_re ; y
[ i1 ] . im += tmp_im ; i1 += idelta << 1 ; } istart ++ ; } idelta <<= 1 ; k
>>= 1 ; kratio >>= 1 ; } offsetCh += nRows ; } } void MWDSPCG_FFT_DblLen_Z (
creal_T y [ ] , int32_T nChans , int32_T nRows , const real_T twiddleTable [
] , int32_T twiddleStep ) { real_T cTemp_im ; real_T cTemp_re ; real_T
tempOut0Im ; real_T tempOut0Re ; int32_T N2 ; int32_T N4 ; int32_T W4 ;
int32_T ix ; int32_T k ; int32_T yIdx ; N2 = nRows >> 1 ; N4 = N2 >> 1 ; W4 =
N4 * twiddleStep ; yIdx = ( nChans - 1 ) * nRows ; if ( nRows > 2 ) {
tempOut0Re = y [ N4 + yIdx ] . re ; tempOut0Im = y [ N4 + yIdx ] . im ; y [ (
N2 + N4 ) + yIdx ] . re = tempOut0Re ; y [ ( N2 + N4 ) + yIdx ] . im =
tempOut0Im ; y [ N4 + yIdx ] . re = tempOut0Re ; y [ N4 + yIdx ] . im = -
tempOut0Im ; } if ( nRows > 1 ) { y [ N2 + yIdx ] . re = y [ yIdx ] . re - y
[ yIdx ] . im ; y [ N2 + yIdx ] . im = 0.0 ; } y [ yIdx ] . re += y [ yIdx ]
. im ; y [ yIdx ] . im = 0.0 ; k = twiddleStep ; for ( ix = 1 ; ix < N4 ; ix
++ ) { tempOut0Re = ( y [ ( N2 - ix ) + yIdx ] . re + y [ ix + yIdx ] . re )
/ 2.0 ; tempOut0Im = ( y [ ix + yIdx ] . im - y [ ( N2 - ix ) + yIdx ] . im )
/ 2.0 ; cTemp_re = y [ ( N2 - ix ) + yIdx ] . re ; cTemp_im = y [ ix + yIdx ]
. re ; y [ ix + yIdx ] . re = ( y [ ( N2 - ix ) + yIdx ] . im + y [ ix + yIdx
] . im ) / 2.0 ; y [ ix + yIdx ] . im = ( cTemp_re - cTemp_im ) / 2.0 ;
cTemp_re = y [ ix + yIdx ] . re * twiddleTable [ k ] - - twiddleTable [ W4 -
k ] * y [ ix + yIdx ] . im ; cTemp_im = y [ ix + yIdx ] . im * twiddleTable [
k ] + - twiddleTable [ W4 - k ] * y [ ix + yIdx ] . re ; y [ ix + yIdx ] . re
= tempOut0Re + cTemp_re ; y [ ix + yIdx ] . im = tempOut0Im + cTemp_im ; y [
( nRows - ix ) + yIdx ] . re = y [ ix + yIdx ] . re ; y [ ( nRows - ix ) +
yIdx ] . im = - y [ ix + yIdx ] . im ; y [ ( N2 + ix ) + yIdx ] . re =
tempOut0Re - cTemp_re ; y [ ( N2 + ix ) + yIdx ] . im = tempOut0Im - cTemp_im
; y [ ( N2 - ix ) + yIdx ] . re = y [ ( N2 + ix ) + yIdx ] . re ; y [ ( N2 -
ix ) + yIdx ] . im = - y [ ( N2 + ix ) + yIdx ] . im ; k += twiddleStep ; } }
void MdlInitialize ( void ) { int32_T i ; rtDW . pl0dtoihqh = false ; rtDW .
mqwb5qo2l3 = 0.0 ; rtDW . dgprbspzct = false ; rtDW . fpkatxq0cq = 0.0 ; for
( i = 0 ; i < 2047 ; i ++ ) { rtDW . kl4at23xp2 [ i ] = rtP . Buffer_ic ; }
rtDW . armc3r3dlj = 0 ; } void MdlStart ( void ) { { bool
externalInputIsInDatasetFormat = false ; void * pISigstreamManager =
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
rt_ScopeBlockName [ ] = "float_model/Scope" ; static int_T rt_ScopeFrameData
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
rtDW . djsq5n5bf2 . LoggedData [ 0 ] = rt_CreateStructLogVar (
ssGetRTWLogInfo ( rtS ) , ssGetTStart ( rtS ) , ssGetTFinal ( rtS ) , 0.0 , (
& ssGetErrorStatus ( rtS ) ) , "floating_model" , 1 , 0 , 1 , 7.8125E-5 , &
rt_ScopeSignalInfo , rt_ScopeBlockName ) ; if ( rtDW . djsq5n5bf2 .
LoggedData [ 0 ] == ( NULL ) ) return ; } MdlInitialize ( ) ; } void
MdlOutputs ( int_T tid ) { real_T tempLastSin ; real_T timeFreqProduct ;
int32_T i ; int32_T n ; if ( ssIsSampleHit ( rtS , 1 , 0 ) ) {
timeFreqProduct = ssGetTaskTime ( rtS , 1 ) * 314.15926535897933 ; if ( rtDW
. pl0dtoihqh ) { tempLastSin = rtDW . mqwb5qo2l3 ; } else { tempLastSin =
muDoubleScalarSin ( timeFreqProduct ) ; } rtDW . pl0dtoihqh = true ; if (
rtDW . dgprbspzct ) { timeFreqProduct = rtDW . fpkatxq0cq ; } else {
timeFreqProduct = muDoubleScalarCos ( timeFreqProduct ) ; } rtDW . dgprbspzct
= true ; rtDW . mqwb5qo2l3 = tempLastSin * 0.9999247018391445 +
timeFreqProduct * 0.012271538285719925 ; rtDW . fpkatxq0cq = timeFreqProduct
* 0.9999247018391445 - tempLastSin * 0.012271538285719925 ; rtB . idtut04grk
= ( ( tempLastSin * 0.9999247018391445 + timeFreqProduct * -
0.012271538285719925 ) * 0.9999247018391445 + ( timeFreqProduct *
0.9999247018391445 - tempLastSin * - 0.012271538285719925 ) *
0.012271538285719925 ) * 0.5 * 0.99 ; if ( ssIsSampleHit ( rtS , 2 , 0 ) ) {
rtDW . mhdn2cxqcd = rtB . idtut04grk ; } } if ( ssIsSampleHit ( rtS , 2 , 0 )
) { rtB . j3ohbey5vo = rtDW . mhdn2cxqcd ; for ( i = 0 ; i < 2047 - rtDW .
armc3r3dlj ; i ++ ) { rtB . j3uwgmrtct_mbvzarwird [ i ] = rtDW . kl4at23xp2 [
rtDW . armc3r3dlj + i ] ; } for ( i = 0 ; i < rtDW . armc3r3dlj ; i ++ ) {
rtB . j3uwgmrtct_mbvzarwird [ ( i - rtDW . armc3r3dlj ) + 2047 ] = rtDW .
kl4at23xp2 [ i ] ; } rtB . j3uwgmrtct_mbvzarwird [ 2047 ] = rtB . j3ohbey5vo
; rtDW . kl4at23xp2 [ rtDW . armc3r3dlj ] = rtB . j3ohbey5vo ; rtDW .
armc3r3dlj ++ ; if ( rtDW . armc3r3dlj >= 2047 ) { rtDW . armc3r3dlj -= 2047
; } MWDSPCG_FFT_Interleave_R2BR_D ( & rtB . j3uwgmrtct_mbvzarwird [ 0U ] , &
rtB . f1qdjomdj2 [ 0U ] , 1 , 2048 ) ; MWDSPCG_R2DIT_TBLS_Z ( & rtB .
f1qdjomdj2 [ 0U ] , 1 , 2048 , 1024 , 0 , & rtConstP . kflu3tjmoj [ 0U ] , 2
, false ) ; MWDSPCG_FFT_DblLen_Z ( & rtB . f1qdjomdj2 [ 0U ] , 1 , 2048 , &
rtConstP . kflu3tjmoj [ 0U ] , 1 ) ; for ( i = 0 ; i < 2048 ; i ++ ) { rtB .
f1qdjomdj2 [ i ] . re /= 2048.0 ; rtB . f1qdjomdj2 [ i ] . im /= 2048.0 ; }
rtDW . jtd4h2yzhn = rtB . j3uwgmrtct_mbvzarwird [ 0 ] * rtB .
j3uwgmrtct_mbvzarwird [ 0 ] ; i = 1 ; for ( n = 2046 ; n >= 0 ; n -- ) { rtDW
. jtd4h2yzhn += rtB . j3uwgmrtct_mbvzarwird [ i ] * rtB .
j3uwgmrtct_mbvzarwird [ i ] ; i ++ ; } rtB . aoa31w0yrk = muDoubleScalarSqrt
( rtDW . jtd4h2yzhn / 2048.0 ) ; rtB . m1tldgkwax = rtB .
j3uwgmrtct_mbvzarwird [ 0 ] ; rtB . f3mepvdoa1 = rtB . j3uwgmrtct_mbvzarwird
[ 0 ] ; for ( i = 0 ; i < 2047 ; i ++ ) { timeFreqProduct = rtB .
j3uwgmrtct_mbvzarwird [ i + 1 ] ; if ( timeFreqProduct < rtB . m1tldgkwax ) {
rtB . m1tldgkwax = timeFreqProduct ; } if ( timeFreqProduct > rtB .
f3mepvdoa1 ) { rtB . f3mepvdoa1 = timeFreqProduct ; } } if ( ssGetLogOutput (
rtS ) ) { StructLogVar * svar = ( StructLogVar * ) rtDW . djsq5n5bf2 .
LoggedData [ 0 ] ; LogVar * var = svar -> signals . values ; { double locTime
= ssGetTaskTime ( rtS , 2 ) ; rt_UpdateLogVar ( ( LogVar * ) svar -> time , &
locTime , 0 ) ; } { creal_T up0 [ 2048 ] ; ( void ) memcpy ( & up0 [ 0 ] , &
rtB . f1qdjomdj2 [ 0 ] , 2048 * sizeof ( creal_T ) ) ; rt_UpdateLogVar ( (
LogVar * ) var , up0 , 0 ) ; var = var -> next ; } { real_T up1 [ 1 ] ; up1 [
0 ] = rtB . aoa31w0yrk ; rt_UpdateLogVar ( ( LogVar * ) var , up1 , 0 ) ; var
= var -> next ; } { real_T up2 [ 1 ] ; up2 [ 0 ] = rtB . m1tldgkwax ;
rt_UpdateLogVar ( ( LogVar * ) var , up2 , 0 ) ; var = var -> next ; } {
real_T up3 [ 1 ] ; up3 [ 0 ] = rtB . f3mepvdoa1 ; rt_UpdateLogVar ( ( LogVar
* ) var , up3 , 0 ) ; } } } if ( ssIsSampleHit ( rtS , 1 , 0 ) ) { }
UNUSED_PARAMETER ( tid ) ; } void MdlOutputsTID3 ( int_T tid ) {
UNUSED_PARAMETER ( tid ) ; } void MdlUpdate ( int_T tid ) { UNUSED_PARAMETER
( tid ) ; } void MdlUpdateTID3 ( int_T tid ) { UNUSED_PARAMETER ( tid ) ; }
void MdlTerminate ( void ) { } static void mr_float_model_cacheDataAsMxArray
( mxArray * destArray , mwIndex i , int j , const void * srcData , size_t
numBytes ) ; static void mr_float_model_cacheDataAsMxArray ( mxArray *
destArray , mwIndex i , int j , const void * srcData , size_t numBytes ) {
mxArray * newArray = mxCreateUninitNumericMatrix ( ( size_t ) 1 , numBytes ,
mxUINT8_CLASS , mxREAL ) ; memcpy ( ( uint8_T * ) mxGetData ( newArray ) , (
const uint8_T * ) srcData , numBytes ) ; mxSetFieldByNumber ( destArray , i ,
j , newArray ) ; } static void mr_float_model_restoreDataFromMxArray ( void *
destData , const mxArray * srcArray , mwIndex i , int j , size_t numBytes ) ;
static void mr_float_model_restoreDataFromMxArray ( void * destData , const
mxArray * srcArray , mwIndex i , int j , size_t numBytes ) { memcpy ( (
uint8_T * ) destData , ( const uint8_T * ) mxGetData ( mxGetFieldByNumber (
srcArray , i , j ) ) , numBytes ) ; } static void
mr_float_model_cacheBitFieldToMxArray ( mxArray * destArray , mwIndex i , int
j , uint_T bitVal ) ; static void mr_float_model_cacheBitFieldToMxArray (
mxArray * destArray , mwIndex i , int j , uint_T bitVal ) {
mxSetFieldByNumber ( destArray , i , j , mxCreateDoubleScalar ( ( real_T )
bitVal ) ) ; } static uint_T mr_float_model_extractBitFieldFromMxArray (
const mxArray * srcArray , mwIndex i , int j , uint_T numBits ) ; static
uint_T mr_float_model_extractBitFieldFromMxArray ( const mxArray * srcArray ,
mwIndex i , int j , uint_T numBits ) { const uint_T varVal = ( uint_T )
mxGetScalar ( mxGetFieldByNumber ( srcArray , i , j ) ) ; return varVal & ( (
1u << numBits ) - 1u ) ; } static void
mr_float_model_cacheDataToMxArrayWithOffset ( mxArray * destArray , mwIndex i
, int j , mwIndex offset , const void * srcData , size_t numBytes ) ; static
void mr_float_model_cacheDataToMxArrayWithOffset ( mxArray * destArray ,
mwIndex i , int j , mwIndex offset , const void * srcData , size_t numBytes )
{ uint8_T * varData = ( uint8_T * ) mxGetData ( mxGetFieldByNumber (
destArray , i , j ) ) ; memcpy ( ( uint8_T * ) & varData [ offset * numBytes
] , ( const uint8_T * ) srcData , numBytes ) ; } static void
mr_float_model_restoreDataFromMxArrayWithOffset ( void * destData , const
mxArray * srcArray , mwIndex i , int j , mwIndex offset , size_t numBytes ) ;
static void mr_float_model_restoreDataFromMxArrayWithOffset ( void * destData
, const mxArray * srcArray , mwIndex i , int j , mwIndex offset , size_t
numBytes ) { const uint8_T * varData = ( const uint8_T * ) mxGetData (
mxGetFieldByNumber ( srcArray , i , j ) ) ; memcpy ( ( uint8_T * ) destData ,
( const uint8_T * ) & varData [ offset * numBytes ] , numBytes ) ; } static
void mr_float_model_cacheBitFieldToCellArrayWithOffset ( mxArray * destArray
, mwIndex i , int j , mwIndex offset , uint_T fieldVal ) ; static void
mr_float_model_cacheBitFieldToCellArrayWithOffset ( mxArray * destArray ,
mwIndex i , int j , mwIndex offset , uint_T fieldVal ) { mxSetCell (
mxGetFieldByNumber ( destArray , i , j ) , offset , mxCreateDoubleScalar ( (
real_T ) fieldVal ) ) ; } static uint_T
mr_float_model_extractBitFieldFromCellArrayWithOffset ( const mxArray *
srcArray , mwIndex i , int j , mwIndex offset , uint_T numBits ) ; static
uint_T mr_float_model_extractBitFieldFromCellArrayWithOffset ( const mxArray
* srcArray , mwIndex i , int j , mwIndex offset , uint_T numBits ) { const
uint_T fieldVal = ( uint_T ) mxGetScalar ( mxGetCell ( mxGetFieldByNumber (
srcArray , i , j ) , offset ) ) ; return fieldVal & ( ( 1u << numBits ) - 1u
) ; } mxArray * mr_float_model_GetDWork ( ) { static const char_T *
ssDWFieldNames [ 3 ] = { "rtB" , "rtDW" , "NULL_PrevZCX" , } ; mxArray * ssDW
= mxCreateStructMatrix ( 1 , 1 , 3 , ssDWFieldNames ) ;
mr_float_model_cacheDataAsMxArray ( ssDW , 0 , 0 , ( const void * ) & ( rtB )
, sizeof ( rtB ) ) ; { static const char_T * rtdwDataFieldNames [ 8 ] = {
"rtDW.kl4at23xp2" , "rtDW.mqwb5qo2l3" , "rtDW.fpkatxq0cq" , "rtDW.mhdn2cxqcd"
, "rtDW.jtd4h2yzhn" , "rtDW.armc3r3dlj" , "rtDW.pl0dtoihqh" ,
"rtDW.dgprbspzct" , } ; mxArray * rtdwData = mxCreateStructMatrix ( 1 , 1 , 8
, rtdwDataFieldNames ) ; mr_float_model_cacheDataAsMxArray ( rtdwData , 0 , 0
, ( const void * ) & ( rtDW . kl4at23xp2 ) , sizeof ( rtDW . kl4at23xp2 ) ) ;
mr_float_model_cacheDataAsMxArray ( rtdwData , 0 , 1 , ( const void * ) & (
rtDW . mqwb5qo2l3 ) , sizeof ( rtDW . mqwb5qo2l3 ) ) ;
mr_float_model_cacheDataAsMxArray ( rtdwData , 0 , 2 , ( const void * ) & (
rtDW . fpkatxq0cq ) , sizeof ( rtDW . fpkatxq0cq ) ) ;
mr_float_model_cacheDataAsMxArray ( rtdwData , 0 , 3 , ( const void * ) & (
rtDW . mhdn2cxqcd ) , sizeof ( rtDW . mhdn2cxqcd ) ) ;
mr_float_model_cacheDataAsMxArray ( rtdwData , 0 , 4 , ( const void * ) & (
rtDW . jtd4h2yzhn ) , sizeof ( rtDW . jtd4h2yzhn ) ) ;
mr_float_model_cacheDataAsMxArray ( rtdwData , 0 , 5 , ( const void * ) & (
rtDW . armc3r3dlj ) , sizeof ( rtDW . armc3r3dlj ) ) ;
mr_float_model_cacheDataAsMxArray ( rtdwData , 0 , 6 , ( const void * ) & (
rtDW . pl0dtoihqh ) , sizeof ( rtDW . pl0dtoihqh ) ) ;
mr_float_model_cacheDataAsMxArray ( rtdwData , 0 , 7 , ( const void * ) & (
rtDW . dgprbspzct ) , sizeof ( rtDW . dgprbspzct ) ) ; mxSetFieldByNumber (
ssDW , 0 , 1 , rtdwData ) ; } return ssDW ; } void mr_float_model_SetDWork (
const mxArray * ssDW ) { ( void ) ssDW ;
mr_float_model_restoreDataFromMxArray ( ( void * ) & ( rtB ) , ssDW , 0 , 0 ,
sizeof ( rtB ) ) ; { const mxArray * rtdwData = mxGetFieldByNumber ( ssDW , 0
, 1 ) ; mr_float_model_restoreDataFromMxArray ( ( void * ) & ( rtDW .
kl4at23xp2 ) , rtdwData , 0 , 0 , sizeof ( rtDW . kl4at23xp2 ) ) ;
mr_float_model_restoreDataFromMxArray ( ( void * ) & ( rtDW . mqwb5qo2l3 ) ,
rtdwData , 0 , 1 , sizeof ( rtDW . mqwb5qo2l3 ) ) ;
mr_float_model_restoreDataFromMxArray ( ( void * ) & ( rtDW . fpkatxq0cq ) ,
rtdwData , 0 , 2 , sizeof ( rtDW . fpkatxq0cq ) ) ;
mr_float_model_restoreDataFromMxArray ( ( void * ) & ( rtDW . mhdn2cxqcd ) ,
rtdwData , 0 , 3 , sizeof ( rtDW . mhdn2cxqcd ) ) ;
mr_float_model_restoreDataFromMxArray ( ( void * ) & ( rtDW . jtd4h2yzhn ) ,
rtdwData , 0 , 4 , sizeof ( rtDW . jtd4h2yzhn ) ) ;
mr_float_model_restoreDataFromMxArray ( ( void * ) & ( rtDW . armc3r3dlj ) ,
rtdwData , 0 , 5 , sizeof ( rtDW . armc3r3dlj ) ) ;
mr_float_model_restoreDataFromMxArray ( ( void * ) & ( rtDW . pl0dtoihqh ) ,
rtdwData , 0 , 6 , sizeof ( rtDW . pl0dtoihqh ) ) ;
mr_float_model_restoreDataFromMxArray ( ( void * ) & ( rtDW . dgprbspzct ) ,
rtdwData , 0 , 7 , sizeof ( rtDW . dgprbspzct ) ) ; } } mxArray *
mr_float_model_GetSimStateDisallowedBlocks ( ) { mxArray * data =
mxCreateCellMatrix ( 2 , 3 ) ; mwIndex subs [ 2 ] , offset ; { static const
char_T * blockType [ 2 ] = { "Scope" , "Scope" , } ; static const char_T *
blockPath [ 2 ] = { "float_model/Scope" , "float_model/Scope1" , } ; static
const int reason [ 2 ] = { 0 , 0 , } ; for ( subs [ 0 ] = 0 ; subs [ 0 ] < 2
; ++ ( subs [ 0 ] ) ) { subs [ 1 ] = 0 ; offset = mxCalcSingleSubscript (
data , 2 , subs ) ; mxSetCell ( data , offset , mxCreateString ( blockType [
subs [ 0 ] ] ) ) ; subs [ 1 ] = 1 ; offset = mxCalcSingleSubscript ( data , 2
, subs ) ; mxSetCell ( data , offset , mxCreateString ( blockPath [ subs [ 0
] ] ) ) ; subs [ 1 ] = 2 ; offset = mxCalcSingleSubscript ( data , 2 , subs )
; mxSetCell ( data , offset , mxCreateDoubleScalar ( ( real_T ) reason [ subs
[ 0 ] ] ) ) ; } } return data ; } void MdlInitializeSizes ( void ) {
ssSetNumContStates ( rtS , 0 ) ; ssSetNumY ( rtS , 0 ) ; ssSetNumU ( rtS , 0
) ; ssSetDirectFeedThrough ( rtS , 0 ) ; ssSetNumSampleTimes ( rtS , 3 ) ;
ssSetNumBlocks ( rtS , 12 ) ; ssSetNumBlockIO ( rtS , 6 ) ;
ssSetNumBlockParams ( rtS , 2 ) ; } void MdlInitializeSampleTimes ( void ) {
ssSetSampleTime ( rtS , 0 , 0.0 ) ; ssSetSampleTime ( rtS , 1 , 3.90625E-5 )
; ssSetSampleTime ( rtS , 2 , 7.8125E-5 ) ; ssSetOffsetTime ( rtS , 0 , 1.0 )
; ssSetOffsetTime ( rtS , 1 , 0.0 ) ; ssSetOffsetTime ( rtS , 2 , 0.0 ) ; }
void raccel_set_checksum ( ) { ssSetChecksumVal ( rtS , 0 , 3197626419U ) ;
ssSetChecksumVal ( rtS , 1 , 3927172269U ) ; ssSetChecksumVal ( rtS , 2 ,
2011725344U ) ; ssSetChecksumVal ( rtS , 3 , 3289494203U ) ; }
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
numDataTypes = 25 ; dtInfo . dataTypeSizes = & rtDataTypeSizes [ 0 ] ; dtInfo
. dataTypeNames = & rtDataTypeNames [ 0 ] ; dtInfo . BTransTable = &
rtBTransTable ; dtInfo . PTransTable = & rtPTransTable ; dtInfo .
dataTypeInfoTable = rtDataTypeInfoTable ; } float_model_InitializeDataMapInfo
( ) ; ssSetIsRapidAcceleratorActive ( rtS , true ) ; ssSetRootSS ( rtS , rtS
) ; ssSetVersion ( rtS , SIMSTRUCT_VERSION_LEVEL2 ) ; ssSetModelName ( rtS ,
"float_model" ) ; ssSetPath ( rtS , "float_model" ) ; ssSetTStart ( rtS , 0.0
) ; ssSetTFinal ( rtS , 1.0 ) ; { static RTWLogInfo rt_DataLoggingInfo ;
rt_DataLoggingInfo . loggingInterval = ( NULL ) ; ssSetRTWLogInfo ( rtS , &
rt_DataLoggingInfo ) ; } { { static int_T rt_LoggedStateWidths [ ] = { 2047 ,
1 } ; static int_T rt_LoggedStateNumDimensions [ ] = { 1 , 1 } ; static int_T
rt_LoggedStateDimensions [ ] = { 2047 , 1 } ; static boolean_T
rt_LoggedStateIsVarDims [ ] = { 0 , 0 } ; static BuiltInDTypeId
rt_LoggedStateDataTypeIds [ ] = { SS_DOUBLE , SS_INT32 } ; static int_T
rt_LoggedStateComplexSignals [ ] = { 0 , 0 } ; static RTWPreprocessingFcnPtr
rt_LoggingStatePreprocessingFcnPtrs [ ] = { ( NULL ) , ( NULL ) } ; static
const char_T * rt_LoggedStateLabels [ ] = { "CircBuff" , "CircBufIdx" } ;
static const char_T * rt_LoggedStateBlockNames [ ] = { "float_model/Buffer" ,
"float_model/Buffer" } ; static const char_T * rt_LoggedStateNames [ ] = {
"CircBuff" , "CircBufIdx" } ; static boolean_T rt_LoggedStateCrossMdlRef [ ]
= { 0 , 0 } ; static RTWLogDataTypeConvert rt_RTWLogDataTypeConvert [ ] = { {
0 , SS_DOUBLE , SS_DOUBLE , 0 , 0 , 0 , 1.0 , 0 , 0.0 } , { 0 , SS_INT32 ,
SS_INT32 , 0 , 0 , 0 , 1.0 , 0 , 0.0 } } ; static int_T rt_LoggedStateIdxList
[ ] = { 0 , 7 } ; static RTWLogSignalInfo rt_LoggedStateSignalInfo = { 2 ,
rt_LoggedStateWidths , rt_LoggedStateNumDimensions , rt_LoggedStateDimensions
, rt_LoggedStateIsVarDims , ( NULL ) , ( NULL ) , rt_LoggedStateDataTypeIds ,
rt_LoggedStateComplexSignals , ( NULL ) , rt_LoggingStatePreprocessingFcnPtrs
, { rt_LoggedStateLabels } , ( NULL ) , ( NULL ) , ( NULL ) , {
rt_LoggedStateBlockNames } , { rt_LoggedStateNames } ,
rt_LoggedStateCrossMdlRef , rt_RTWLogDataTypeConvert , rt_LoggedStateIdxList
} ; static void * rt_LoggedStateSignalPtrs [ 2 ] ; rtliSetLogXSignalPtrs (
ssGetRTWLogInfo ( rtS ) , ( LogSignalPtrsType ) rt_LoggedStateSignalPtrs ) ;
rtliSetLogXSignalInfo ( ssGetRTWLogInfo ( rtS ) , & rt_LoggedStateSignalInfo
) ; rt_LoggedStateSignalPtrs [ 0 ] = ( void * ) rtDW . kl4at23xp2 ;
rt_LoggedStateSignalPtrs [ 1 ] = ( void * ) & rtDW . armc3r3dlj ; }
rtliSetLogT ( ssGetRTWLogInfo ( rtS ) , "tout" ) ; rtliSetLogX (
ssGetRTWLogInfo ( rtS ) , "" ) ; rtliSetLogXFinal ( ssGetRTWLogInfo ( rtS ) ,
"xFinal" ) ; rtliSetLogVarNameModifier ( ssGetRTWLogInfo ( rtS ) , "none" ) ;
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
3197626419U ) ; ssSetChecksumVal ( rtS , 1 , 3927172269U ) ; ssSetChecksumVal
( rtS , 2 , 2011725344U ) ; ssSetChecksumVal ( rtS , 3 , 3289494203U ) ; {
static const sysRanDType rtAlwaysEnabled = SUBSYS_RAN_BC_ENABLE ; static
RTWExtModeInfo rt_ExtModeInfo ; static const sysRanDType * systemRan [ 1 ] ;
gblRTWExtModeInfo = & rt_ExtModeInfo ; ssSetRTWExtModeInfo ( rtS , &
rt_ExtModeInfo ) ; rteiSetSubSystemActiveVectorAddresses ( & rt_ExtModeInfo ,
systemRan ) ; systemRan [ 0 ] = & rtAlwaysEnabled ;
rteiSetModelMappingInfoPtr ( ssGetRTWExtModeInfo ( rtS ) , &
ssGetModelMappingInfo ( rtS ) ) ; rteiSetChecksumsPtr ( ssGetRTWExtModeInfo (
rtS ) , ssGetChecksums ( rtS ) ) ; rteiSetTPtr ( ssGetRTWExtModeInfo ( rtS )
, ssGetTPtr ( rtS ) ) ; } slsaDisallowedBlocksForSimTargetOP ( rtS ,
mr_float_model_GetSimStateDisallowedBlocks ) ; slsaGetWorkFcnForSimTargetOP (
rtS , mr_float_model_GetDWork ) ; slsaSetWorkFcnForSimTargetOP ( rtS ,
mr_float_model_SetDWork ) ; rt_RapidReadMatFileAndUpdateParams ( rtS ) ; if (
ssGetErrorStatus ( rtS ) ) { return rtS ; } executionInfo ->
simulationOptions_ . stateSaveName_ = rtliGetLogX ( ssGetRTWLogInfo ( rtS ) )
; executionInfo -> simulationOptions_ . finalStateName_ = rtliGetLogXFinal (
ssGetRTWLogInfo ( rtS ) ) ; executionInfo -> simulationOptions_ .
outputSaveName_ = rtliGetLogY ( ssGetRTWLogInfo ( rtS ) ) ; return rtS ; }
#if defined(_MSC_VER)
#pragma optimize( "", on )
#endif
void MdlOutputsParameterSampleTime ( int_T tid ) { MdlOutputsTID3 ( tid ) ; }

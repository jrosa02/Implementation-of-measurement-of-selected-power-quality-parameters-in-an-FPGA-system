#include "ext_types.h"
static DataTypeInfo rtDataTypeInfoTable [ ] = { { "real_T" , 0 , 8 } , {
"real32_T" , 1 , 4 } , { "int8_T" , 2 , 1 } , { "uint8_T" , 3 , 1 } , {
"int16_T" , 4 , 2 } , { "uint16_T" , 5 , 2 } , { "int32_T" , 6 , 4 } , {
"uint32_T" , 7 , 4 } , { "boolean_T" , 8 , 1 } , { "fcn_call_T" , 9 , 0 } , {
"int_T" , 10 , 4 } , { "pointer_T" , 11 , 8 } , { "action_T" , 12 , 8 } , {
"timer_uint32_pair_T" , 13 , 8 } , { "physical_connection" , 14 , 8 } , {
"int64_T" , 15 , 8 } , { "uint64_T" , 16 , 8 } , { "uint16_T" , 17 , 2 } , {
"struct_tWjMVrOBp0cYoZ8XXGA92G" , 18 , 112 } , {
"struct_TiYjGQy9n8bHGyacNpAe5G" , 19 , 64 } , { "int16_T" , 20 , 2 } , {
"uint32_T" , 21 , 4 } , { "int16_T" , 22 , 2 } , { "int16_T" , 23 , 2 } , {
"uint16_T" , 24 , 2 } , { "uint64_T" , 25 , 8 } , { "int64_T" , 26 , 8 } , {
"uint_T" , 27 , 32 } , { "char_T" , 28 , 8 } , { "uchar_T" , 29 , 8 } , {
"time_T" , 30 , 8 } } ; static uint_T rtDataTypeSizes [ ] = { sizeof ( real_T
) , sizeof ( real32_T ) , sizeof ( int8_T ) , sizeof ( uint8_T ) , sizeof (
int16_T ) , sizeof ( uint16_T ) , sizeof ( int32_T ) , sizeof ( uint32_T ) ,
sizeof ( boolean_T ) , sizeof ( fcn_call_T ) , sizeof ( int_T ) , sizeof (
pointer_T ) , sizeof ( action_T ) , 2 * sizeof ( uint32_T ) , sizeof (
int32_T ) , sizeof ( int64_T ) , sizeof ( uint64_T ) , sizeof ( uint16_T ) ,
sizeof ( int32_T ) , sizeof ( int32_T ) , sizeof ( int16_T ) , sizeof (
uint32_T ) , sizeof ( int16_T ) , sizeof ( int16_T ) , sizeof ( uint16_T ) ,
sizeof ( uint64_T ) , sizeof ( int64_T ) , sizeof ( uint_T ) , sizeof (
char_T ) , sizeof ( uchar_T ) , sizeof ( time_T ) } ; static const char_T *
rtDataTypeNames [ ] = { "real_T" , "real32_T" , "int8_T" , "uint8_T" ,
"int16_T" , "uint16_T" , "int32_T" , "uint32_T" , "boolean_T" , "fcn_call_T"
, "int_T" , "pointer_T" , "action_T" , "timer_uint32_pair_T" ,
"physical_connection" , "int64_T" , "uint64_T" , "uint16_T" ,
"struct_tWjMVrOBp0cYoZ8XXGA92G" , "struct_TiYjGQy9n8bHGyacNpAe5G" , "int16_T"
, "uint32_T" , "int16_T" , "int16_T" , "uint16_T" , "uint64_T" , "int64_T" ,
"uint_T" , "char_T" , "uchar_T" , "time_T" } ; static DataTypeTransition
rtBTransitions [ ] = { { ( char_T * ) ( & rtB . ejhui3fdzv ) , 0 , 0 , 3 } ,
{ ( char_T * ) ( & rtB . i0buti5e3e ) , 17 , 0 , 3 } , { ( char_T * ) ( & rtB
. m4e4llhd3u [ 0 ] . re ) , 20 , 1 , 4096 } , { ( char_T * ) ( & rtDW .
ohndf50qyn ) , 0 , 0 , 3 } , { ( char_T * ) ( & rtDW . ldmmcxssq0 .
LoggedData [ 0 ] ) , 11 , 0 , 7 } , { ( char_T * ) ( & rtDW . nwjvykniub ) ,
6 , 0 , 1 } , { ( char_T * ) ( & rtDW . nnt4zufick [ 0 ] ) , 17 , 0 , 2047 }
, { ( char_T * ) ( & rtDW . eqwblmcedm ) , 8 , 0 , 2 } } ; static
DataTypeTransitionTable rtBTransTable = { 8U , rtBTransitions } ; static
DataTypeTransition rtPTransitions [ ] = { { ( char_T * ) ( & rtP .
WaveformGenerator_SelectedSignal ) , 0 , 0 , 3 } , { ( char_T * ) ( & rtP .
Buffer_ic ) , 17 , 0 , 1 } } ; static DataTypeTransitionTable rtPTransTable =
{ 2U , rtPTransitions } ;

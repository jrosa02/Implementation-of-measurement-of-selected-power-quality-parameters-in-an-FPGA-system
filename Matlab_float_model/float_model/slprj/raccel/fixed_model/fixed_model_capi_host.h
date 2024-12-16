#ifndef fixed_model_cap_host_h__
#define fixed_model_cap_host_h__
#ifdef HOST_CAPI_BUILD
#include "rtw_capi.h"
#include "rtw_modelmap_simtarget.h"
typedef struct { rtwCAPI_ModelMappingInfo mmi ; }
fixed_model_host_DataMapInfo_T ;
#ifdef __cplusplus
extern "C" {
#endif
void fixed_model_host_InitializeDataMapInfo ( fixed_model_host_DataMapInfo_T
* dataMap , const char * path ) ;
#ifdef __cplusplus
}
#endif
#endif
#endif

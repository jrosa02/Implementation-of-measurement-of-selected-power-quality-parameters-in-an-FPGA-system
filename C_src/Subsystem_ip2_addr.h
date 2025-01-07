/*
 * File Name:         hdl_prj\ipcore\Subsystem_ip2_v1_9\include\Subsystem_ip2_addr.h
 * Description:       C Header File
 * Created:           2024-12-20 21:08:33
*/

#ifndef SUBSYSTEM_IP2_H_
#define SUBSYSTEM_IP2_H_

#include <xparameters.h>

#define  IPCore_Reset_Subsystem_ip2                           0x0  //write 0x1 to bit 0 to reset IP core
#define  IPCore_Enable_Subsystem_ip2                          0x4  //enabled (by default) when bit 0 is 0x1
#define  IPCore_PacketSize_AXI4_Stream_Master_Subsystem_ip2   0x8  //Packet size for AXI4-Stream Master interface, the default value is 2048. The TLAST output signal of the AXI4-Stream Master interface is generated based on the packet size.
#define  IPCore_Timestamp_Subsystem_ip2                       0xC  //contains unique IP timestamp (yymmddHHMM): 2412202108
#define  user_reset_Data_Subsystem_ip2                        0x100  //data register for Inport user_reset
#define  MAX_Data_Subsystem_ip2                               0x104  //data register for Outport MAX
#define  MIN_Data_Subsystem_ip2                               0x108  //data register for Outport MIN
#define  THD_Data_Subsystem_ip2                               0x10C  //data register for Outport THD
#define  RMS_Data_Subsystem_ip2                               0x110  //data register for Outport RMS
#define  VAL_OUT_Data_Subsystem_ip2                           0x114  //data register for Outport VAL_OUT

#define  IP_RESET_ADDR          (XPAR_SUBSYSTEM_IP2_0_BASEADDR + IPCore_Reset_Subsystem_ip2)
#define  IP_ENABLE_ADDR         (XPAR_SUBSYSTEM_IP2_0_BASEADDR + IPCore_Enable_Subsystem_ip2)
#define  IP_PACKET_SIZE_ADDR    (XPAR_SUBSYSTEM_IP2_0_BASEADDR + IPCore_PacketSize_AXI4_Stream_Master_Subsystem_ip2)
#define  IP_TIMESTAMP_ADDR      (XPAR_SUBSYSTEM_IP2_0_BASEADDR + IPCore_Timestamp_Subsystem_ip2)
#define  IP_USER_RESET_ADDR     (XPAR_SUBSYSTEM_IP2_0_BASEADDR + user_reset_Data_Subsystem_ip2)
#define  IP_MAX_ADDR            (XPAR_SUBSYSTEM_IP2_0_BASEADDR + MAX_Data_Subsystem_ip2)
#define  IP_MIN_ADDR            (XPAR_SUBSYSTEM_IP2_0_BASEADDR + MIN_Data_Subsystem_ip2)
#define  IP_THD_ADDR            (XPAR_SUBSYSTEM_IP2_0_BASEADDR + THD_Data_Subsystem_ip2)
#define  IP_RMS_ADDR            (XPAR_SUBSYSTEM_IP2_0_BASEADDR + RMS_Data_Subsystem_ip2)
#define  IP_VAL_OUT_ADDR        (XPAR_SUBSYSTEM_IP2_0_BASEADDR + VAL_OUT_Data_Subsystem_ip2)



#endif /* SUBSYSTEM_IP2_H_ */

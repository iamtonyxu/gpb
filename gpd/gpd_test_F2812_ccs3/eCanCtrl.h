/******************************************************************************
*	File:			eCanCtrl.h
*	Devices:		TMS320F2812
*	Description:	This file constitutes the header file for the CAN device 
*					driver
*
*	Author:			Tony Iadevaia
*	History:
*					8/16/07	- Original 
******************************************************************************/

#ifndef ECANCTRL_H
#define ECANCTRL_H

#ifdef __cplusplus
extern "C" {
#endif

typedef union CANMSG {
	unsigned char bData[8];
	struct sCAN_MSG {
		unsigned char Cmd;
		unsigned char Length;
		unsigned char Parm1;
		unsigned char Parm2;
		unsigned char Parm3;
		unsigned char Parm4;
		unsigned char Parm5;
		unsigned char Parm6;
	} sMsgStruct;
} SMessage;

void InitECan(void);
void ConfigECan(void);
int TxECanMsg(int MboxNo, SMessage* pTxMsg);
Uint32 CheckRxMailBoxes(void);
int RxECanMsg(int MboxNo, SMessage* pRxMsg);

Uint32 TwoToTheN(int n);
int LnOfTwoToTheN(Uint32 n);

#ifdef __cplusplus
}
#endif /* extern "C" */


#endif  // end of ECANCTRL_H definition

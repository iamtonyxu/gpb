/******************************************************************************
*	File:			eCanCtrl.c
*	Devices:		TMS320F2812
*	Description:	This file constitutes the device driver for the CAN 
*					Controller. It provides methods to Initialize and Configure 
*					the CAN	Interface, methods to build CAN messages, methods to
*					Transmit CAN messages, and methods to Receive CAN messages.
*
*	Author:			Tony Iadevaia
*
*	History:		8/16/07	- Original 
*					
******************************************************************************/
#include "DSP281x_Device.h"
#include "eCanCtrl.h"

// EXAMPLE_BIOS or EXAMPLE_NONBIOS are defined in the CCS project build options
#ifdef EXAMPLE_BIOS
    #include "example_BIOS.h"
#endif

#ifdef EXAMPLE_NONBIOS
    #include "example_nonBIOS.h"
#endif

/******************************************************************************
*	Function:		InitECan()
*	Desctiption:	This function initializes the CAN interface.
*
*	Inputs:			none
*
*	Outputs:		none
*
*	returns:		void
*
*	Author:			TI
*
*	History:		8/16/07 - Original
*
******************************************************************************/
void InitECan(void)
{
	asm(" EALLOW");

	/* Configure eCAN pins using GPIO Regs */
	GpioMuxRegs.GPFMUX.bit.CANTXA_GPIOF6 = 1;
	GpioMuxRegs.GPFMUX.bit.CANRXA_GPIOF7 = 1;

	/* Configure eCAN RX and TX pins for eCAN transmissions using eCAN regs */
	ECanaRegs.CANTIOC.bit.TXFUNC = 1;
	ECanaRegs.CANRIOC.bit.RXFUNC = 1;

	/* Configure eCAN for HECC mode - (required to access mailboxes 16 through 31 */
	ECanaRegs.CANMC.bit.SCB = 1;	  // also enables time-stamping feature

	/* Initialize all bits of 'Message Control Register' to zero */
	// Some bits of MCR register come up in an unknown state. For proper operation,
	// all bits (including reserved bits) of MCR must be initialized to zero
	ECanaMboxes.MBOX0.MSGCTRL.all = 0x00000000;
	ECanaMboxes.MBOX1.MSGCTRL.all = 0x00000000;
	ECanaMboxes.MBOX2.MSGCTRL.all = 0x00000000;
	ECanaMboxes.MBOX3.MSGCTRL.all = 0x00000000;
	ECanaMboxes.MBOX4.MSGCTRL.all = 0x00000000;
	ECanaMboxes.MBOX5.MSGCTRL.all = 0x00000000; 
	ECanaMboxes.MBOX6.MSGCTRL.all = 0x00000000;
	ECanaMboxes.MBOX7.MSGCTRL.all = 0x00000000;
	ECanaMboxes.MBOX8.MSGCTRL.all = 0x00000000;
	ECanaMboxes.MBOX9.MSGCTRL.all = 0x00000000;
	ECanaMboxes.MBOX10.MSGCTRL.all = 0x00000000;
	ECanaMboxes.MBOX11.MSGCTRL.all = 0x00000000;
	ECanaMboxes.MBOX12.MSGCTRL.all = 0x00000000;
	ECanaMboxes.MBOX13.MSGCTRL.all = 0x00000000;
	ECanaMboxes.MBOX14.MSGCTRL.all = 0x00000000;
	ECanaMboxes.MBOX15.MSGCTRL.all = 0x00000000;
	ECanaMboxes.MBOX16.MSGCTRL.all = 0x00000000;
	ECanaMboxes.MBOX17.MSGCTRL.all = 0x00000000;
	ECanaMboxes.MBOX18.MSGCTRL.all = 0x00000000;
	ECanaMboxes.MBOX19.MSGCTRL.all = 0x00000000;
	ECanaMboxes.MBOX20.MSGCTRL.all = 0x00000000;
	ECanaMboxes.MBOX21.MSGCTRL.all = 0x00000000;
	ECanaMboxes.MBOX22.MSGCTRL.all = 0x00000000;
	ECanaMboxes.MBOX23.MSGCTRL.all = 0x00000000;
	ECanaMboxes.MBOX24.MSGCTRL.all = 0x00000000;
	ECanaMboxes.MBOX25.MSGCTRL.all = 0x00000000;
	ECanaMboxes.MBOX26.MSGCTRL.all = 0x00000000;
	ECanaMboxes.MBOX27.MSGCTRL.all = 0x00000000;
	ECanaMboxes.MBOX28.MSGCTRL.all = 0x00000000;
	ECanaMboxes.MBOX29.MSGCTRL.all = 0x00000000;
	ECanaMboxes.MBOX30.MSGCTRL.all = 0x00000000;
	ECanaMboxes.MBOX31.MSGCTRL.all = 0x00000000;
	

	/* Clear all TAn bits */
	ECanaRegs.CANTA.all = 0xffffffff;

	/* Clear all RMPn bits */
	ECanaRegs.CANRMP.all = 0xffffffff;

	/* Clear all Interrupt flag bits */
	ECanaRegs.CANGIF0.all = 0xffffffff;
	ECanaRegs.CANGIF1.all = 0xffffffff;

	/* Configure bit timing parameters */
	ECanaRegs.CANMC.bit.CCR = 1;		// Set CCR = 1
	while(ECanaRegs.CANES.bit.CCE != 1) {} // Wait for CCE bit to be set...
	
	ECanaRegs.CANBTC.bit.BRPREG = 7;
	ECanaRegs.CANBTC.bit.TSEG2REG = 2;
	ECanaRegs.CANBTC.bit.TSEG1REG = 10;
	
	ECanaRegs.CANMC.bit.CCR = 0;		// Set CCR = 0
	ECanaRegs.CANMC.bit.PDR = 0;		// Set PDR = 0
	ECanaRegs.CANMC.bit.DBO = 1;		// Set DBO = 1
	ECanaRegs.CANMC.bit.WUBA = 0;		// Set WUBA = 0
	ECanaRegs.CANMC.bit.CDR = 0;		// Set CDR = 0
	ECanaRegs.CANMC.bit.ABO = 0;		// Set ABO = 0
	ECanaRegs.CANMC.bit.STM = 0;		// Set STM = 0
	ECanaRegs.CANMC.bit.SRES = 0;		// Set SRES = 0
	ECanaRegs.CANMC.bit.MBNR = 0;		// Set MBNR = 0
	while(ECanaRegs.CANES.bit.CCE != 0) {} // Wait for CCE bit to clear...										

	/* Disable all mailboxes */
	ECanaRegs.CANME.all = 0;	// required before writing the MSGIDs

	ConfigECan();				// Configure the CAN Module
	
	asm(" EDIS");				// Disable EALLOW protected register access

} // InitECan()

/******************************************************************************
*	Function:		ConfigECan()
*	Desctiption:	This function Configures the CAN Transmit and Receive
*					Mailboxes. The convention adoped is to configure Mailboxes
*					0 through 15 as Transmit and Mailboxes 16 through 31 as
*					Receive. Mailboxes 16 through 20 are linked for overflow;
*					kind of a crude circular buffer.
*
*	Inputs:			none
*
*	Outputs:		none
*
*	returns:		void
*
*	Author:			TI
*
*	History:		8/16/07 - Original
*
******************************************************************************/
void ConfigECan(void)
{
	if(ECanaRegs.CANTRS.all) {			// If Transmit requests are pending
		ECanaRegs.CANTRR.all = 0xFFFFFFFF;
		while(ECanaRegs.CANTRS.all){} 	// Wait for all Transmit requests to clear
	}

	/* Write to the MSGID field of TRANSMIT mailboxes MBOX0 - MBOX15 */
	ECanaMboxes.MBOX0.MSGID.all = 0x9AAAAAA0;
	ECanaMboxes.MBOX1.MSGID.all = 0x9AAAAAA1;
	ECanaMboxes.MBOX2.MSGID.all = 0x9AAAAAA2;
	ECanaMboxes.MBOX3.MSGID.all = 0x9AAAAAA3;
	ECanaMboxes.MBOX4.MSGID.all = 0x9AAAAAA4;
	ECanaMboxes.MBOX5.MSGID.all = 0x9AAAAAA5;
	ECanaMboxes.MBOX6.MSGID.all = 0x9AAAAAA6;
	ECanaMboxes.MBOX7.MSGID.all = 0x9AAAAAA7;
	ECanaMboxes.MBOX8.MSGID.all = 0x9AAAAAA8;
	ECanaMboxes.MBOX9.MSGID.all = 0x9AAAAAA9;
	ECanaMboxes.MBOX10.MSGID.all = 0x9AAAAAAA;
	ECanaMboxes.MBOX11.MSGID.all = 0x9AAAAAAB;
	ECanaMboxes.MBOX12.MSGID.all = 0x9AAAAAAC;
	ECanaMboxes.MBOX13.MSGID.all = 0x9AAAAAAD;
	ECanaMboxes.MBOX14.MSGID.all = 0x9AAAAAAE;
	ECanaMboxes.MBOX15.MSGID.all = 0x9AAAAAAF;

	/* Write to the MSGID field of the RECEIVE mailboxes MBOX16 - MBOX31 */
	ECanaMboxes.MBOX16.MSGID.all = 0x95555550;
	ECanaMboxes.MBOX17.MSGID.all = 0x95555551;
	ECanaMboxes.MBOX18.MSGID.all = 0x95555552;
	ECanaMboxes.MBOX19.MSGID.all = 0x95555553;
	ECanaMboxes.MBOX20.MSGID.all = 0x95555554;
	ECanaMboxes.MBOX21.MSGID.all = 0x95555555;	
	ECanaMboxes.MBOX22.MSGID.all = 0x95555556;
	ECanaMboxes.MBOX23.MSGID.all = 0x95555557;
	ECanaMboxes.MBOX24.MSGID.all = 0x95555558;
	ECanaMboxes.MBOX25.MSGID.all = 0x95555559;
	ECanaMboxes.MBOX26.MSGID.all = 0x9555555A;
	ECanaMboxes.MBOX27.MSGID.all = 0x9555555B;
	ECanaMboxes.MBOX28.MSGID.all = 0x9555555C;
	ECanaMboxes.MBOX29.MSGID.all = 0x9555555D;
	ECanaMboxes.MBOX30.MSGID.all = 0x9555555E;
	ECanaMboxes.MBOX31.MSGID.all = 0x9AAAAAAF;

	/* Write the MASK values for the 5 linked RECEIVE Mailboxes */
	ECanaLAMRegs.LAM16.all = 0x80000000;
	ECanaLAMRegs.LAM17.all = 0x80000000;
	ECanaLAMRegs.LAM18.all = 0x80000000;
	ECanaLAMRegs.LAM19.all = 0x80000000;
	ECanaLAMRegs.LAM20.all = 0x80000000;

	/* Set the OPC Flag for RECEIVE Mailboxes 20 - 17 */
	ECanaRegs.CANOPC.bit.OPC20 = 1;
	ECanaRegs.CANOPC.bit.OPC19 = 1;
	ECanaRegs.CANOPC.bit.OPC18 = 1;
	ECanaRegs.CANOPC.bit.OPC17 = 1;

	/* Configure MBOX0 - MBOX15 as Transmit and MBOX16 - MBOX31 as RECEIVE */
	ECanaRegs.CANMD.all = 0xFFFF0000;

	/* Set Data Length of all TRANSMIT Mailboxes to 8-bytes */
	ECanaMboxes.MBOX0.MSGCTRL.bit.DLC = 8;
	ECanaMboxes.MBOX1.MSGCTRL.bit.DLC = 8;
	ECanaMboxes.MBOX2.MSGCTRL.bit.DLC = 8;
	ECanaMboxes.MBOX3.MSGCTRL.bit.DLC = 8;
	ECanaMboxes.MBOX4.MSGCTRL.bit.DLC = 8;
	ECanaMboxes.MBOX5.MSGCTRL.bit.DLC = 8;
	ECanaMboxes.MBOX6.MSGCTRL.bit.DLC = 8;
	ECanaMboxes.MBOX7.MSGCTRL.bit.DLC = 8;
	ECanaMboxes.MBOX8.MSGCTRL.bit.DLC = 8;
	ECanaMboxes.MBOX9.MSGCTRL.bit.DLC = 8;
	ECanaMboxes.MBOX10.MSGCTRL.bit.DLC = 8;
	ECanaMboxes.MBOX11.MSGCTRL.bit.DLC = 8;
	ECanaMboxes.MBOX12.MSGCTRL.bit.DLC = 8;
	ECanaMboxes.MBOX13.MSGCTRL.bit.DLC = 8;
	ECanaMboxes.MBOX14.MSGCTRL.bit.DLC = 8;
	ECanaMboxes.MBOX15.MSGCTRL.bit.DLC = 8;

	/* Enable all Mailboxes */
	ECanaRegs.CANME.all = 0xFFFFFFFF;

} // ConfigECan()

/******************************************************************************
*	Function:		TxECanMsg()
*	Desctiption:	This function Transmits a CAN message out of the selected
*					Mailbox. 
*
*	Inputs:			int MailBoxNo; 		Selected Transmit Mailbox (Range 0 to 15)
*					struct SMessage;	Data packet structure
*
*	Outputs:		none
*
*	returns:		int;				0 for Success, +n for Warning, -n for Error
*
*	Author:			TI
*
*	History:		8/16/07 - Original
*
******************************************************************************/
int TxECanMsg(int MboxNo, SMessage* pTxMsg)
{
	Uint32 uTemp;
	int Err = 0;
	
	volatile struct MBOX *TxMbox = (struct MBOX*) 0x6100;
	
	if(MboxNo > 15) {
		MboxNo = 15;
		Err = 0x1;
	}
	
	TxMbox += MboxNo;

	TxMbox->MDL.byte.BYTE0 = pTxMsg->sMsgStruct.Cmd;
	TxMbox->MDL.byte.BYTE1 = pTxMsg->sMsgStruct.Length;
	TxMbox->MDL.byte.BYTE2 = pTxMsg->sMsgStruct.Parm1;
	TxMbox->MDL.byte.BYTE3 = pTxMsg->sMsgStruct.Parm2;
	TxMbox->MDH.byte.BYTE4 = pTxMsg->sMsgStruct.Parm3;
	TxMbox->MDH.byte.BYTE5 = pTxMsg->sMsgStruct.Parm4;
	TxMbox->MDH.byte.BYTE6 = pTxMsg->sMsgStruct.Parm5;
	TxMbox->MDH.byte.BYTE7 = pTxMsg->sMsgStruct.Parm6;
	
	/* Begin Transmitting */
	uTemp = TwoToTheN(MboxNo);
	ECanaRegs.CANTRS.all = uTemp;
	while((ECanaRegs.CANTA.all && uTemp) == 0) {} 	/* Wait for Transmission to complete*/
	ECanaRegs.CANTA.all = uTemp; 					/* Clear Transmit request */

	return Err;

} /* TxECanMsg() */ 

/******************************************************************************
*	Function:		RxECanMsg()
*	Desctiption:	This function Receives a CAN message from the CAN Controller
*
*	Inputs:			int MailBoxNo; 		Selected Receive Mailbox (Range 16 to 31)
*					struct SMessage;	Data packet structure
*
*	Outputs:		none
*
*	returns:		int;				0 for Success, +n for Warning, -n for Error
*
*	Author:			TI
*
*	History:		8/16/07 - Original
*
******************************************************************************/
int RxECanMsg(int MboxNo, SMessage* pRxMsg)
{
	Uint32 uTemp;
	int Err = 0;

	volatile struct MBOX *RxMbox = (struct MBOX*) 0x6100;

	RxMbox += MboxNo;

	if((MboxNo > 15) && (MboxNo < 32)) { /* Mailbox is within bounds of RX MBOXES */
		uTemp = TwoToTheN(MboxNo);		 /* Select the correct receive mailbox */
		
		pRxMsg->bData[0] = RxMbox->MDL.byte.BYTE0;
		pRxMsg->bData[1] = RxMbox->MDL.byte.BYTE1;
		pRxMsg->bData[2] = RxMbox->MDL.byte.BYTE2;
		pRxMsg->bData[3] = RxMbox->MDL.byte.BYTE3;
		pRxMsg->bData[4] = RxMbox->MDH.byte.BYTE4;
		pRxMsg->bData[5] = RxMbox->MDH.byte.BYTE5;
		pRxMsg->bData[6] = RxMbox->MDH.byte.BYTE6;
		pRxMsg->bData[7] = RxMbox->MDH.byte.BYTE7;
		
		ECanaRegs.CANRMP.all = uTemp;	/* Clear RMP bit for this mailbox */
		return Err;
	}
	else
		return 1;

} /* RxECanMsg() */

/******************************************************************************
*	Function:		CheckRxMailBoxes()
*	Desctiption:	This function checks the receive Mailboxes for any received
*					CAN messages.
*
*	Inputs:			none
*
*	Outputs:		none
*
*	returns:		Uint32;		Mailboxes with received CAN messages		
*
*	Author:			TI
*
*	History:		8/16/07 - Original
*
******************************************************************************/
Uint32 CheckRxMailBoxes(void)
{

	return (ECanaRegs.CANRMP.all & 0xffff0000);

} /* CheckRxMailBoxes() */










/******************************************************************************
*	Function:		TwoToTheN()
*	Desctiption:	This function takes n and returns 2^n
*
*	Inputs:			int n; 		the power that 2 will be raised to
*
*	Outputs:		none
*
*	returns:		Uint32;		2^n
*
*	Author:			TI
*
*	History:		8/16/07 - Original
*
******************************************************************************/
Uint32 TwoToTheN(int n)
{
	int idx;
	Uint32 Mult = 1;

	if(n > 31)
		return 0;
	else if(n == 0)
		return 1;
	else {
		for(idx = 1; idx <= n; idx++)
			Mult *= 2;
		return Mult;
	}

} /* TwoToTheN() */

/******************************************************************************
*	Function:		LnOfTwoToTheN()
*	Desctiption:	This function takes 2^n and returns n
*
*	Inputs:			Uint32 x; 	2^n	
*
*	Outputs:		none
*
*	returns:		int;		n
*
*	Author:			TI
*
*	History:		8/16/07 - Original
*
******************************************************************************/
int LnOfTwoToTheN(Uint32 n)
{
	int idx = 0;

	if((n) && (n > 1)) {
		while(((n >>= 1) & 0x01) == 0)
			idx++;
		return idx;
	}
	else if(n == 1)
		return 0;
	else
		return -1;

} /* LnOfTwoToTheN() */

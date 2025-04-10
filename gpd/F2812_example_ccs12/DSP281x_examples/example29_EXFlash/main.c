/*********************************************************************
**	Module Name:		Ex_Flash				    				**
**	CreateDate:			2015-03-27		    						**
**	Description:外部RAM和外部FLASH联合读写试验		            			    				**
**********************************************************************/

/*********************************************************************
**	实验目的:通过学习外部FLASH实验,了解FLASH的读写                  **
**	实验说明:这里我们是和前面讲的外部RAM实验联合进行的,先是给外部   **
**           RAM里面写写入数据,然后把数据写到外部FLASH里面          **
**	实验结果:在指定位置设置断点后可观察通过函数来写到FLASH里面的值  **
**********************************************************************/


#include "DSP281x_Device.h"     // DSP281x Headerfile Include File
#include "DSP281x_Examples.h"   // DSP281x Examples Include File
#include "ext_inf.h"


void	SendData(Uint16	 data);

extern Uint16	SectorErase(Uint16	SectorNum);	//扇区擦除
extern Uint16	BlockErase(Uint16	BlockNum);	//块擦除
extern Uint16	ChipErase(void);				//芯片擦除
extern Uint16	FlashWrite(Uint32	RamStart, Uint32   RomStart,  Uint16	Length);
extern void	FlashRead(Uint32	RamStart, Uint32  RomStart,	Uint16	Length);
extern void	InitExRam(Uint16	Start);
extern void	InitExRam1(Uint16	Start);
extern void	RamRead(Uint16	Start);
unsigned  	int  *USB = (unsigned  int *)0x5700;
void main(void)
{

	/*初始化系统*/
	InitSysCtrl();

	/*关中断*/
	DINT;
	IER = 0x0000;
	IFR = 0x0000;

	/*初始化PIE*/
	InitPieCtrl();

	/*初始化PIE中断矢量表*/
	InitPieVectTable();	
	

    *USB=0;
    
	//在下面任一行设断点后,查看内存即可观察到实验现象
	InitExRam(0);			//初始化外部RAM,将外部RAM里面写入我们的数据

	ChipErase();			//擦除FLASH里面的数据
	
	RamRead(0x4000);		//设置断点,读外部RAM里面的数据,地址为0X00100000 
	
	FlashWrite(0,0,0x4000);	//此行是将内存地址0x100000的内容复制到FLASH地址的0x80000中,长度为0x4000
	
	BlockErase(0); 			//设置断点,可观察到将外部RAM中的数据复制到外部FLASH之后,里面的值是相同的

	InitExRam1(0x0);		//此行是将起始地址为0x0000的内存初始化为0,
	
	FlashRead(0,0,0x4000);	//此行是将外部FLASH的内容复制到RAM中,长度为0x4000
	
	for(;;);

} 	



//===========================================================================
// No more.
//===========================================================================

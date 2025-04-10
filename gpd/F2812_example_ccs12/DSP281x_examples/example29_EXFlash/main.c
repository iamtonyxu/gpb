/*********************************************************************
**	Module Name:		Ex_Flash				    				**
**	CreateDate:			2015-03-27		    						**
**	Description:�ⲿRAM���ⲿFLASH���϶�д����		            			    				**
**********************************************************************/

/*********************************************************************
**	ʵ��Ŀ��:ͨ��ѧϰ�ⲿFLASHʵ��,�˽�FLASH�Ķ�д                  **
**	ʵ��˵��:���������Ǻ�ǰ�潲���ⲿRAMʵ�����Ͻ��е�,���Ǹ��ⲿ   **
**           RAM����дд������,Ȼ�������д���ⲿFLASH����          **
**	ʵ����:��ָ��λ�����öϵ��ɹ۲�ͨ��������д��FLASH�����ֵ  **
**********************************************************************/


#include "DSP281x_Device.h"     // DSP281x Headerfile Include File
#include "DSP281x_Examples.h"   // DSP281x Examples Include File
#include "ext_inf.h"


void	SendData(Uint16	 data);

extern Uint16	SectorErase(Uint16	SectorNum);	//��������
extern Uint16	BlockErase(Uint16	BlockNum);	//�����
extern Uint16	ChipErase(void);				//оƬ����
extern Uint16	FlashWrite(Uint32	RamStart, Uint32   RomStart,  Uint16	Length);
extern void	FlashRead(Uint32	RamStart, Uint32  RomStart,	Uint16	Length);
extern void	InitExRam(Uint16	Start);
extern void	InitExRam1(Uint16	Start);
extern void	RamRead(Uint16	Start);
unsigned  	int  *USB = (unsigned  int *)0x5700;
void main(void)
{

	/*��ʼ��ϵͳ*/
	InitSysCtrl();

	/*���ж�*/
	DINT;
	IER = 0x0000;
	IFR = 0x0000;

	/*��ʼ��PIE*/
	InitPieCtrl();

	/*��ʼ��PIE�ж�ʸ����*/
	InitPieVectTable();	
	

    *USB=0;
    
	//��������һ����ϵ��,�鿴�ڴ漴�ɹ۲쵽ʵ������
	InitExRam(0);			//��ʼ���ⲿRAM,���ⲿRAM����д�����ǵ�����

	ChipErase();			//����FLASH���������
	
	RamRead(0x4000);		//���öϵ�,���ⲿRAM���������,��ַΪ0X00100000 
	
	FlashWrite(0,0,0x4000);	//�����ǽ��ڴ��ַ0x100000�����ݸ��Ƶ�FLASH��ַ��0x80000��,����Ϊ0x4000
	
	BlockErase(0); 			//���öϵ�,�ɹ۲쵽���ⲿRAM�е����ݸ��Ƶ��ⲿFLASH֮��,�����ֵ����ͬ��

	InitExRam1(0x0);		//�����ǽ���ʼ��ַΪ0x0000���ڴ��ʼ��Ϊ0,
	
	FlashRead(0,0,0x4000);	//�����ǽ��ⲿFLASH�����ݸ��Ƶ�RAM��,����Ϊ0x4000
	
	for(;;);

} 	



//===========================================================================
// No more.
//===========================================================================

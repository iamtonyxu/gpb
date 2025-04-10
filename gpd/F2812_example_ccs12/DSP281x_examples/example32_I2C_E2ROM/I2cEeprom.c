/********************************************************************
* �ļ����� 	IO��ģ��I2C��дEeprom����
* ����:  	ִ�иó��򣬶�дEeprom			 
* �汾�ţ� 	V1.1
*		 	
***********************************************************************/
/********************************************************************
����˵����1.����Eerom_Gpio_Init��������ʼ����Eeprom��ص�IO
		  2.���� writebyte(Uint16 addr,Uint16 data); //дEeprom
            	 readbyte(Uint16 addr);				 //��Eeprom
		  3.�鿴��ȡ��������д�������Ƿ�һ��
********************************************************************/


#include "DSP281x_Device.h"     // DSP281x Headerfile Include File
#include "DSP281x_Examples.h"   // DSP281x Examples Include File

#define SDA_R   GpioDataRegs.GPBDAT.bit.GPIOB15;     //SDA ��״̬
#define SDA_W0  GpioDataRegs.GPBCLEAR.bit.GPIOB15=1; //SDA ���0 д״̬
#define SDA_W1  GpioDataRegs.GPBSET.bit.GPIOB15=1;   //SDA ���1 д״̬
#define SCL_0   GpioDataRegs.GPBCLEAR.bit.GPIOB14 =1; //SCL ���0
#define SCL_1   GpioDataRegs.GPBSET.bit.GPIOB14 =1;   //SCL ���1
#define DELAY_UNIT	10								//�궨����ʱʱ�䳣��
Uint16 eromrw_err;									//Eeprom��д����ָʾ
/******************************��������****************************/
void writebyte(Uint16 addr,Uint16 data);
Uint16 readbyte(Uint16 addr);
void Eerom_Gpio_Init(void);
void delay(Uint16 time);
void initiic() ;
void begintrans();
void stoptrans();
void ack();
void bytein(Uint16 ch);
Uint16 byteout(void);

/******************************IO�ڳ�ʼ��****************************/
void Eerom_Gpio_Init(void)
{
	EALLOW;
   
    GpioMuxRegs.GPBDIR.bit.GPIOB15 = 1;   	// ����˿�
    GpioMuxRegs.GPBMUX.bit.C6TRIP_GPIOB15 = 0;  	// IO��
    GpioMuxRegs.GPBQUAL.bit.QUALPRD = 3; 	// ��ͬ��

   
    GpioMuxRegs.GPBDIR.bit.GPIOB14 = 1;   	// ����˿�
    GpioMuxRegs.GPBMUX.bit.C5TRIP_GPIOB14 = 0;  	// IO��
    //GpioMuxRegs.GPBQSEL1.bit.GPIO33 = 3;   // ��ͬ��
    EDIS;
}
__inline void SDA_READ(void)
{
    EALLOW;
    GpioMuxRegs.GPBDIR.bit.GPIOB15=0;       //Input, SDA
    EDIS;
}

__inline void SDA_WRITE(void)
{
    EALLOW;
    GpioMuxRegs.GPBDIR.bit.GPIOB15=1;       //Output. SDA
    EDIS;
}




///=========================GPIO SIMULATE I2c communication=====================*/
void delay(Uint16 time) 					//��ʱ����
{
    for(; time>0 ; time--)
    {
        asm(" nop");
        asm(" nop");
        asm(" nop");
        asm(" nop");
		asm(" nop");
        asm(" nop");
        asm(" nop");
        asm(" nop");
    }
}


void begintrans(void)       				//����START �ź�
{
    SDA_W1;         						//SDA=1
    delay(DELAY_UNIT * 10);         		//��ʱ
    SDA_WRITE();            				//SDA ����Ϊ�����EEPROM
    delay(DELAY_UNIT * 10);         		//��ʱ
    SCL_1;          						//SCL=1
    delay(DELAY_UNIT * 10);         		//��ʱ
    SDA_W0;         						//SDA=0
    delay(DELAY_UNIT * 10);        			//��ʱ
}

void stoptrans(void)        				//����STOP �ź�
{
    SDA_WRITE();            				//SDA����Ϊ�����EEPROM
    delay(DELAY_UNIT * 10);        			//��ʱ
    SDA_W0;         						//SDA=0
    delay(DELAY_UNIT * 10);         		//��ʱ
    SCL_1;          						//SCL=1
    delay(DELAY_UNIT * 10);         		//��ʱ
    SDA_W1;         						//SDA=1
    delay(DELAY_UNIT * 10);	
}

void ack(void)              				//�ȴ�EEPROM ��ACK �ź�
{
    Uint16 d;
    Uint16  i;     
    SDA_READ();             				//SDA����Ϊ��EEPROM ����
    delay(DELAY_UNIT * 2);          		//��ʱ
    SCL_1;          						//SCL=1
    delay(DELAY_UNIT * 2);         			 //��ʱ
    i = 0;              
    do
    {
        d = SDA_R;
        i++;
        delay(DELAY_UNIT);	
    }
    while((d == 1) && (i <= 500));      	//�ȴ�EEPROM ����͵�ƽ,4ms���˳�ѭ��

    if (i >= 499)
    {
        eromrw_err = 0xff;
    }
    
    i = 0;           
    SCL_0;          						//SCL=0
    delay(DELAY_UNIT * 2);          		//��ʱ
}

void bytein(Uint16 ch)  					//��EEPROM д��һ���ֽ� 
{
    Uint16 i;     
    SCL_0;          						//SCL=0
    delay(DELAY_UNIT * 2);					//��ʱ
    SDA_WRITE();            				//SDA����Ϊ�����EEPROM
    delay(DELAY_UNIT);         				 //��ʱ
    for(i=8;i>0;i--)
    {	
        if ((ch & 0x80)== 0) 
    	{
            SDA_W0;     					//����ͨ��SDA ��������EEPROM
            delay(DELAY_UNIT);				//��ʱ
    	}
        else 
    	{
            SDA_W1;
            delay(DELAY_UNIT);				//��ʱ
    	}
        SCL_1;      						//SCL=1 
        delay(DELAY_UNIT * 2);      		//��ʱ
        ch <<= 1;
        SCL_0;      						//SCL=0 
        delay(DELAY_UNIT);      			//��ʱ
    } 
    ack();
}

Uint16 byteout(void)        				//��EEPROM ���һ���ֽ�
{
    unsigned char i;
    Uint16 ch;
    ch = 0;

    SDA_READ();             				//SDA �ķ���Ϊ��EEPROM ���
    delay(DELAY_UNIT * 2);         			//��ʱ
    for(i=8;i>0;i--)
    {
        ch <<= 1;
        SCL_1;      						//SCL=1
        delay(DELAY_UNIT);      			//��ʱ
        ch |= SDA_R;    					//����ͨ��SDA �����Ƴ�EEPROM
        delay(DELAY_UNIT);     				//��ʱ
        SCL_0;      						//SCL=0
        delay(DELAY_UNIT * 2);      		//��ʱ
    }
    return(ch);
}

void writebyte(Uint16 addr,Uint16 data) 	//��EEPROM ָ����ַд��һ���ֽڵ�����
{
    begintrans();							//��ʼ
    bytein(0xA0 + ((addr & 0x0300) >> 7));  //д��д������0xA0
    bytein(addr);       					//д��ָ����ַ
    bytein(data);      						//д���д��EEPROM ������
    stoptrans();							//ֹͣ
    delay(8000);
}



Uint16 readbyte(Uint16 addr) 				//��EEPROM ָ����ַ��ȡһ���ֽڵ�����
{
    Uint16 c;    
    begintrans();       					//��ʼ
    bytein(0xA0 + ((addr & 0x0300) >> 7));  //д��д������0xA0
    bytein(addr);       					//д��ָ����ַ
    begintrans();       					//��ʼ
    bytein(0xA1);       					//д���������0xA1
    c = byteout();      					//����EEPROM ���������
    stoptrans();        					//ֹͣ
    delay(2000);        					//��ʱ
    return(c);
}









//===========================================================================
// No more.
//===========================================================================

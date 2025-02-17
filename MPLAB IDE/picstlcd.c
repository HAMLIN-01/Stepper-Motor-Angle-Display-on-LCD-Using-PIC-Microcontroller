#include<pic.h>
#define _XTAL_FREQ 20000000
void delay(unsigned int);
void display(unsigned char);
void angle();
void main()
{
	TRISB=0x00;
	TRISC=0x00;
	while(1)
	{
		PORTC=0X01;
		angle();
		PORTC=0x03;
		angle();
		PORTC=0x02;
		angle();
		PORTC=0x06;
		angle();
		PORTC=0x04;
		angle();
		PORTC=0x0C;
		angle();
		PORTC=0x08;
		angle();
		PORTC=0x09;
		angle();
		}}
		void angle()
			{
				unsigned char i;
				for(i=0;i<6;i++)
					{
						display(i);
						delay(100);
						}}
						void delay(unsigned int a)
							{
								unsigned char i;
								for(;a>0;a--)
									{
										for(i=250;i>0;i--);
										}}
										void display(unsigned char num)
											{
												switch(num){
													case 1:PORTB=0x06;
													break;
													case 2:PORTB=0x5B;
													break;
													case 3:PORTB=0x4F;
													break;
													case 4:PORTB=0x66;
													break;
													case 5:PORTB=0x6D;
													break;
													}}
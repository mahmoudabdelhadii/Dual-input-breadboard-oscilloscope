;--------------------------------------------------------
; File Created by C51
; Version 1.0.0 #1069 (Apr 23 2015) (MSVC)
; This file was generated Fri Mar 12 17:13:10 2021
;--------------------------------------------------------
$name lab5
$optc51 --model-small
$printf_float
	R_DSEG    segment data
	R_CSEG    segment code
	R_BSEG    segment bit
	R_XSEG    segment xdata
	R_PSEG    segment xdata
	R_ISEG    segment idata
	R_OSEG    segment data overlay
	BIT_BANK  segment data overlay
	R_HOME    segment code
	R_GSINIT  segment code
	R_IXSEG   segment xdata
	R_CONST   segment code
	R_XINIT   segment code
	R_DINIT   segment code

;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	public _InitPinADC_PARM_2
	public _main
	public _get_mag2
	public _get_mag1
	public _gettimediff2
	public _gettimediff
	public _getperiod
	public _Volts_at_Pin
	public _ADC_at_Pin
	public _getsn
	public _LCDprint
	public _LCD_4BIT
	public _WriteCommand
	public _WriteData
	public _LCD_byte
	public _LCD_pulse
	public _InitPinADC
	public _TIMER0_Init
	public _waitms
	public _Timer3us
	public _InitADC
	public __c51_external_startup
	public _LCDprint_PARM_3
	public _getsn_PARM_2
	public _LCDprint_PARM_2
	public _overflow_count
;--------------------------------------------------------
; Special Function Registers
;--------------------------------------------------------
_ACC            DATA 0xe0
_ADC0ASAH       DATA 0xb6
_ADC0ASAL       DATA 0xb5
_ADC0ASCF       DATA 0xa1
_ADC0ASCT       DATA 0xc7
_ADC0CF0        DATA 0xbc
_ADC0CF1        DATA 0xb9
_ADC0CF2        DATA 0xdf
_ADC0CN0        DATA 0xe8
_ADC0CN1        DATA 0xb2
_ADC0CN2        DATA 0xb3
_ADC0GTH        DATA 0xc4
_ADC0GTL        DATA 0xc3
_ADC0H          DATA 0xbe
_ADC0L          DATA 0xbd
_ADC0LTH        DATA 0xc6
_ADC0LTL        DATA 0xc5
_ADC0MX         DATA 0xbb
_B              DATA 0xf0
_CKCON0         DATA 0x8e
_CKCON1         DATA 0xa6
_CLEN0          DATA 0xc6
_CLIE0          DATA 0xc7
_CLIF0          DATA 0xe8
_CLKSEL         DATA 0xa9
_CLOUT0         DATA 0xd1
_CLU0CF         DATA 0xb1
_CLU0FN         DATA 0xaf
_CLU0MX         DATA 0x84
_CLU1CF         DATA 0xb3
_CLU1FN         DATA 0xb2
_CLU1MX         DATA 0x85
_CLU2CF         DATA 0xb6
_CLU2FN         DATA 0xb5
_CLU2MX         DATA 0x91
_CLU3CF         DATA 0xbf
_CLU3FN         DATA 0xbe
_CLU3MX         DATA 0xae
_CMP0CN0        DATA 0x9b
_CMP0CN1        DATA 0x99
_CMP0MD         DATA 0x9d
_CMP0MX         DATA 0x9f
_CMP1CN0        DATA 0xbf
_CMP1CN1        DATA 0xac
_CMP1MD         DATA 0xab
_CMP1MX         DATA 0xaa
_CRC0CN0        DATA 0xce
_CRC0CN1        DATA 0x86
_CRC0CNT        DATA 0xd3
_CRC0DAT        DATA 0xcb
_CRC0FLIP       DATA 0xcf
_CRC0IN         DATA 0xca
_CRC0ST         DATA 0xd2
_DAC0CF0        DATA 0x91
_DAC0CF1        DATA 0x92
_DAC0H          DATA 0x85
_DAC0L          DATA 0x84
_DAC1CF0        DATA 0x93
_DAC1CF1        DATA 0x94
_DAC1H          DATA 0x8a
_DAC1L          DATA 0x89
_DAC2CF0        DATA 0x95
_DAC2CF1        DATA 0x96
_DAC2H          DATA 0x8c
_DAC2L          DATA 0x8b
_DAC3CF0        DATA 0x9a
_DAC3CF1        DATA 0x9c
_DAC3H          DATA 0x8e
_DAC3L          DATA 0x8d
_DACGCF0        DATA 0x88
_DACGCF1        DATA 0x98
_DACGCF2        DATA 0xa2
_DERIVID        DATA 0xad
_DEVICEID       DATA 0xb5
_DPH            DATA 0x83
_DPL            DATA 0x82
_EIE1           DATA 0xe6
_EIE2           DATA 0xf3
_EIP1           DATA 0xbb
_EIP1H          DATA 0xee
_EIP2           DATA 0xed
_EIP2H          DATA 0xf6
_EMI0CN         DATA 0xe7
_FLKEY          DATA 0xb7
_HFO0CAL        DATA 0xc7
_HFO1CAL        DATA 0xd6
_HFOCN          DATA 0xef
_I2C0ADM        DATA 0xff
_I2C0CN0        DATA 0xba
_I2C0DIN        DATA 0xbc
_I2C0DOUT       DATA 0xbb
_I2C0FCN0       DATA 0xad
_I2C0FCN1       DATA 0xab
_I2C0FCT        DATA 0xf5
_I2C0SLAD       DATA 0xbd
_I2C0STAT       DATA 0xb9
_IE             DATA 0xa8
_IP             DATA 0xb8
_IPH            DATA 0xf2
_IT01CF         DATA 0xe4
_LFO0CN         DATA 0xb1
_P0             DATA 0x80
_P0MASK         DATA 0xfe
_P0MAT          DATA 0xfd
_P0MDIN         DATA 0xf1
_P0MDOUT        DATA 0xa4
_P0SKIP         DATA 0xd4
_P1             DATA 0x90
_P1MASK         DATA 0xee
_P1MAT          DATA 0xed
_P1MDIN         DATA 0xf2
_P1MDOUT        DATA 0xa5
_P1SKIP         DATA 0xd5
_P2             DATA 0xa0
_P2MASK         DATA 0xfc
_P2MAT          DATA 0xfb
_P2MDIN         DATA 0xf3
_P2MDOUT        DATA 0xa6
_P2SKIP         DATA 0xcc
_P3             DATA 0xb0
_P3MDIN         DATA 0xf4
_P3MDOUT        DATA 0x9c
_PCA0CENT       DATA 0x9e
_PCA0CLR        DATA 0x9c
_PCA0CN0        DATA 0xd8
_PCA0CPH0       DATA 0xfc
_PCA0CPH1       DATA 0xea
_PCA0CPH2       DATA 0xec
_PCA0CPH3       DATA 0xf5
_PCA0CPH4       DATA 0x85
_PCA0CPH5       DATA 0xde
_PCA0CPL0       DATA 0xfb
_PCA0CPL1       DATA 0xe9
_PCA0CPL2       DATA 0xeb
_PCA0CPL3       DATA 0xf4
_PCA0CPL4       DATA 0x84
_PCA0CPL5       DATA 0xdd
_PCA0CPM0       DATA 0xda
_PCA0CPM1       DATA 0xdb
_PCA0CPM2       DATA 0xdc
_PCA0CPM3       DATA 0xae
_PCA0CPM4       DATA 0xaf
_PCA0CPM5       DATA 0xcc
_PCA0H          DATA 0xfa
_PCA0L          DATA 0xf9
_PCA0MD         DATA 0xd9
_PCA0POL        DATA 0x96
_PCA0PWM        DATA 0xf7
_PCON0          DATA 0x87
_PCON1          DATA 0xcd
_PFE0CN         DATA 0xc1
_PRTDRV         DATA 0xf6
_PSCTL          DATA 0x8f
_PSTAT0         DATA 0xaa
_PSW            DATA 0xd0
_REF0CN         DATA 0xd1
_REG0CN         DATA 0xc9
_REVID          DATA 0xb6
_RSTSRC         DATA 0xef
_SBCON1         DATA 0x94
_SBRLH1         DATA 0x96
_SBRLL1         DATA 0x95
_SBUF           DATA 0x99
_SBUF0          DATA 0x99
_SBUF1          DATA 0x92
_SCON           DATA 0x98
_SCON0          DATA 0x98
_SCON1          DATA 0xc8
_SFRPAGE        DATA 0xa7
_SFRPGCN        DATA 0xbc
_SFRSTACK       DATA 0xd7
_SMB0ADM        DATA 0xd6
_SMB0ADR        DATA 0xd7
_SMB0CF         DATA 0xc1
_SMB0CN0        DATA 0xc0
_SMB0DAT        DATA 0xc2
_SMB0FCN0       DATA 0xc3
_SMB0FCN1       DATA 0xc4
_SMB0FCT        DATA 0xef
_SMB0RXLN       DATA 0xc5
_SMB0TC         DATA 0xac
_SMOD1          DATA 0x93
_SP             DATA 0x81
_SPI0CFG        DATA 0xa1
_SPI0CKR        DATA 0xa2
_SPI0CN0        DATA 0xf8
_SPI0DAT        DATA 0xa3
_SPI0FCN0       DATA 0x9a
_SPI0FCN1       DATA 0x9b
_SPI0FCT        DATA 0xf7
_SPI0PCF        DATA 0xdf
_TCON           DATA 0x88
_TH0            DATA 0x8c
_TH1            DATA 0x8d
_TL0            DATA 0x8a
_TL1            DATA 0x8b
_TMOD           DATA 0x89
_TMR2CN0        DATA 0xc8
_TMR2CN1        DATA 0xfd
_TMR2H          DATA 0xcf
_TMR2L          DATA 0xce
_TMR2RLH        DATA 0xcb
_TMR2RLL        DATA 0xca
_TMR3CN0        DATA 0x91
_TMR3CN1        DATA 0xfe
_TMR3H          DATA 0x95
_TMR3L          DATA 0x94
_TMR3RLH        DATA 0x93
_TMR3RLL        DATA 0x92
_TMR4CN0        DATA 0x98
_TMR4CN1        DATA 0xff
_TMR4H          DATA 0xa5
_TMR4L          DATA 0xa4
_TMR4RLH        DATA 0xa3
_TMR4RLL        DATA 0xa2
_TMR5CN0        DATA 0xc0
_TMR5CN1        DATA 0xf1
_TMR5H          DATA 0xd5
_TMR5L          DATA 0xd4
_TMR5RLH        DATA 0xd3
_TMR5RLL        DATA 0xd2
_UART0PCF       DATA 0xd9
_UART1FCN0      DATA 0x9d
_UART1FCN1      DATA 0xd8
_UART1FCT       DATA 0xfa
_UART1LIN       DATA 0x9e
_UART1PCF       DATA 0xda
_VDM0CN         DATA 0xff
_WDTCN          DATA 0x97
_XBR0           DATA 0xe1
_XBR1           DATA 0xe2
_XBR2           DATA 0xe3
_XOSC0CN        DATA 0x86
_DPTR           DATA 0x8382
_TMR2RL         DATA 0xcbca
_TMR3RL         DATA 0x9392
_TMR4RL         DATA 0xa3a2
_TMR5RL         DATA 0xd3d2
_TMR0           DATA 0x8c8a
_TMR1           DATA 0x8d8b
_TMR2           DATA 0xcfce
_TMR3           DATA 0x9594
_TMR4           DATA 0xa5a4
_TMR5           DATA 0xd5d4
_SBRL1          DATA 0x9695
_PCA0           DATA 0xfaf9
_PCA0CP0        DATA 0xfcfb
_PCA0CP1        DATA 0xeae9
_PCA0CP2        DATA 0xeceb
_PCA0CP3        DATA 0xf5f4
_PCA0CP4        DATA 0x8584
_PCA0CP5        DATA 0xdedd
_ADC0ASA        DATA 0xb6b5
_ADC0GT         DATA 0xc4c3
_ADC0           DATA 0xbebd
_ADC0LT         DATA 0xc6c5
_DAC0           DATA 0x8584
_DAC1           DATA 0x8a89
_DAC2           DATA 0x8c8b
_DAC3           DATA 0x8e8d
;--------------------------------------------------------
; special function bits
;--------------------------------------------------------
_ACC_0          BIT 0xe0
_ACC_1          BIT 0xe1
_ACC_2          BIT 0xe2
_ACC_3          BIT 0xe3
_ACC_4          BIT 0xe4
_ACC_5          BIT 0xe5
_ACC_6          BIT 0xe6
_ACC_7          BIT 0xe7
_TEMPE          BIT 0xe8
_ADGN0          BIT 0xe9
_ADGN1          BIT 0xea
_ADWINT         BIT 0xeb
_ADBUSY         BIT 0xec
_ADINT          BIT 0xed
_IPOEN          BIT 0xee
_ADEN           BIT 0xef
_B_0            BIT 0xf0
_B_1            BIT 0xf1
_B_2            BIT 0xf2
_B_3            BIT 0xf3
_B_4            BIT 0xf4
_B_5            BIT 0xf5
_B_6            BIT 0xf6
_B_7            BIT 0xf7
_C0FIF          BIT 0xe8
_C0RIF          BIT 0xe9
_C1FIF          BIT 0xea
_C1RIF          BIT 0xeb
_C2FIF          BIT 0xec
_C2RIF          BIT 0xed
_C3FIF          BIT 0xee
_C3RIF          BIT 0xef
_D1SRC0         BIT 0x88
_D1SRC1         BIT 0x89
_D1AMEN         BIT 0x8a
_D01REFSL       BIT 0x8b
_D3SRC0         BIT 0x8c
_D3SRC1         BIT 0x8d
_D3AMEN         BIT 0x8e
_D23REFSL       BIT 0x8f
_D0UDIS         BIT 0x98
_D1UDIS         BIT 0x99
_D2UDIS         BIT 0x9a
_D3UDIS         BIT 0x9b
_EX0            BIT 0xa8
_ET0            BIT 0xa9
_EX1            BIT 0xaa
_ET1            BIT 0xab
_ES0            BIT 0xac
_ET2            BIT 0xad
_ESPI0          BIT 0xae
_EA             BIT 0xaf
_PX0            BIT 0xb8
_PT0            BIT 0xb9
_PX1            BIT 0xba
_PT1            BIT 0xbb
_PS0            BIT 0xbc
_PT2            BIT 0xbd
_PSPI0          BIT 0xbe
_P0_0           BIT 0x80
_P0_1           BIT 0x81
_P0_2           BIT 0x82
_P0_3           BIT 0x83
_P0_4           BIT 0x84
_P0_5           BIT 0x85
_P0_6           BIT 0x86
_P0_7           BIT 0x87
_P1_0           BIT 0x90
_P1_1           BIT 0x91
_P1_2           BIT 0x92
_P1_3           BIT 0x93
_P1_4           BIT 0x94
_P1_5           BIT 0x95
_P1_6           BIT 0x96
_P1_7           BIT 0x97
_P2_0           BIT 0xa0
_P2_1           BIT 0xa1
_P2_2           BIT 0xa2
_P2_3           BIT 0xa3
_P2_4           BIT 0xa4
_P2_5           BIT 0xa5
_P2_6           BIT 0xa6
_P3_0           BIT 0xb0
_P3_1           BIT 0xb1
_P3_2           BIT 0xb2
_P3_3           BIT 0xb3
_P3_4           BIT 0xb4
_P3_7           BIT 0xb7
_CCF0           BIT 0xd8
_CCF1           BIT 0xd9
_CCF2           BIT 0xda
_CCF3           BIT 0xdb
_CCF4           BIT 0xdc
_CCF5           BIT 0xdd
_CR             BIT 0xde
_CF             BIT 0xdf
_PARITY         BIT 0xd0
_F1             BIT 0xd1
_OV             BIT 0xd2
_RS0            BIT 0xd3
_RS1            BIT 0xd4
_F0             BIT 0xd5
_AC             BIT 0xd6
_CY             BIT 0xd7
_RI             BIT 0x98
_TI             BIT 0x99
_RB8            BIT 0x9a
_TB8            BIT 0x9b
_REN            BIT 0x9c
_CE             BIT 0x9d
_SMODE          BIT 0x9e
_RI1            BIT 0xc8
_TI1            BIT 0xc9
_RBX1           BIT 0xca
_TBX1           BIT 0xcb
_REN1           BIT 0xcc
_PERR1          BIT 0xcd
_OVR1           BIT 0xce
_SI             BIT 0xc0
_ACK            BIT 0xc1
_ARBLOST        BIT 0xc2
_ACKRQ          BIT 0xc3
_STO            BIT 0xc4
_STA            BIT 0xc5
_TXMODE         BIT 0xc6
_MASTER         BIT 0xc7
_SPIEN          BIT 0xf8
_TXNF           BIT 0xf9
_NSSMD0         BIT 0xfa
_NSSMD1         BIT 0xfb
_RXOVRN         BIT 0xfc
_MODF           BIT 0xfd
_WCOL           BIT 0xfe
_SPIF           BIT 0xff
_IT0            BIT 0x88
_IE0            BIT 0x89
_IT1            BIT 0x8a
_IE1            BIT 0x8b
_TR0            BIT 0x8c
_TF0            BIT 0x8d
_TR1            BIT 0x8e
_TF1            BIT 0x8f
_T2XCLK0        BIT 0xc8
_T2XCLK1        BIT 0xc9
_TR2            BIT 0xca
_T2SPLIT        BIT 0xcb
_TF2CEN         BIT 0xcc
_TF2LEN         BIT 0xcd
_TF2L           BIT 0xce
_TF2H           BIT 0xcf
_T4XCLK0        BIT 0x98
_T4XCLK1        BIT 0x99
_TR4            BIT 0x9a
_T4SPLIT        BIT 0x9b
_TF4CEN         BIT 0x9c
_TF4LEN         BIT 0x9d
_TF4L           BIT 0x9e
_TF4H           BIT 0x9f
_T5XCLK0        BIT 0xc0
_T5XCLK1        BIT 0xc1
_TR5            BIT 0xc2
_T5SPLIT        BIT 0xc3
_TF5CEN         BIT 0xc4
_TF5LEN         BIT 0xc5
_TF5L           BIT 0xc6
_TF5H           BIT 0xc7
_RIE            BIT 0xd8
_RXTO0          BIT 0xd9
_RXTO1          BIT 0xda
_RFRQ           BIT 0xdb
_TIE            BIT 0xdc
_TXHOLD         BIT 0xdd
_TXNF1          BIT 0xde
_TFRQ           BIT 0xdf
;--------------------------------------------------------
; overlayable register banks
;--------------------------------------------------------
	rbank0 segment data overlay
;--------------------------------------------------------
; internal ram data
;--------------------------------------------------------
	rseg R_DSEG
_overflow_count:
	ds 1
_LCDprint_PARM_2:
	ds 1
_getsn_PARM_2:
	ds 2
_getsn_buff_1_90:
	ds 3
_getsn_sloc0_1_0:
	ds 2
_get_mag1_ms_1_111:
	ds 2
_get_mag2_ms_1_113:
	ds 2
_main_buff_1_115:
	ds 17
_main_period2_1_115:
	ds 4
_main_timediff_1_115:
	ds 4
_main_phase_diff_1_115:
	ds 4
_main_mag1_1_115:
	ds 4
_main_mag2_1_115:
	ds 4
_main_magrms1_1_115:
	ds 4
_main_magrms2_1_115:
	ds 4
;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
	rseg	R_OSEG
	rseg	R_OSEG
_InitPinADC_PARM_2:
	ds 1
	rseg	R_OSEG
;--------------------------------------------------------
; indirectly addressable internal ram data
;--------------------------------------------------------
	rseg R_ISEG
;--------------------------------------------------------
; absolute internal ram data
;--------------------------------------------------------
	DSEG
;--------------------------------------------------------
; bit data
;--------------------------------------------------------
	rseg R_BSEG
_LCDprint_PARM_3:
	DBIT	1
;--------------------------------------------------------
; paged external ram data
;--------------------------------------------------------
	rseg R_PSEG
;--------------------------------------------------------
; external ram data
;--------------------------------------------------------
	rseg R_XSEG
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	XSEG
;--------------------------------------------------------
; external initialized ram data
;--------------------------------------------------------
	rseg R_IXSEG
	rseg R_HOME
	rseg R_GSINIT
	rseg R_CSEG
;--------------------------------------------------------
; Reset entry point and interrupt vectors
;--------------------------------------------------------
	CSEG at 0x0000
	ljmp	_crt0
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	rseg R_HOME
	rseg R_GSINIT
	rseg R_GSINIT
;--------------------------------------------------------
; data variables initialization
;--------------------------------------------------------
	rseg R_DINIT
	; The linker places a 'ret' at the end of segment R_DINIT.
;--------------------------------------------------------
; code
;--------------------------------------------------------
	rseg R_CSEG
;------------------------------------------------------------
;Allocation info for local variables in function '_c51_external_startup'
;------------------------------------------------------------
;------------------------------------------------------------
;	C:\Users\Mahmoud\Desktop\ELEC291\Lab5\lab5.c:28: char _c51_external_startup (void)
;	-----------------------------------------
;	 function _c51_external_startup
;	-----------------------------------------
__c51_external_startup:
	using	0
;	C:\Users\Mahmoud\Desktop\ELEC291\Lab5\lab5.c:31: SFRPAGE = 0x00;
	mov	_SFRPAGE,#0x00
;	C:\Users\Mahmoud\Desktop\ELEC291\Lab5\lab5.c:32: WDTCN = 0xDE; //First key
	mov	_WDTCN,#0xDE
;	C:\Users\Mahmoud\Desktop\ELEC291\Lab5\lab5.c:33: WDTCN = 0xAD; //Second key
	mov	_WDTCN,#0xAD
;	C:\Users\Mahmoud\Desktop\ELEC291\Lab5\lab5.c:35: VDM0CN=0x80;       // enable VDD monitoxr
	mov	_VDM0CN,#0x80
;	C:\Users\Mahmoud\Desktop\ELEC291\Lab5\lab5.c:36: RSTSRC=0x02|0x04;  // Enable reset on missing clock detector and VDD
	mov	_RSTSRC,#0x06
;	C:\Users\Mahmoud\Desktop\ELEC291\Lab5\lab5.c:43: SFRPAGE = 0x10;
	mov	_SFRPAGE,#0x10
;	C:\Users\Mahmoud\Desktop\ELEC291\Lab5\lab5.c:44: PFE0CN  = 0x20; // SYSCLK < 75 MHz.
	mov	_PFE0CN,#0x20
;	C:\Users\Mahmoud\Desktop\ELEC291\Lab5\lab5.c:45: SFRPAGE = 0x00;
	mov	_SFRPAGE,#0x00
;	C:\Users\Mahmoud\Desktop\ELEC291\Lab5\lab5.c:66: CLKSEL = 0x00;
	mov	_CLKSEL,#0x00
;	C:\Users\Mahmoud\Desktop\ELEC291\Lab5\lab5.c:67: CLKSEL = 0x00;
	mov	_CLKSEL,#0x00
;	C:\Users\Mahmoud\Desktop\ELEC291\Lab5\lab5.c:68: while ((CLKSEL & 0x80) == 0);
L002001?:
	mov	a,_CLKSEL
	jnb	acc.7,L002001?
;	C:\Users\Mahmoud\Desktop\ELEC291\Lab5\lab5.c:69: CLKSEL = 0x03;
	mov	_CLKSEL,#0x03
;	C:\Users\Mahmoud\Desktop\ELEC291\Lab5\lab5.c:70: CLKSEL = 0x03;
	mov	_CLKSEL,#0x03
;	C:\Users\Mahmoud\Desktop\ELEC291\Lab5\lab5.c:71: while ((CLKSEL & 0x80) == 0);
L002004?:
	mov	a,_CLKSEL
	jnb	acc.7,L002004?
;	C:\Users\Mahmoud\Desktop\ELEC291\Lab5\lab5.c:76: P0MDOUT |= 0x10; // Enable UART0 TX as push-pull output
	orl	_P0MDOUT,#0x10
;	C:\Users\Mahmoud\Desktop\ELEC291\Lab5\lab5.c:77: XBR0     = 0x01; // Enable UART0 on P0.4(TX) and P0.5(RX)                     
	mov	_XBR0,#0x01
;	C:\Users\Mahmoud\Desktop\ELEC291\Lab5\lab5.c:78: XBR1     = 0X00;
	mov	_XBR1,#0x00
;	C:\Users\Mahmoud\Desktop\ELEC291\Lab5\lab5.c:79: XBR2     = 0x40; // Enable crossbar and weak pull-ups
	mov	_XBR2,#0x40
;	C:\Users\Mahmoud\Desktop\ELEC291\Lab5\lab5.c:85: SCON0 = 0x10;
	mov	_SCON0,#0x10
;	C:\Users\Mahmoud\Desktop\ELEC291\Lab5\lab5.c:86: TH1 = 0x100-((SYSCLK/BAUDRATE)/(2L*12L));
	mov	_TH1,#0xE6
;	C:\Users\Mahmoud\Desktop\ELEC291\Lab5\lab5.c:87: TL1 = TH1;      // Init Timer1
	mov	_TL1,_TH1
;	C:\Users\Mahmoud\Desktop\ELEC291\Lab5\lab5.c:88: TMOD &= ~0xf0;  // TMOD: timer 1 in 8-bit auto-reload
	anl	_TMOD,#0x0F
;	C:\Users\Mahmoud\Desktop\ELEC291\Lab5\lab5.c:89: TMOD |=  0x20;                       
	orl	_TMOD,#0x20
;	C:\Users\Mahmoud\Desktop\ELEC291\Lab5\lab5.c:90: TR1 = 1; // START Timer1
	setb	_TR1
;	C:\Users\Mahmoud\Desktop\ELEC291\Lab5\lab5.c:91: TI = 1;  // Indicate TX0 ready
	setb	_TI
;	C:\Users\Mahmoud\Desktop\ELEC291\Lab5\lab5.c:93: return 0;
	mov	dpl,#0x00
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'InitADC'
;------------------------------------------------------------
;------------------------------------------------------------
;	C:\Users\Mahmoud\Desktop\ELEC291\Lab5\lab5.c:96: void InitADC (void)
;	-----------------------------------------
;	 function InitADC
;	-----------------------------------------
_InitADC:
;	C:\Users\Mahmoud\Desktop\ELEC291\Lab5\lab5.c:98: SFRPAGE = 0x00;
	mov	_SFRPAGE,#0x00
;	C:\Users\Mahmoud\Desktop\ELEC291\Lab5\lab5.c:99: ADEN=0; // Disable ADC
	clr	_ADEN
;	C:\Users\Mahmoud\Desktop\ELEC291\Lab5\lab5.c:104: (0x0 << 0) ; // Accumulate n conversions: 0x0: 1, 0x1:4, 0x2:8, 0x3:16, 0x4:32
	mov	_ADC0CN1,#0x80
;	C:\Users\Mahmoud\Desktop\ELEC291\Lab5\lab5.c:108: (0x0 << 2); // 0:SYSCLK ADCCLK = SYSCLK. 1:HFOSC0 ADCCLK = HFOSC0.
	mov	_ADC0CF0,#0x20
;	C:\Users\Mahmoud\Desktop\ELEC291\Lab5\lab5.c:112: (0x1E << 0); // Conversion Tracking Time. Tadtk = ADTK / (Fsarclk)
	mov	_ADC0CF1,#0x1E
;	C:\Users\Mahmoud\Desktop\ELEC291\Lab5\lab5.c:121: (0x0 << 0) ; // TEMPE. 0: Disable the Temperature Sensor. 1: Enable the Temperature Sensor.
	mov	_ADC0CN0,#0x00
;	C:\Users\Mahmoud\Desktop\ELEC291\Lab5\lab5.c:126: (0x1F << 0); // ADPWR. Power Up Delay Time. Tpwrtime = ((4 * (ADPWR + 1)) + 2) / (Fadcclk)
	mov	_ADC0CF2,#0x3F
;	C:\Users\Mahmoud\Desktop\ELEC291\Lab5\lab5.c:130: (0x0 << 0) ; // ADCM. 0x0: ADBUSY, 0x1: TIMER0, 0x2: TIMER2, 0x3: TIMER3, 0x4: CNVSTR, 0x5: CEX5, 0x6: TIMER4, 0x7: TIMER5, 0x8: CLU0, 0x9: CLU1, 0xA: CLU2, 0xB: CLU3
	mov	_ADC0CN2,#0x00
;	C:\Users\Mahmoud\Desktop\ELEC291\Lab5\lab5.c:132: ADEN=1; // Enable ADC
	setb	_ADEN
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'Timer3us'
;------------------------------------------------------------
;us                        Allocated to registers r2 
;i                         Allocated to registers r3 
;------------------------------------------------------------
;	C:\Users\Mahmoud\Desktop\ELEC291\Lab5\lab5.c:136: void Timer3us(unsigned char us)
;	-----------------------------------------
;	 function Timer3us
;	-----------------------------------------
_Timer3us:
	mov	r2,dpl
;	C:\Users\Mahmoud\Desktop\ELEC291\Lab5\lab5.c:141: CKCON0|=0b_0100_0000;
	orl	_CKCON0,#0x40
;	C:\Users\Mahmoud\Desktop\ELEC291\Lab5\lab5.c:143: TMR3RL = (-(SYSCLK)/1000000L); // Set Timer3 to overflow in 1us.
	mov	_TMR3RL,#0xB8
	mov	(_TMR3RL >> 8),#0xFF
;	C:\Users\Mahmoud\Desktop\ELEC291\Lab5\lab5.c:144: TMR3 = TMR3RL;                 // Initialize Timer3 for first overflow
	mov	_TMR3,_TMR3RL
	mov	(_TMR3 >> 8),(_TMR3RL >> 8)
;	C:\Users\Mahmoud\Desktop\ELEC291\Lab5\lab5.c:146: TMR3CN0 = 0x04;                 // Sart Timer3 and clear overflow flag
	mov	_TMR3CN0,#0x04
;	C:\Users\Mahmoud\Desktop\ELEC291\Lab5\lab5.c:147: for (i = 0; i < us; i++)       // Count <us> overflows
	mov	r3,#0x00
L004004?:
	clr	c
	mov	a,r3
	subb	a,r2
	jnc	L004007?
;	C:\Users\Mahmoud\Desktop\ELEC291\Lab5\lab5.c:149: while (!(TMR3CN0 & 0x80));  // Wait for overflow
L004001?:
	mov	a,_TMR3CN0
	jnb	acc.7,L004001?
;	C:\Users\Mahmoud\Desktop\ELEC291\Lab5\lab5.c:150: TMR3CN0 &= ~(0x80);         // Clear overflow indicator
	anl	_TMR3CN0,#0x7F
;	C:\Users\Mahmoud\Desktop\ELEC291\Lab5\lab5.c:147: for (i = 0; i < us; i++)       // Count <us> overflows
	inc	r3
	sjmp	L004004?
L004007?:
;	C:\Users\Mahmoud\Desktop\ELEC291\Lab5\lab5.c:152: TMR3CN0 = 0 ;                   // Stop Timer3 and clear overflow flag
	mov	_TMR3CN0,#0x00
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'waitms'
;------------------------------------------------------------
;ms                        Allocated to registers r2 r3 
;j                         Allocated to registers r4 r5 
;k                         Allocated to registers r6 
;------------------------------------------------------------
;	C:\Users\Mahmoud\Desktop\ELEC291\Lab5\lab5.c:155: void waitms (unsigned int ms)
;	-----------------------------------------
;	 function waitms
;	-----------------------------------------
_waitms:
	mov	r2,dpl
	mov	r3,dph
;	C:\Users\Mahmoud\Desktop\ELEC291\Lab5\lab5.c:159: for(j=0; j<ms; j++)
	mov	r4,#0x00
	mov	r5,#0x00
L005005?:
	clr	c
	mov	a,r4
	subb	a,r2
	mov	a,r5
	subb	a,r3
	jnc	L005009?
;	C:\Users\Mahmoud\Desktop\ELEC291\Lab5\lab5.c:160: for (k=0; k<4; k++) Timer3us(250);
	mov	r6,#0x00
L005001?:
	cjne	r6,#0x04,L005018?
L005018?:
	jnc	L005007?
	mov	dpl,#0xFA
	push	ar2
	push	ar3
	push	ar4
	push	ar5
	push	ar6
	lcall	_Timer3us
	pop	ar6
	pop	ar5
	pop	ar4
	pop	ar3
	pop	ar2
	inc	r6
	sjmp	L005001?
L005007?:
;	C:\Users\Mahmoud\Desktop\ELEC291\Lab5\lab5.c:159: for(j=0; j<ms; j++)
	inc	r4
	cjne	r4,#0x00,L005005?
	inc	r5
	sjmp	L005005?
L005009?:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'TIMER0_Init'
;------------------------------------------------------------
;------------------------------------------------------------
;	C:\Users\Mahmoud\Desktop\ELEC291\Lab5\lab5.c:162: void TIMER0_Init(void)
;	-----------------------------------------
;	 function TIMER0_Init
;	-----------------------------------------
_TIMER0_Init:
;	C:\Users\Mahmoud\Desktop\ELEC291\Lab5\lab5.c:164: TMOD&=0b_1111_0000; // Set the bits of Timer/Counter 0 to zero
	anl	_TMOD,#0xF0
;	C:\Users\Mahmoud\Desktop\ELEC291\Lab5\lab5.c:165: TMOD|=0b_0000_0001; // Timer/Counter 0 used as a 16-bit timer
	orl	_TMOD,#0x01
;	C:\Users\Mahmoud\Desktop\ELEC291\Lab5\lab5.c:166: TR0=0; // Stop Timer/Counter 0
	clr	_TR0
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'InitPinADC'
;------------------------------------------------------------
;pin_num                   Allocated with name '_InitPinADC_PARM_2'
;portno                    Allocated to registers r2 
;mask                      Allocated to registers r3 
;------------------------------------------------------------
;	C:\Users\Mahmoud\Desktop\ELEC291\Lab5\lab5.c:171: void InitPinADC (unsigned char portno, unsigned char pin_num)
;	-----------------------------------------
;	 function InitPinADC
;	-----------------------------------------
_InitPinADC:
	mov	r2,dpl
;	C:\Users\Mahmoud\Desktop\ELEC291\Lab5\lab5.c:175: mask=1<<pin_num;
	mov	b,_InitPinADC_PARM_2
	inc	b
	mov	a,#0x01
	sjmp	L007013?
L007011?:
	add	a,acc
L007013?:
	djnz	b,L007011?
	mov	r3,a
;	C:\Users\Mahmoud\Desktop\ELEC291\Lab5\lab5.c:177: SFRPAGE = 0x20;
	mov	_SFRPAGE,#0x20
;	C:\Users\Mahmoud\Desktop\ELEC291\Lab5\lab5.c:178: switch (portno)
	cjne	r2,#0x00,L007014?
	sjmp	L007001?
L007014?:
	cjne	r2,#0x01,L007015?
	sjmp	L007002?
L007015?:
;	C:\Users\Mahmoud\Desktop\ELEC291\Lab5\lab5.c:180: case 0:
	cjne	r2,#0x02,L007005?
	sjmp	L007003?
L007001?:
;	C:\Users\Mahmoud\Desktop\ELEC291\Lab5\lab5.c:181: P0MDIN &= (~mask); // Set pin as analog input
	mov	a,r3
	cpl	a
	mov	r2,a
	anl	_P0MDIN,a
;	C:\Users\Mahmoud\Desktop\ELEC291\Lab5\lab5.c:182: P0SKIP |= mask; // Skip Crossbar decoding for this pin
	mov	a,r3
	orl	_P0SKIP,a
;	C:\Users\Mahmoud\Desktop\ELEC291\Lab5\lab5.c:183: break;
;	C:\Users\Mahmoud\Desktop\ELEC291\Lab5\lab5.c:184: case 1:
	sjmp	L007005?
L007002?:
;	C:\Users\Mahmoud\Desktop\ELEC291\Lab5\lab5.c:185: P1MDIN &= (~mask); // Set pin as analog input
	mov	a,r3
	cpl	a
	mov	r2,a
	anl	_P1MDIN,a
;	C:\Users\Mahmoud\Desktop\ELEC291\Lab5\lab5.c:186: P1SKIP |= mask; // Skip Crossbar decoding for this pin
	mov	a,r3
	orl	_P1SKIP,a
;	C:\Users\Mahmoud\Desktop\ELEC291\Lab5\lab5.c:187: break;
;	C:\Users\Mahmoud\Desktop\ELEC291\Lab5\lab5.c:188: case 2:
	sjmp	L007005?
L007003?:
;	C:\Users\Mahmoud\Desktop\ELEC291\Lab5\lab5.c:189: P2MDIN &= (~mask); // Set pin as analog input
	mov	a,r3
	cpl	a
	mov	r2,a
	anl	_P2MDIN,a
;	C:\Users\Mahmoud\Desktop\ELEC291\Lab5\lab5.c:190: P2SKIP |= mask; // Skip Crossbar decoding for this pin
	mov	a,r3
	orl	_P2SKIP,a
;	C:\Users\Mahmoud\Desktop\ELEC291\Lab5\lab5.c:194: }
L007005?:
;	C:\Users\Mahmoud\Desktop\ELEC291\Lab5\lab5.c:195: SFRPAGE = 0x00;
	mov	_SFRPAGE,#0x00
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'LCD_pulse'
;------------------------------------------------------------
;------------------------------------------------------------
;	C:\Users\Mahmoud\Desktop\ELEC291\Lab5\lab5.c:199: void LCD_pulse (void)
;	-----------------------------------------
;	 function LCD_pulse
;	-----------------------------------------
_LCD_pulse:
;	C:\Users\Mahmoud\Desktop\ELEC291\Lab5\lab5.c:201: LCD_E=1;
	setb	_P1_6
;	C:\Users\Mahmoud\Desktop\ELEC291\Lab5\lab5.c:202: Timer3us(40);
	mov	dpl,#0x28
	lcall	_Timer3us
;	C:\Users\Mahmoud\Desktop\ELEC291\Lab5\lab5.c:203: LCD_E=0;
	clr	_P1_6
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'LCD_byte'
;------------------------------------------------------------
;x                         Allocated to registers r2 
;------------------------------------------------------------
;	C:\Users\Mahmoud\Desktop\ELEC291\Lab5\lab5.c:206: void LCD_byte (unsigned char x)
;	-----------------------------------------
;	 function LCD_byte
;	-----------------------------------------
_LCD_byte:
	mov	r2,dpl
;	C:\Users\Mahmoud\Desktop\ELEC291\Lab5\lab5.c:209: ACC=x; //Send high nible
	mov	_ACC,r2
;	C:\Users\Mahmoud\Desktop\ELEC291\Lab5\lab5.c:210: LCD_D7=ACC_7;
	mov	c,_ACC_7
	mov	_P0_6,c
;	C:\Users\Mahmoud\Desktop\ELEC291\Lab5\lab5.c:211: LCD_D6=ACC_6;
	mov	c,_ACC_6
	mov	_P0_7,c
;	C:\Users\Mahmoud\Desktop\ELEC291\Lab5\lab5.c:212: LCD_D5=ACC_5;
	mov	c,_ACC_5
	mov	_P1_0,c
;	C:\Users\Mahmoud\Desktop\ELEC291\Lab5\lab5.c:213: LCD_D4=ACC_4;
	mov	c,_ACC_4
	mov	_P1_1,c
;	C:\Users\Mahmoud\Desktop\ELEC291\Lab5\lab5.c:214: LCD_pulse();
	push	ar2
	lcall	_LCD_pulse
;	C:\Users\Mahmoud\Desktop\ELEC291\Lab5\lab5.c:215: Timer3us(40);
	mov	dpl,#0x28
	lcall	_Timer3us
	pop	ar2
;	C:\Users\Mahmoud\Desktop\ELEC291\Lab5\lab5.c:216: ACC=x; //Send low nible
	mov	_ACC,r2
;	C:\Users\Mahmoud\Desktop\ELEC291\Lab5\lab5.c:217: LCD_D7=ACC_3;
	mov	c,_ACC_3
	mov	_P0_6,c
;	C:\Users\Mahmoud\Desktop\ELEC291\Lab5\lab5.c:218: LCD_D6=ACC_2;
	mov	c,_ACC_2
	mov	_P0_7,c
;	C:\Users\Mahmoud\Desktop\ELEC291\Lab5\lab5.c:219: LCD_D5=ACC_1;
	mov	c,_ACC_1
	mov	_P1_0,c
;	C:\Users\Mahmoud\Desktop\ELEC291\Lab5\lab5.c:220: LCD_D4=ACC_0;
	mov	c,_ACC_0
	mov	_P1_1,c
;	C:\Users\Mahmoud\Desktop\ELEC291\Lab5\lab5.c:221: LCD_pulse();
	ljmp	_LCD_pulse
;------------------------------------------------------------
;Allocation info for local variables in function 'WriteData'
;------------------------------------------------------------
;x                         Allocated to registers r2 
;------------------------------------------------------------
;	C:\Users\Mahmoud\Desktop\ELEC291\Lab5\lab5.c:224: void WriteData (unsigned char x)
;	-----------------------------------------
;	 function WriteData
;	-----------------------------------------
_WriteData:
	mov	r2,dpl
;	C:\Users\Mahmoud\Desktop\ELEC291\Lab5\lab5.c:226: LCD_RS=1;
	setb	_P2_0
;	C:\Users\Mahmoud\Desktop\ELEC291\Lab5\lab5.c:227: LCD_byte(x);
	mov	dpl,r2
	lcall	_LCD_byte
;	C:\Users\Mahmoud\Desktop\ELEC291\Lab5\lab5.c:228: waitms(2);
	mov	dptr,#0x0002
	ljmp	_waitms
;------------------------------------------------------------
;Allocation info for local variables in function 'WriteCommand'
;------------------------------------------------------------
;x                         Allocated to registers r2 
;------------------------------------------------------------
;	C:\Users\Mahmoud\Desktop\ELEC291\Lab5\lab5.c:231: void WriteCommand (unsigned char x)
;	-----------------------------------------
;	 function WriteCommand
;	-----------------------------------------
_WriteCommand:
	mov	r2,dpl
;	C:\Users\Mahmoud\Desktop\ELEC291\Lab5\lab5.c:233: LCD_RS=0;
	clr	_P2_0
;	C:\Users\Mahmoud\Desktop\ELEC291\Lab5\lab5.c:234: LCD_byte(x);
	mov	dpl,r2
	lcall	_LCD_byte
;	C:\Users\Mahmoud\Desktop\ELEC291\Lab5\lab5.c:235: waitms(5);
	mov	dptr,#0x0005
	ljmp	_waitms
;------------------------------------------------------------
;Allocation info for local variables in function 'LCD_4BIT'
;------------------------------------------------------------
;------------------------------------------------------------
;	C:\Users\Mahmoud\Desktop\ELEC291\Lab5\lab5.c:238: void LCD_4BIT (void)
;	-----------------------------------------
;	 function LCD_4BIT
;	-----------------------------------------
_LCD_4BIT:
;	C:\Users\Mahmoud\Desktop\ELEC291\Lab5\lab5.c:240: LCD_E=0; // Resting state of LCD's enable is zero
	clr	_P1_6
;	C:\Users\Mahmoud\Desktop\ELEC291\Lab5\lab5.c:241: LCD_RW=0; // We are only writing to the LCD in this program
	clr	_P1_7
;	C:\Users\Mahmoud\Desktop\ELEC291\Lab5\lab5.c:242: waitms(20);
	mov	dptr,#0x0014
	lcall	_waitms
;	C:\Users\Mahmoud\Desktop\ELEC291\Lab5\lab5.c:244: WriteCommand(0x33);
	mov	dpl,#0x33
	lcall	_WriteCommand
;	C:\Users\Mahmoud\Desktop\ELEC291\Lab5\lab5.c:245: WriteCommand(0x33);
	mov	dpl,#0x33
	lcall	_WriteCommand
;	C:\Users\Mahmoud\Desktop\ELEC291\Lab5\lab5.c:246: WriteCommand(0x32); // Change to 4-bit mode
	mov	dpl,#0x32
	lcall	_WriteCommand
;	C:\Users\Mahmoud\Desktop\ELEC291\Lab5\lab5.c:249: WriteCommand(0x28);
	mov	dpl,#0x28
	lcall	_WriteCommand
;	C:\Users\Mahmoud\Desktop\ELEC291\Lab5\lab5.c:250: WriteCommand(0x0c);
	mov	dpl,#0x0C
	lcall	_WriteCommand
;	C:\Users\Mahmoud\Desktop\ELEC291\Lab5\lab5.c:251: WriteCommand(0x01); // Clear screen command (takes some time)
	mov	dpl,#0x01
	lcall	_WriteCommand
;	C:\Users\Mahmoud\Desktop\ELEC291\Lab5\lab5.c:252: waitms(20); // Wait for clear screen command to finsih.
	mov	dptr,#0x0014
	ljmp	_waitms
;------------------------------------------------------------
;Allocation info for local variables in function 'LCDprint'
;------------------------------------------------------------
;line                      Allocated with name '_LCDprint_PARM_2'
;string                    Allocated to registers r2 r3 r4 
;j                         Allocated to registers r5 r6 
;------------------------------------------------------------
;	C:\Users\Mahmoud\Desktop\ELEC291\Lab5\lab5.c:255: void LCDprint(char * string, unsigned char line, bit clear)
;	-----------------------------------------
;	 function LCDprint
;	-----------------------------------------
_LCDprint:
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
;	C:\Users\Mahmoud\Desktop\ELEC291\Lab5\lab5.c:259: WriteCommand(line==2?0xc0:0x80);
	mov	a,#0x02
	cjne	a,_LCDprint_PARM_2,L013013?
	mov	r5,#0xC0
	sjmp	L013014?
L013013?:
	mov	r5,#0x80
L013014?:
	mov	dpl,r5
	push	ar2
	push	ar3
	push	ar4
	lcall	_WriteCommand
;	C:\Users\Mahmoud\Desktop\ELEC291\Lab5\lab5.c:260: waitms(5);
	mov	dptr,#0x0005
	lcall	_waitms
	pop	ar4
	pop	ar3
	pop	ar2
;	C:\Users\Mahmoud\Desktop\ELEC291\Lab5\lab5.c:261: for(j=0; string[j]!=0; j++)	WriteData(string[j]);// Write the message
	mov	r5,#0x00
	mov	r6,#0x00
L013003?:
	mov	a,r5
	add	a,r2
	mov	r7,a
	mov	a,r6
	addc	a,r3
	mov	r0,a
	mov	ar1,r4
	mov	dpl,r7
	mov	dph,r0
	mov	b,r1
	lcall	__gptrget
	mov	r7,a
	jz	L013006?
	mov	dpl,r7
	push	ar2
	push	ar3
	push	ar4
	push	ar5
	push	ar6
	lcall	_WriteData
	pop	ar6
	pop	ar5
	pop	ar4
	pop	ar3
	pop	ar2
	inc	r5
	cjne	r5,#0x00,L013003?
	inc	r6
	sjmp	L013003?
L013006?:
;	C:\Users\Mahmoud\Desktop\ELEC291\Lab5\lab5.c:262: if(clear) for(; j<CHARS_PER_LINE; j++) WriteData(' '); // Clear the rest of the line
	jnb	_LCDprint_PARM_3,L013011?
	mov	ar2,r5
	mov	ar3,r6
L013007?:
	clr	c
	mov	a,r2
	subb	a,#0x10
	mov	a,r3
	xrl	a,#0x80
	subb	a,#0x80
	jnc	L013011?
	mov	dpl,#0x20
	push	ar2
	push	ar3
	lcall	_WriteData
	pop	ar3
	pop	ar2
	inc	r2
	cjne	r2,#0x00,L013007?
	inc	r3
	sjmp	L013007?
L013011?:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'getsn'
;------------------------------------------------------------
;len                       Allocated with name '_getsn_PARM_2'
;buff                      Allocated with name '_getsn_buff_1_90'
;j                         Allocated with name '_getsn_sloc0_1_0'
;c                         Allocated to registers r3 
;sloc0                     Allocated with name '_getsn_sloc0_1_0'
;------------------------------------------------------------
;	C:\Users\Mahmoud\Desktop\ELEC291\Lab5\lab5.c:265: int getsn (char * buff, int len)
;	-----------------------------------------
;	 function getsn
;	-----------------------------------------
_getsn:
	mov	_getsn_buff_1_90,dpl
	mov	(_getsn_buff_1_90 + 1),dph
	mov	(_getsn_buff_1_90 + 2),b
;	C:\Users\Mahmoud\Desktop\ELEC291\Lab5\lab5.c:270: for(j=0; j<(len-1); j++)
	clr	a
	mov	_getsn_sloc0_1_0,a
	mov	(_getsn_sloc0_1_0 + 1),a
	mov	a,_getsn_PARM_2
	add	a,#0xff
	mov	r7,a
	mov	a,(_getsn_PARM_2 + 1)
	addc	a,#0xff
	mov	r0,a
	mov	r1,#0x00
	mov	r2,#0x00
L014005?:
	clr	c
	mov	a,r1
	subb	a,r7
	mov	a,r2
	xrl	a,#0x80
	mov	b,r0
	xrl	b,#0x80
	subb	a,b
	jnc	L014008?
;	C:\Users\Mahmoud\Desktop\ELEC291\Lab5\lab5.c:272: c=getchar();
	push	ar2
	push	ar7
	push	ar0
	push	ar1
	lcall	_getchar
	mov	r3,dpl
	pop	ar1
	pop	ar0
	pop	ar7
	pop	ar2
;	C:\Users\Mahmoud\Desktop\ELEC291\Lab5\lab5.c:273: if ( (c=='\n') || (c=='\r') )
	cjne	r3,#0x0A,L014015?
	sjmp	L014001?
L014015?:
	cjne	r3,#0x0D,L014002?
L014001?:
;	C:\Users\Mahmoud\Desktop\ELEC291\Lab5\lab5.c:275: buff[j]=0;
	mov	a,_getsn_sloc0_1_0
	add	a,_getsn_buff_1_90
	mov	r4,a
	mov	a,(_getsn_sloc0_1_0 + 1)
	addc	a,(_getsn_buff_1_90 + 1)
	mov	r5,a
	mov	r6,(_getsn_buff_1_90 + 2)
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	clr	a
	lcall	__gptrput
;	C:\Users\Mahmoud\Desktop\ELEC291\Lab5\lab5.c:276: return j;
	mov	dpl,_getsn_sloc0_1_0
	mov	dph,(_getsn_sloc0_1_0 + 1)
	ret
L014002?:
;	C:\Users\Mahmoud\Desktop\ELEC291\Lab5\lab5.c:280: buff[j]=c;
	mov	a,r1
	add	a,_getsn_buff_1_90
	mov	r4,a
	mov	a,r2
	addc	a,(_getsn_buff_1_90 + 1)
	mov	r5,a
	mov	r6,(_getsn_buff_1_90 + 2)
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,r3
	lcall	__gptrput
;	C:\Users\Mahmoud\Desktop\ELEC291\Lab5\lab5.c:270: for(j=0; j<(len-1); j++)
	inc	r1
	cjne	r1,#0x00,L014018?
	inc	r2
L014018?:
	mov	_getsn_sloc0_1_0,r1
	mov	(_getsn_sloc0_1_0 + 1),r2
	sjmp	L014005?
L014008?:
;	C:\Users\Mahmoud\Desktop\ELEC291\Lab5\lab5.c:283: buff[j]=0;
	mov	a,_getsn_sloc0_1_0
	add	a,_getsn_buff_1_90
	mov	r2,a
	mov	a,(_getsn_sloc0_1_0 + 1)
	addc	a,(_getsn_buff_1_90 + 1)
	mov	r3,a
	mov	r4,(_getsn_buff_1_90 + 2)
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	clr	a
	lcall	__gptrput
;	C:\Users\Mahmoud\Desktop\ELEC291\Lab5\lab5.c:284: return len;
	mov	dpl,_getsn_PARM_2
	mov	dph,(_getsn_PARM_2 + 1)
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'ADC_at_Pin'
;------------------------------------------------------------
;pin                       Allocated to registers 
;------------------------------------------------------------
;	C:\Users\Mahmoud\Desktop\ELEC291\Lab5\lab5.c:286: unsigned int ADC_at_Pin(unsigned char pin)
;	-----------------------------------------
;	 function ADC_at_Pin
;	-----------------------------------------
_ADC_at_Pin:
	mov	_ADC0MX,dpl
;	C:\Users\Mahmoud\Desktop\ELEC291\Lab5\lab5.c:289: ADINT = 0;
	clr	_ADINT
;	C:\Users\Mahmoud\Desktop\ELEC291\Lab5\lab5.c:290: ADBUSY = 1;     // Convert voltage at the pin
	setb	_ADBUSY
;	C:\Users\Mahmoud\Desktop\ELEC291\Lab5\lab5.c:291: while (!ADINT); // Wait for conversion to complete
L015001?:
	jnb	_ADINT,L015001?
;	C:\Users\Mahmoud\Desktop\ELEC291\Lab5\lab5.c:292: return (ADC0);
	mov	dpl,_ADC0
	mov	dph,(_ADC0 >> 8)
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'Volts_at_Pin'
;------------------------------------------------------------
;pin                       Allocated to registers r2 
;------------------------------------------------------------
;	C:\Users\Mahmoud\Desktop\ELEC291\Lab5\lab5.c:295: float Volts_at_Pin(unsigned char pin)
;	-----------------------------------------
;	 function Volts_at_Pin
;	-----------------------------------------
_Volts_at_Pin:
;	C:\Users\Mahmoud\Desktop\ELEC291\Lab5\lab5.c:297: return ((ADC_at_Pin(pin)*VDD)/16383.0);
	lcall	_ADC_at_Pin
	lcall	___uint2fs
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	mov	r5,a
	push	ar2
	push	ar3
	push	ar4
	push	ar5
	mov	dptr,#0x49BA
	mov	b,#0x54
	mov	a,#0x40
	lcall	___fsmul
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	mov	r5,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	clr	a
	push	acc
	mov	a,#0xFC
	push	acc
	mov	a,#0x7F
	push	acc
	mov	a,#0x46
	push	acc
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,r5
	lcall	___fsdiv
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	mov	r5,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,r5
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'getperiod'
;------------------------------------------------------------
;period                    Allocated to registers r2 r3 r4 r5 
;------------------------------------------------------------
;	C:\Users\Mahmoud\Desktop\ELEC291\Lab5\lab5.c:299: float getperiod() 
;	-----------------------------------------
;	 function getperiod
;	-----------------------------------------
_getperiod:
;	C:\Users\Mahmoud\Desktop\ELEC291\Lab5\lab5.c:303: TIMER0_Init();
	lcall	_TIMER0_Init
;	C:\Users\Mahmoud\Desktop\ELEC291\Lab5\lab5.c:305: TL0=0; 
	mov	_TL0,#0x00
;	C:\Users\Mahmoud\Desktop\ELEC291\Lab5\lab5.c:306: TH0=0;
	mov	_TH0,#0x00
;	C:\Users\Mahmoud\Desktop\ELEC291\Lab5\lab5.c:307: TF0=0;
	clr	_TF0
;	C:\Users\Mahmoud\Desktop\ELEC291\Lab5\lab5.c:308: overflow_count=0;
	mov	_overflow_count,#0x00
;	C:\Users\Mahmoud\Desktop\ELEC291\Lab5\lab5.c:310: while(P2_5!=0); // Wait for the signal to be zero
L017001?:
	jb	_P2_5,L017001?
;	C:\Users\Mahmoud\Desktop\ELEC291\Lab5\lab5.c:311: while(P2_5!=1); // Wait for the signal to be one
L017004?:
	jnb	_P2_5,L017004?
;	C:\Users\Mahmoud\Desktop\ELEC291\Lab5\lab5.c:312: TR0=1; // Start the timer
	setb	_TR0
;	C:\Users\Mahmoud\Desktop\ELEC291\Lab5\lab5.c:313: while(P2_5!=0) // Wait for the signal to be zero
L017009?:
	jnb	_P2_5,L017014?
;	C:\Users\Mahmoud\Desktop\ELEC291\Lab5\lab5.c:315: if(TF0==1) // Did the 16-bit timer overflow?
;	C:\Users\Mahmoud\Desktop\ELEC291\Lab5\lab5.c:317: TF0=0;
	jbc	_TF0,L017031?
	sjmp	L017009?
L017031?:
;	C:\Users\Mahmoud\Desktop\ELEC291\Lab5\lab5.c:318: overflow_count++;
	inc	_overflow_count
;	C:\Users\Mahmoud\Desktop\ELEC291\Lab5\lab5.c:321: while(P2_5!=1) // Wait for the signal to be one
	sjmp	L017009?
L017014?:
	jb	_P2_5,L017016?
;	C:\Users\Mahmoud\Desktop\ELEC291\Lab5\lab5.c:323: if(TF0==1) // Did the 16-bit timer overflow?
;	C:\Users\Mahmoud\Desktop\ELEC291\Lab5\lab5.c:325: TF0=0;
	jbc	_TF0,L017033?
	sjmp	L017014?
L017033?:
;	C:\Users\Mahmoud\Desktop\ELEC291\Lab5\lab5.c:326: overflow_count++;
	inc	_overflow_count
	sjmp	L017014?
L017016?:
;	C:\Users\Mahmoud\Desktop\ELEC291\Lab5\lab5.c:329: TR0=0; // Stop timer 0, the 24-bit number [overflow_count-TH0-TL0] has the period!
	clr	_TR0
;	C:\Users\Mahmoud\Desktop\ELEC291\Lab5\lab5.c:330: period=(overflow_count*65536.0+TH0*256.0+TL0)*(12.0/SYSCLK);
	mov	dpl,_overflow_count
	lcall	___uchar2fs
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	mov	r5,a
	push	ar2
	push	ar3
	push	ar4
	push	ar5
	mov	dptr,#0x0000
	mov	b,#0x80
	mov	a,#0x47
	lcall	___fsmul
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	mov	r5,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	dpl,_TH0
	push	ar2
	push	ar3
	push	ar4
	push	ar5
	lcall	___uchar2fs
	mov	r6,dpl
	mov	r7,dph
	mov	r0,b
	mov	r1,a
	push	ar6
	push	ar7
	push	ar0
	push	ar1
	mov	dptr,#0x0000
	mov	b,#0x80
	mov	a,#0x43
	lcall	___fsmul
	mov	r6,dpl
	mov	r7,dph
	mov	r0,b
	mov	r1,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	pop	ar5
	pop	ar4
	pop	ar3
	pop	ar2
	push	ar6
	push	ar7
	push	ar0
	push	ar1
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,r5
	lcall	___fsadd
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	mov	r5,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	r6,_TL0
	mov	r7,#0x00
	mov	dpl,r6
	mov	dph,r7
	push	ar2
	push	ar3
	push	ar4
	push	ar5
	lcall	___sint2fs
	mov	r6,dpl
	mov	r7,dph
	mov	r0,b
	mov	r1,a
	pop	ar5
	pop	ar4
	pop	ar3
	pop	ar2
	push	ar6
	push	ar7
	push	ar0
	push	ar1
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,r5
	lcall	___fsadd
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	mov	r5,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	push	ar2
	push	ar3
	push	ar4
	push	ar5
	mov	dptr,#0xF4FC
	mov	b,#0x32
	mov	a,#0x34
	lcall	___fsmul
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	mov	r5,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
;	C:\Users\Mahmoud\Desktop\ELEC291\Lab5\lab5.c:332: printf( "\rT=%f ms    ", period*1000.0);
	push	ar2
	push	ar3
	push	ar4
	push	ar5
	push	ar2
	push	ar3
	push	ar4
	push	ar5
	mov	dptr,#0x0000
	mov	b,#0x7A
	mov	a,#0x44
	lcall	___fsmul
	mov	r6,dpl
	mov	r7,dph
	mov	r0,b
	mov	r1,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	push	ar6
	push	ar7
	push	ar0
	push	ar1
	mov	a,#__str_0
	push	acc
	mov	a,#(__str_0 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xf9
	mov	sp,a
;	C:\Users\Mahmoud\Desktop\ELEC291\Lab5\lab5.c:333: waitms(500);
	mov	dptr,#0x01F4
	lcall	_waitms
	pop	ar5
	pop	ar4
	pop	ar3
	pop	ar2
;	C:\Users\Mahmoud\Desktop\ELEC291\Lab5\lab5.c:335: return period;
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,r5
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'gettimediff'
;------------------------------------------------------------
;timediff                  Allocated to registers r2 r3 r4 r5 
;overflow_count            Allocated to registers r2 
;------------------------------------------------------------
;	C:\Users\Mahmoud\Desktop\ELEC291\Lab5\lab5.c:338: float gettimediff()
;	-----------------------------------------
;	 function gettimediff
;	-----------------------------------------
_gettimediff:
;	C:\Users\Mahmoud\Desktop\ELEC291\Lab5\lab5.c:343: TIMER0_Init();
	lcall	_TIMER0_Init
;	C:\Users\Mahmoud\Desktop\ELEC291\Lab5\lab5.c:345: TL0=0; 
	mov	_TL0,#0x00
;	C:\Users\Mahmoud\Desktop\ELEC291\Lab5\lab5.c:346: TH0=0;
	mov	_TH0,#0x00
;	C:\Users\Mahmoud\Desktop\ELEC291\Lab5\lab5.c:347: TF0=0;
	clr	_TF0
;	C:\Users\Mahmoud\Desktop\ELEC291\Lab5\lab5.c:351: while(P2_4!=1); // Wait for the signal to be one
L018001?:
	jnb	_P2_4,L018001?
;	C:\Users\Mahmoud\Desktop\ELEC291\Lab5\lab5.c:352: while(P2_4!=0); // Wait for the signal to be zero
L018004?:
	jb	_P2_4,L018004?
;	C:\Users\Mahmoud\Desktop\ELEC291\Lab5\lab5.c:353: TR0=1; // Start the timer
	setb	_TR0
;	C:\Users\Mahmoud\Desktop\ELEC291\Lab5\lab5.c:354: while(P2_5!=0) // Wait for the signal to be zero
	mov	r2,#0x00
L018009?:
	jnb	_P2_5,L018011?
;	C:\Users\Mahmoud\Desktop\ELEC291\Lab5\lab5.c:356: if(TF0==1) // Did the 16-bit timer overflow?
;	C:\Users\Mahmoud\Desktop\ELEC291\Lab5\lab5.c:358: TF0=0;
	jbc	_TF0,L018024?
	sjmp	L018009?
L018024?:
;	C:\Users\Mahmoud\Desktop\ELEC291\Lab5\lab5.c:359: overflow_count++;
	inc	r2
	sjmp	L018009?
L018011?:
;	C:\Users\Mahmoud\Desktop\ELEC291\Lab5\lab5.c:363: TR0=0; // Stop timer 0, the 24-bit number [overflow_count-TH0-TL0] has the period!
	clr	_TR0
;	C:\Users\Mahmoud\Desktop\ELEC291\Lab5\lab5.c:364: timediff =(overflow_count*65536.0+TH0*256.0+TL0)*(12.0/SYSCLK);
	mov	dpl,r2
	lcall	___uchar2fs
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	mov	r5,a
	push	ar2
	push	ar3
	push	ar4
	push	ar5
	mov	dptr,#0x0000
	mov	b,#0x80
	mov	a,#0x47
	lcall	___fsmul
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	mov	r5,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	dpl,_TH0
	push	ar2
	push	ar3
	push	ar4
	push	ar5
	lcall	___uchar2fs
	mov	r6,dpl
	mov	r7,dph
	mov	r0,b
	mov	r1,a
	push	ar6
	push	ar7
	push	ar0
	push	ar1
	mov	dptr,#0x0000
	mov	b,#0x80
	mov	a,#0x43
	lcall	___fsmul
	mov	r6,dpl
	mov	r7,dph
	mov	r0,b
	mov	r1,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	pop	ar5
	pop	ar4
	pop	ar3
	pop	ar2
	push	ar6
	push	ar7
	push	ar0
	push	ar1
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,r5
	lcall	___fsadd
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	mov	r5,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	r6,_TL0
	mov	r7,#0x00
	mov	dpl,r6
	mov	dph,r7
	push	ar2
	push	ar3
	push	ar4
	push	ar5
	lcall	___sint2fs
	mov	r6,dpl
	mov	r7,dph
	mov	r0,b
	mov	r1,a
	pop	ar5
	pop	ar4
	pop	ar3
	pop	ar2
	push	ar6
	push	ar7
	push	ar0
	push	ar1
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,r5
	lcall	___fsadd
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	mov	r5,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	push	ar2
	push	ar3
	push	ar4
	push	ar5
	mov	dptr,#0xF4FC
	mov	b,#0x32
	mov	a,#0x34
	lcall	___fsmul
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	mov	r5,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
;	C:\Users\Mahmoud\Desktop\ELEC291\Lab5\lab5.c:366: printf( "\rtimediff=%f ms    ", timediff*1000.0);
	push	ar2
	push	ar3
	push	ar4
	push	ar5
	push	ar2
	push	ar3
	push	ar4
	push	ar5
	mov	dptr,#0x0000
	mov	b,#0x7A
	mov	a,#0x44
	lcall	___fsmul
	mov	r6,dpl
	mov	r7,dph
	mov	r0,b
	mov	r1,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	push	ar6
	push	ar7
	push	ar0
	push	ar1
	mov	a,#__str_1
	push	acc
	mov	a,#(__str_1 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xf9
	mov	sp,a
;	C:\Users\Mahmoud\Desktop\ELEC291\Lab5\lab5.c:367: printf("\n");
	mov	a,#__str_2
	push	acc
	mov	a,#(__str_2 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
	pop	ar5
	pop	ar4
	pop	ar3
	pop	ar2
;	C:\Users\Mahmoud\Desktop\ELEC291\Lab5\lab5.c:368: return timediff;
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,r5
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'gettimediff2'
;------------------------------------------------------------
;timediff                  Allocated to registers r2 r3 r4 r5 
;overflow_count            Allocated to registers r2 
;------------------------------------------------------------
;	C:\Users\Mahmoud\Desktop\ELEC291\Lab5\lab5.c:371: float gettimediff2()
;	-----------------------------------------
;	 function gettimediff2
;	-----------------------------------------
_gettimediff2:
;	C:\Users\Mahmoud\Desktop\ELEC291\Lab5\lab5.c:376: TIMER0_Init();
	lcall	_TIMER0_Init
;	C:\Users\Mahmoud\Desktop\ELEC291\Lab5\lab5.c:378: TL0=0; 
	mov	_TL0,#0x00
;	C:\Users\Mahmoud\Desktop\ELEC291\Lab5\lab5.c:379: TH0=0;
	mov	_TH0,#0x00
;	C:\Users\Mahmoud\Desktop\ELEC291\Lab5\lab5.c:380: TF0=0;
	clr	_TF0
;	C:\Users\Mahmoud\Desktop\ELEC291\Lab5\lab5.c:384: while(P2_5!=1); // Wait for the signal to be one
L019001?:
	jnb	_P2_5,L019001?
;	C:\Users\Mahmoud\Desktop\ELEC291\Lab5\lab5.c:385: while(P2_5!=0); // Wait for the signal to be zero
L019004?:
	jb	_P2_5,L019004?
;	C:\Users\Mahmoud\Desktop\ELEC291\Lab5\lab5.c:386: TR0=1; // Start the timer
	setb	_TR0
;	C:\Users\Mahmoud\Desktop\ELEC291\Lab5\lab5.c:387: while(P2_4!=0) // Wait for the signal to be zero
	mov	r2,#0x00
L019009?:
	jnb	_P2_4,L019011?
;	C:\Users\Mahmoud\Desktop\ELEC291\Lab5\lab5.c:389: if(TF0==1) // Did the 16-bit timer overflow?
;	C:\Users\Mahmoud\Desktop\ELEC291\Lab5\lab5.c:391: TF0=0;
	jbc	_TF0,L019024?
	sjmp	L019009?
L019024?:
;	C:\Users\Mahmoud\Desktop\ELEC291\Lab5\lab5.c:392: overflow_count++;
	inc	r2
	sjmp	L019009?
L019011?:
;	C:\Users\Mahmoud\Desktop\ELEC291\Lab5\lab5.c:396: TR0=0; // Stop timer 0, the 24-bit number [overflow_count-TH0-TL0] has the period!
	clr	_TR0
;	C:\Users\Mahmoud\Desktop\ELEC291\Lab5\lab5.c:397: timediff =(overflow_count*65536.0+TH0*256.0+TL0)*(12.0/SYSCLK);
	mov	dpl,r2
	lcall	___uchar2fs
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	mov	r5,a
	push	ar2
	push	ar3
	push	ar4
	push	ar5
	mov	dptr,#0x0000
	mov	b,#0x80
	mov	a,#0x47
	lcall	___fsmul
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	mov	r5,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	dpl,_TH0
	push	ar2
	push	ar3
	push	ar4
	push	ar5
	lcall	___uchar2fs
	mov	r6,dpl
	mov	r7,dph
	mov	r0,b
	mov	r1,a
	push	ar6
	push	ar7
	push	ar0
	push	ar1
	mov	dptr,#0x0000
	mov	b,#0x80
	mov	a,#0x43
	lcall	___fsmul
	mov	r6,dpl
	mov	r7,dph
	mov	r0,b
	mov	r1,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	pop	ar5
	pop	ar4
	pop	ar3
	pop	ar2
	push	ar6
	push	ar7
	push	ar0
	push	ar1
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,r5
	lcall	___fsadd
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	mov	r5,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	r6,_TL0
	mov	r7,#0x00
	mov	dpl,r6
	mov	dph,r7
	push	ar2
	push	ar3
	push	ar4
	push	ar5
	lcall	___sint2fs
	mov	r6,dpl
	mov	r7,dph
	mov	r0,b
	mov	r1,a
	pop	ar5
	pop	ar4
	pop	ar3
	pop	ar2
	push	ar6
	push	ar7
	push	ar0
	push	ar1
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,r5
	lcall	___fsadd
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	mov	r5,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	push	ar2
	push	ar3
	push	ar4
	push	ar5
	mov	dptr,#0xF4FC
	mov	b,#0x32
	mov	a,#0x34
	lcall	___fsmul
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	mov	r5,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
;	C:\Users\Mahmoud\Desktop\ELEC291\Lab5\lab5.c:399: printf( "\rtimediff=%f ms    ", timediff*1000.0);
	push	ar2
	push	ar3
	push	ar4
	push	ar5
	push	ar2
	push	ar3
	push	ar4
	push	ar5
	mov	dptr,#0x0000
	mov	b,#0x7A
	mov	a,#0x44
	lcall	___fsmul
	mov	r6,dpl
	mov	r7,dph
	mov	r0,b
	mov	r1,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	push	ar6
	push	ar7
	push	ar0
	push	ar1
	mov	a,#__str_1
	push	acc
	mov	a,#(__str_1 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xf9
	mov	sp,a
;	C:\Users\Mahmoud\Desktop\ELEC291\Lab5\lab5.c:400: printf("\n");
	mov	a,#__str_2
	push	acc
	mov	a,#(__str_2 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
	pop	ar5
	pop	ar4
	pop	ar3
	pop	ar2
;	C:\Users\Mahmoud\Desktop\ELEC291\Lab5\lab5.c:401: return timediff;
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,r5
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'get_mag1'
;------------------------------------------------------------
;period                    Allocated to registers r2 r3 r4 r5 
;magnitude                 Allocated to registers 
;us0                       Allocated to registers r2 r3 r4 r5 
;ms                        Allocated with name '_get_mag1_ms_1_111'
;us                        Allocated to registers r2 r3 
;------------------------------------------------------------
;	C:\Users\Mahmoud\Desktop\ELEC291\Lab5\lab5.c:405: float get_mag1 (float period)
;	-----------------------------------------
;	 function get_mag1
;	-----------------------------------------
_get_mag1:
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	mov	r5,a
;	C:\Users\Mahmoud\Desktop\ELEC291\Lab5\lab5.c:411: printf( " float us = %f", period);
	push	ar2
	push	ar3
	push	ar4
	push	ar5
	push	ar2
	push	ar3
	push	ar4
	push	ar5
	mov	a,#__str_3
	push	acc
	mov	a,#(__str_3 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xf9
	mov	sp,a
;	C:\Users\Mahmoud\Desktop\ELEC291\Lab5\lab5.c:412: printf("\n");
	mov	a,#__str_2
	push	acc
	mov	a,#(__str_2 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
	pop	ar5
	pop	ar4
	pop	ar3
	pop	ar2
;	C:\Users\Mahmoud\Desktop\ELEC291\Lab5\lab5.c:413: ms = (int) period;
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,r5
	push	ar2
	push	ar3
	push	ar4
	push	ar5
	lcall	___fs2sint
;	C:\Users\Mahmoud\Desktop\ELEC291\Lab5\lab5.c:414: us0 = (period - ms)*1000.0;
	mov	_get_mag1_ms_1_111,dpl
	mov  (_get_mag1_ms_1_111 + 1),dph
	lcall	___uint2fs
	mov	r0,dpl
	mov	r1,dph
	mov	r6,b
	mov	r7,a
	pop	ar5
	pop	ar4
	pop	ar3
	pop	ar2
	push	ar0
	push	ar1
	push	ar6
	push	ar7
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,r5
	lcall	___fssub
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	mov	r5,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	push	ar2
	push	ar3
	push	ar4
	push	ar5
	mov	dptr,#0x0000
	mov	b,#0x7A
	mov	a,#0x44
	lcall	___fsmul
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	mov	r5,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
;	C:\Users\Mahmoud\Desktop\ELEC291\Lab5\lab5.c:415: us = FLOAT_TO_INT(us0);
	push	ar2
	push	ar3
	push	ar4
	push	ar5
	clr	a
	push	acc
	push	acc
	push	acc
	push	acc
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,r5
	lcall	___fslt
	mov	r6,dpl
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	pop	ar5
	pop	ar4
	pop	ar3
	pop	ar2
	mov	a,r6
	cjne	a,#0x01,L020015?
L020015?:
	clr	a
	rlc	a
	mov	r6,a
	jz	L020009?
	clr	a
	push	acc
	push	acc
	push	acc
	mov	a,#0x3F
	push	acc
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,r5
	lcall	___fsadd
	mov	r6,dpl
	mov	r7,dph
	mov	r0,b
	mov	r1,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	dpl,r6
	mov	dph,r7
	mov	b,r0
	mov	a,r1
	lcall	___fs2sint
	mov	r6,dpl
	mov	r7,dph
	sjmp	L020010?
L020009?:
	clr	a
	push	acc
	push	acc
	push	acc
	mov	a,#0x3F
	push	acc
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,r5
	lcall	___fssub
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	mov	r5,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,r5
	lcall	___fs2sint
	mov	r6,dpl
	mov	r7,dph
L020010?:
	mov	ar2,r6
	mov	ar3,r7
;	C:\Users\Mahmoud\Desktop\ELEC291\Lab5\lab5.c:417: printf( " us = %d", us);
	push	ar2
	push	ar3
	push	ar2
	push	ar3
	mov	a,#__str_4
	push	acc
	mov	a,#(__str_4 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
;	C:\Users\Mahmoud\Desktop\ELEC291\Lab5\lab5.c:418: printf("\n");
	mov	a,#__str_2
	push	acc
	mov	a,#(__str_2 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
	pop	ar3
	pop	ar2
;	C:\Users\Mahmoud\Desktop\ELEC291\Lab5\lab5.c:419: while(P2_4!=0); // Wait for the signal to be zero
L020001?:
	jb	_P2_4,L020001?
;	C:\Users\Mahmoud\Desktop\ELEC291\Lab5\lab5.c:420: while(P2_4!=1); // Wait for the signal to be one
L020004?:
	jnb	_P2_4,L020004?
;	C:\Users\Mahmoud\Desktop\ELEC291\Lab5\lab5.c:421: waitms(ms);
	mov	dpl,_get_mag1_ms_1_111
	mov	dph,(_get_mag1_ms_1_111 + 1)
	push	ar2
	push	ar3
	lcall	_waitms
	pop	ar3
	pop	ar2
;	C:\Users\Mahmoud\Desktop\ELEC291\Lab5\lab5.c:422: Timer3us(us);
	mov	dpl,r2
	lcall	_Timer3us
;	C:\Users\Mahmoud\Desktop\ELEC291\Lab5\lab5.c:423: magnitude = (Volts_at_Pin(QFP32_MUX_P2_2));
	mov	dpl,#0x0F
	lcall	_Volts_at_Pin
;	C:\Users\Mahmoud\Desktop\ELEC291\Lab5\lab5.c:424: return (Volts_at_Pin(QFP32_MUX_P2_2));
	mov	dpl,#0x0F
	ljmp	_Volts_at_Pin
;------------------------------------------------------------
;Allocation info for local variables in function 'get_mag2'
;------------------------------------------------------------
;period                    Allocated to registers r2 r3 r4 r5 
;magnitude                 Allocated to registers 
;us0                       Allocated to registers r2 r3 r4 r5 
;ms                        Allocated with name '_get_mag2_ms_1_113'
;us                        Allocated to registers r2 r3 
;------------------------------------------------------------
;	C:\Users\Mahmoud\Desktop\ELEC291\Lab5\lab5.c:429: float get_mag2 (float period)
;	-----------------------------------------
;	 function get_mag2
;	-----------------------------------------
_get_mag2:
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	mov	r5,a
;	C:\Users\Mahmoud\Desktop\ELEC291\Lab5\lab5.c:435: printf( " float us = %f", period);
	push	ar2
	push	ar3
	push	ar4
	push	ar5
	push	ar2
	push	ar3
	push	ar4
	push	ar5
	mov	a,#__str_3
	push	acc
	mov	a,#(__str_3 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xf9
	mov	sp,a
;	C:\Users\Mahmoud\Desktop\ELEC291\Lab5\lab5.c:436: printf("\n");
	mov	a,#__str_2
	push	acc
	mov	a,#(__str_2 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
	pop	ar5
	pop	ar4
	pop	ar3
	pop	ar2
;	C:\Users\Mahmoud\Desktop\ELEC291\Lab5\lab5.c:437: ms = (int) period;
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,r5
	push	ar2
	push	ar3
	push	ar4
	push	ar5
	lcall	___fs2sint
;	C:\Users\Mahmoud\Desktop\ELEC291\Lab5\lab5.c:438: us0 = (period - ms)*1000.0;
	mov	_get_mag2_ms_1_113,dpl
	mov  (_get_mag2_ms_1_113 + 1),dph
	lcall	___uint2fs
	mov	r0,dpl
	mov	r1,dph
	mov	r6,b
	mov	r7,a
	pop	ar5
	pop	ar4
	pop	ar3
	pop	ar2
	push	ar0
	push	ar1
	push	ar6
	push	ar7
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,r5
	lcall	___fssub
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	mov	r5,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	push	ar2
	push	ar3
	push	ar4
	push	ar5
	mov	dptr,#0x0000
	mov	b,#0x7A
	mov	a,#0x44
	lcall	___fsmul
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	mov	r5,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
;	C:\Users\Mahmoud\Desktop\ELEC291\Lab5\lab5.c:439: us = FLOAT_TO_INT(us0);
	push	ar2
	push	ar3
	push	ar4
	push	ar5
	clr	a
	push	acc
	push	acc
	push	acc
	push	acc
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,r5
	lcall	___fslt
	mov	r6,dpl
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	pop	ar5
	pop	ar4
	pop	ar3
	pop	ar2
	mov	a,r6
	cjne	a,#0x01,L021015?
L021015?:
	clr	a
	rlc	a
	mov	r6,a
	jz	L021009?
	clr	a
	push	acc
	push	acc
	push	acc
	mov	a,#0x3F
	push	acc
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,r5
	lcall	___fsadd
	mov	r6,dpl
	mov	r7,dph
	mov	r0,b
	mov	r1,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	dpl,r6
	mov	dph,r7
	mov	b,r0
	mov	a,r1
	lcall	___fs2sint
	mov	r6,dpl
	mov	r7,dph
	sjmp	L021010?
L021009?:
	clr	a
	push	acc
	push	acc
	push	acc
	mov	a,#0x3F
	push	acc
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,r5
	lcall	___fssub
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	mov	r5,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,r5
	lcall	___fs2sint
	mov	r6,dpl
	mov	r7,dph
L021010?:
	mov	ar2,r6
	mov	ar3,r7
;	C:\Users\Mahmoud\Desktop\ELEC291\Lab5\lab5.c:441: printf( " us = %d", us);
	push	ar2
	push	ar3
	push	ar2
	push	ar3
	mov	a,#__str_4
	push	acc
	mov	a,#(__str_4 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
;	C:\Users\Mahmoud\Desktop\ELEC291\Lab5\lab5.c:442: printf("\n");
	mov	a,#__str_2
	push	acc
	mov	a,#(__str_2 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
	pop	ar3
	pop	ar2
;	C:\Users\Mahmoud\Desktop\ELEC291\Lab5\lab5.c:443: while(P2_5!=0); // Wait for the signal to be zero
L021001?:
	jb	_P2_5,L021001?
;	C:\Users\Mahmoud\Desktop\ELEC291\Lab5\lab5.c:444: while(P2_5!=1); // Wait for the signal to be one
L021004?:
	jnb	_P2_5,L021004?
;	C:\Users\Mahmoud\Desktop\ELEC291\Lab5\lab5.c:445: waitms(ms);
	mov	dpl,_get_mag2_ms_1_113
	mov	dph,(_get_mag2_ms_1_113 + 1)
	push	ar2
	push	ar3
	lcall	_waitms
	pop	ar3
	pop	ar2
;	C:\Users\Mahmoud\Desktop\ELEC291\Lab5\lab5.c:446: Timer3us(us);
	mov	dpl,r2
	lcall	_Timer3us
;	C:\Users\Mahmoud\Desktop\ELEC291\Lab5\lab5.c:447: magnitude = (Volts_at_Pin(QFP32_MUX_P2_6));
	mov	dpl,#0x13
	lcall	_Volts_at_Pin
;	C:\Users\Mahmoud\Desktop\ELEC291\Lab5\lab5.c:448: return (Volts_at_Pin(QFP32_MUX_P2_6));
	mov	dpl,#0x13
	ljmp	_Volts_at_Pin
;------------------------------------------------------------
;Allocation info for local variables in function 'main'
;------------------------------------------------------------
;buff                      Allocated with name '_main_buff_1_115'
;period2                   Allocated with name '_main_period2_1_115'
;timediff                  Allocated with name '_main_timediff_1_115'
;timediff2                 Allocated to registers r6 r7 r0 r1 
;phase_diff                Allocated with name '_main_phase_diff_1_115'
;phase_diff2               Allocated to registers r2 r3 r4 r5 
;mag1                      Allocated with name '_main_mag1_1_115'
;mag2                      Allocated with name '_main_mag2_1_115'
;magrms1                   Allocated with name '_main_magrms1_1_115'
;magrms2                   Allocated with name '_main_magrms2_1_115'
;------------------------------------------------------------
;	C:\Users\Mahmoud\Desktop\ELEC291\Lab5\lab5.c:455: void main (void)
;	-----------------------------------------
;	 function main
;	-----------------------------------------
_main:
;	C:\Users\Mahmoud\Desktop\ELEC291\Lab5\lab5.c:478: LCD_4BIT();
	lcall	_LCD_4BIT
;	C:\Users\Mahmoud\Desktop\ELEC291\Lab5\lab5.c:479: waitms(500); // Give PuTTy a chance to start before sending
	mov	dptr,#0x01F4
	lcall	_waitms
;	C:\Users\Mahmoud\Desktop\ELEC291\Lab5\lab5.c:480: printf("\x1b[2J"); // Clear screen using ANSI escape sequence.
	mov	a,#__str_5
	push	acc
	mov	a,#(__str_5 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
;	C:\Users\Mahmoud\Desktop\ELEC291\Lab5\lab5.c:485: __FILE__, __DATE__, __TIME__);
;	C:\Users\Mahmoud\Desktop\ELEC291\Lab5\lab5.c:484: "Compiled: %s, %s\n\n",
	mov	a,#__str_9
	push	acc
	mov	a,#(__str_9 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	mov	a,#__str_8
	push	acc
	mov	a,#(__str_8 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	mov	a,#__str_7
	push	acc
	mov	a,#(__str_7 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	mov	a,#__str_6
	push	acc
	mov	a,#(__str_6 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xf4
	mov	sp,a
;	C:\Users\Mahmoud\Desktop\ELEC291\Lab5\lab5.c:487: InitPinADC(2, 2); // Configure P2.2 as analog input
	mov	_InitPinADC_PARM_2,#0x02
	mov	dpl,#0x02
	lcall	_InitPinADC
;	C:\Users\Mahmoud\Desktop\ELEC291\Lab5\lab5.c:488: InitPinADC(2, 6); // Configure P2.3 as analog input
	mov	_InitPinADC_PARM_2,#0x06
	mov	dpl,#0x02
	lcall	_InitPinADC
;	C:\Users\Mahmoud\Desktop\ELEC291\Lab5\lab5.c:491: InitADC();
	lcall	_InitADC
;	C:\Users\Mahmoud\Desktop\ELEC291\Lab5\lab5.c:493: while(1)
L022005?:
;	C:\Users\Mahmoud\Desktop\ELEC291\Lab5\lab5.c:496: period2 = getperiod();
	lcall	_getperiod
	mov	_main_period2_1_115,dpl
	mov	(_main_period2_1_115 + 1),dph
	mov	(_main_period2_1_115 + 2),b
	mov	(_main_period2_1_115 + 3),a
;	C:\Users\Mahmoud\Desktop\ELEC291\Lab5\lab5.c:497: timediff = gettimediff();
	lcall	_gettimediff
	mov	_main_timediff_1_115,dpl
	mov	(_main_timediff_1_115 + 1),dph
	mov	(_main_timediff_1_115 + 2),b
	mov	(_main_timediff_1_115 + 3),a
;	C:\Users\Mahmoud\Desktop\ELEC291\Lab5\lab5.c:498: mag1 = get_mag1(period2*1000.0/4.0);
	push	_main_period2_1_115
	push	(_main_period2_1_115 + 1)
	push	(_main_period2_1_115 + 2)
	push	(_main_period2_1_115 + 3)
	mov	dptr,#0x0000
	mov	b,#0x7A
	mov	a,#0x44
	lcall	___fsmul
	mov	r6,dpl
	mov	r7,dph
	mov	r0,b
	mov	r1,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	clr	a
	push	acc
	push	acc
	mov	a,#0x80
	push	acc
	mov	a,#0x40
	push	acc
	mov	dpl,r6
	mov	dph,r7
	mov	b,r0
	mov	a,r1
	lcall	___fsdiv
	mov	r6,dpl
	mov	r7,dph
	mov	r0,b
	mov	r1,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	dpl,r6
	mov	dph,r7
	mov	b,r0
	mov	a,r1
	push	ar6
	push	ar7
	push	ar0
	push	ar1
	lcall	_get_mag1
	mov	_main_mag1_1_115,dpl
	mov	(_main_mag1_1_115 + 1),dph
	mov	(_main_mag1_1_115 + 2),b
	mov	(_main_mag1_1_115 + 3),a
	pop	ar1
	pop	ar0
	pop	ar7
	pop	ar6
;	C:\Users\Mahmoud\Desktop\ELEC291\Lab5\lab5.c:499: mag2 = get_mag2(period2*1000.0/4.0);
	mov	dpl,r6
	mov	dph,r7
	mov	b,r0
	mov	a,r1
	lcall	_get_mag2
	mov	_main_mag2_1_115,dpl
	mov	(_main_mag2_1_115 + 1),dph
	mov	(_main_mag2_1_115 + 2),b
	mov	(_main_mag2_1_115 + 3),a
;	C:\Users\Mahmoud\Desktop\ELEC291\Lab5\lab5.c:500: printf( "\rtimediff=%f ms    ", timediff*1000.0);
	push	_main_timediff_1_115
	push	(_main_timediff_1_115 + 1)
	push	(_main_timediff_1_115 + 2)
	push	(_main_timediff_1_115 + 3)
	mov	dptr,#0x0000
	mov	b,#0x7A
	mov	a,#0x44
	lcall	___fsmul
	mov	r6,dpl
	mov	r7,dph
	mov	r0,b
	mov	r1,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	push	ar6
	push	ar7
	push	ar0
	push	ar1
	mov	a,#__str_1
	push	acc
	mov	a,#(__str_1 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xf9
	mov	sp,a
;	C:\Users\Mahmoud\Desktop\ELEC291\Lab5\lab5.c:501: printf("\n");
	mov	a,#__str_2
	push	acc
	mov	a,#(__str_2 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
;	C:\Users\Mahmoud\Desktop\ELEC291\Lab5\lab5.c:502: magrms1 = mag1/1.41421356;
	mov	a,#0xF3
	push	acc
	mov	a,#0x04
	push	acc
	mov	a,#0xB5
	push	acc
	mov	a,#0x3F
	push	acc
	mov	dpl,_main_mag1_1_115
	mov	dph,(_main_mag1_1_115 + 1)
	mov	b,(_main_mag1_1_115 + 2)
	mov	a,(_main_mag1_1_115 + 3)
	lcall	___fsdiv
	mov	_main_magrms1_1_115,dpl
	mov	(_main_magrms1_1_115 + 1),dph
	mov	(_main_magrms1_1_115 + 2),b
	mov	(_main_magrms1_1_115 + 3),a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
;	C:\Users\Mahmoud\Desktop\ELEC291\Lab5\lab5.c:503: magrms2 = mag2/1.41421356;
	mov	a,#0xF3
	push	acc
	mov	a,#0x04
	push	acc
	mov	a,#0xB5
	push	acc
	mov	a,#0x3F
	push	acc
	mov	dpl,_main_mag2_1_115
	mov	dph,(_main_mag2_1_115 + 1)
	mov	b,(_main_mag2_1_115 + 2)
	mov	a,(_main_mag2_1_115 + 3)
	lcall	___fsdiv
	mov	_main_magrms2_1_115,dpl
	mov	(_main_magrms2_1_115 + 1),dph
	mov	(_main_magrms2_1_115 + 2),b
	mov	(_main_magrms2_1_115 + 3),a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
;	C:\Users\Mahmoud\Desktop\ELEC291\Lab5\lab5.c:504: printf( "\rmag1 magrms1 = %f  %f", mag1,magrms1);
	push	_main_magrms1_1_115
	push	(_main_magrms1_1_115 + 1)
	push	(_main_magrms1_1_115 + 2)
	push	(_main_magrms1_1_115 + 3)
	push	_main_mag1_1_115
	push	(_main_mag1_1_115 + 1)
	push	(_main_mag1_1_115 + 2)
	push	(_main_mag1_1_115 + 3)
	mov	a,#__str_10
	push	acc
	mov	a,#(__str_10 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xf5
	mov	sp,a
;	C:\Users\Mahmoud\Desktop\ELEC291\Lab5\lab5.c:505: printf("\n");
	mov	a,#__str_2
	push	acc
	mov	a,#(__str_2 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
;	C:\Users\Mahmoud\Desktop\ELEC291\Lab5\lab5.c:506: printf( "\rmag2 magrms2 = %f  %f", mag2,magrms2);
	push	_main_magrms2_1_115
	push	(_main_magrms2_1_115 + 1)
	push	(_main_magrms2_1_115 + 2)
	push	(_main_magrms2_1_115 + 3)
	push	_main_mag2_1_115
	push	(_main_mag2_1_115 + 1)
	push	(_main_mag2_1_115 + 2)
	push	(_main_mag2_1_115 + 3)
	mov	a,#__str_11
	push	acc
	mov	a,#(__str_11 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xf5
	mov	sp,a
;	C:\Users\Mahmoud\Desktop\ELEC291\Lab5\lab5.c:507: printf("\n");
	mov	a,#__str_2
	push	acc
	mov	a,#(__str_2 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
;	C:\Users\Mahmoud\Desktop\ELEC291\Lab5\lab5.c:508: phase_diff = timediff*(360.0/period2);
	push	_main_period2_1_115
	push	(_main_period2_1_115 + 1)
	push	(_main_period2_1_115 + 2)
	push	(_main_period2_1_115 + 3)
	mov	dptr,#0x0000
	mov	b,#0xB4
	mov	a,#0x43
	lcall	___fsdiv
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	mov	r5,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	push	ar2
	push	ar3
	push	ar4
	push	ar5
	push	ar2
	push	ar3
	push	ar4
	push	ar5
	mov	dpl,_main_timediff_1_115
	mov	dph,(_main_timediff_1_115 + 1)
	mov	b,(_main_timediff_1_115 + 2)
	mov	a,(_main_timediff_1_115 + 3)
	lcall	___fsmul
	mov	_main_phase_diff_1_115,dpl
	mov	(_main_phase_diff_1_115 + 1),dph
	mov	(_main_phase_diff_1_115 + 2),b
	mov	(_main_phase_diff_1_115 + 3),a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
;	C:\Users\Mahmoud\Desktop\ELEC291\Lab5\lab5.c:509: if (phase_diff < 0.1)
	mov	a,#0xCD
	push	acc
	mov	a,#0xCC
	push	acc
	push	acc
	mov	a,#0x3D
	push	acc
	mov	dpl,_main_phase_diff_1_115
	mov	dph,(_main_phase_diff_1_115 + 1)
	mov	b,(_main_phase_diff_1_115 + 2)
	mov	a,(_main_phase_diff_1_115 + 3)
	lcall	___fslt
	mov	r6,dpl
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	pop	ar5
	pop	ar4
	pop	ar3
	pop	ar2
	mov	a,r6
	jnz	L022011?
	ljmp	L022002?
L022011?:
;	C:\Users\Mahmoud\Desktop\ELEC291\Lab5\lab5.c:511: timediff2 = gettimediff2();
	push	ar2
	push	ar3
	push	ar4
	push	ar5
	lcall	_gettimediff2
	mov	r6,dpl
	mov	r7,dph
	mov	r0,b
	mov	r1,a
	pop	ar5
	pop	ar4
	pop	ar3
	pop	ar2
;	C:\Users\Mahmoud\Desktop\ELEC291\Lab5\lab5.c:512: phase_diff2 = timediff2*(360.0/period2);
	push	ar6
	push	ar7
	push	ar0
	push	ar1
	push	ar2
	push	ar3
	push	ar4
	push	ar5
	mov	dpl,r6
	mov	dph,r7
	mov	b,r0
	mov	a,r1
	lcall	___fsmul
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	mov	r5,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
;	C:\Users\Mahmoud\Desktop\ELEC291\Lab5\lab5.c:513: sprintf (buff,"phase %5.2f deg\r", (360.0-phase_diff2));
	push	ar2
	push	ar3
	push	ar4
	push	ar5
	mov	dptr,#0x0000
	mov	b,#0xB4
	mov	a,#0x43
	lcall	___fssub
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	mov	r5,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	push	ar2
	push	ar3
	push	ar4
	push	ar5
	mov	a,#__str_12
	push	acc
	mov	a,#(__str_12 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	mov	a,#_main_buff_1_115
	push	acc
	mov	a,#(_main_buff_1_115 >> 8)
	push	acc
	mov	a,#0x40
	push	acc
	lcall	_sprintf
	mov	a,sp
	add	a,#0xf6
	mov	sp,a
;	C:\Users\Mahmoud\Desktop\ELEC291\Lab5\lab5.c:514: waitms(500);
	mov	dptr,#0x01F4
	lcall	_waitms
;	C:\Users\Mahmoud\Desktop\ELEC291\Lab5\lab5.c:515: LCDprint(buff, 2, 1);
	mov	_LCDprint_PARM_2,#0x02
	setb	_LCDprint_PARM_3
	mov	dptr,#_main_buff_1_115
	mov	b,#0x40
	lcall	_LCDprint
;	C:\Users\Mahmoud\Desktop\ELEC291\Lab5\lab5.c:516: printf( "\rtimediff2222222=%f ms    ", timediff2*1000.0);
	mov	dptr,#0x0000
	mov	b,#0x7A
	mov	a,#0x44
	lcall	___fsmul
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	mov	r5,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	push	ar2
	push	ar3
	push	ar4
	push	ar5
	mov	a,#__str_13
	push	acc
	mov	a,#(__str_13 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xf9
	mov	sp,a
;	C:\Users\Mahmoud\Desktop\ELEC291\Lab5\lab5.c:517: printf("\n");
	mov	a,#__str_2
	push	acc
	mov	a,#(__str_2 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
;	C:\Users\Mahmoud\Desktop\ELEC291\Lab5\lab5.c:518: printf( "\rphase diff2222222=%f degrees ", phase_diff);
	push	_main_phase_diff_1_115
	push	(_main_phase_diff_1_115 + 1)
	push	(_main_phase_diff_1_115 + 2)
	push	(_main_phase_diff_1_115 + 3)
	mov	a,#__str_14
	push	acc
	mov	a,#(__str_14 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xf9
	mov	sp,a
;	C:\Users\Mahmoud\Desktop\ELEC291\Lab5\lab5.c:519: printf("\n");
	mov	a,#__str_2
	push	acc
	mov	a,#(__str_2 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
	sjmp	L022003?
L022002?:
;	C:\Users\Mahmoud\Desktop\ELEC291\Lab5\lab5.c:522: sprintf (buff,"phase %5.2f degrees\r", phase_diff);
	push	_main_phase_diff_1_115
	push	(_main_phase_diff_1_115 + 1)
	push	(_main_phase_diff_1_115 + 2)
	push	(_main_phase_diff_1_115 + 3)
	mov	a,#__str_15
	push	acc
	mov	a,#(__str_15 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	mov	a,#_main_buff_1_115
	push	acc
	mov	a,#(_main_buff_1_115 >> 8)
	push	acc
	mov	a,#0x40
	push	acc
	lcall	_sprintf
	mov	a,sp
	add	a,#0xf6
	mov	sp,a
;	C:\Users\Mahmoud\Desktop\ELEC291\Lab5\lab5.c:523: waitms(500);
	mov	dptr,#0x01F4
	lcall	_waitms
;	C:\Users\Mahmoud\Desktop\ELEC291\Lab5\lab5.c:524: LCDprint(buff, 2, 1);
	mov	_LCDprint_PARM_2,#0x02
	setb	_LCDprint_PARM_3
	mov	dptr,#_main_buff_1_115
	mov	b,#0x40
	lcall	_LCDprint
;	C:\Users\Mahmoud\Desktop\ELEC291\Lab5\lab5.c:525: printf( "\rphase= %5.2f degrees ", phase_diff);
	push	_main_phase_diff_1_115
	push	(_main_phase_diff_1_115 + 1)
	push	(_main_phase_diff_1_115 + 2)
	push	(_main_phase_diff_1_115 + 3)
	mov	a,#__str_16
	push	acc
	mov	a,#(__str_16 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xf9
	mov	sp,a
;	C:\Users\Mahmoud\Desktop\ELEC291\Lab5\lab5.c:526: printf("\n");
	mov	a,#__str_2
	push	acc
	mov	a,#(__str_2 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
L022003?:
;	C:\Users\Mahmoud\Desktop\ELEC291\Lab5\lab5.c:531: sprintf (buff,"V1 %4.2f V2 %4.2fV\r", magrms1, magrms2);
	push	_main_magrms2_1_115
	push	(_main_magrms2_1_115 + 1)
	push	(_main_magrms2_1_115 + 2)
	push	(_main_magrms2_1_115 + 3)
	push	_main_magrms1_1_115
	push	(_main_magrms1_1_115 + 1)
	push	(_main_magrms1_1_115 + 2)
	push	(_main_magrms1_1_115 + 3)
	mov	a,#__str_17
	push	acc
	mov	a,#(__str_17 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	mov	a,#_main_buff_1_115
	push	acc
	mov	a,#(_main_buff_1_115 >> 8)
	push	acc
	mov	a,#0x40
	push	acc
	lcall	_sprintf
	mov	a,sp
	add	a,#0xf2
	mov	sp,a
;	C:\Users\Mahmoud\Desktop\ELEC291\Lab5\lab5.c:532: waitms(500);
	mov	dptr,#0x01F4
	lcall	_waitms
;	C:\Users\Mahmoud\Desktop\ELEC291\Lab5\lab5.c:533: LCDprint(buff, 1, 1);
	mov	_LCDprint_PARM_2,#0x01
	setb	_LCDprint_PARM_3
	mov	dptr,#_main_buff_1_115
	mov	b,#0x40
	lcall	_LCDprint
	ljmp	L022005?
	rseg R_CSEG

	rseg R_XINIT

	rseg R_CONST
__str_0:
	db 0x0D
	db 'T=%f ms    '
	db 0x00
__str_1:
	db 0x0D
	db 'timediff=%f ms    '
	db 0x00
__str_2:
	db 0x0A
	db 0x00
__str_3:
	db ' float us = %f'
	db 0x00
__str_4:
	db ' us = %d'
	db 0x00
__str_5:
	db 0x1B
	db '[2J'
	db 0x00
__str_6:
	db 'ADC test program'
	db 0x0A
	db 'File: %s'
	db 0x0A
	db 'Compiled: %s, %s'
	db 0x0A
	db 0x0A
	db 0x00
__str_7:
	db 'C:'
	db 0x5C
	db 'Users'
	db 0x5C
	db 'Mahmoud'
	db 0x5C
	db 'Desktop'
	db 0x5C
	db 'ELEC291'
	db 0x5C
	db 'Lab5'
	db 0x5C
	db 'lab5.c'
	db 0x00
__str_8:
	db 'Mar 12 2021'
	db 0x00
__str_9:
	db '17:13:10'
	db 0x00
__str_10:
	db 0x0D
	db 'mag1 magrms1 = %f  %f'
	db 0x00
__str_11:
	db 0x0D
	db 'mag2 magrms2 = %f  %f'
	db 0x00
__str_12:
	db 'phase %5.2f deg'
	db 0x0D
	db 0x00
__str_13:
	db 0x0D
	db 'timediff2222222=%f ms    '
	db 0x00
__str_14:
	db 0x0D
	db 'phase diff2222222=%f degrees '
	db 0x00
__str_15:
	db 'phase %5.2f degrees'
	db 0x0D
	db 0x00
__str_16:
	db 0x0D
	db 'phase= %5.2f degrees '
	db 0x00
__str_17:
	db 'V1 %4.2f V2 %4.2fV'
	db 0x0D
	db 0x00

	CSEG

end

opt subtitle "HI-TECH Software Omniscient Code Generator (Lite mode) build 7503"

opt pagewidth 120

	opt lm

	processor	16F877A
clrc	macro
	bcf	3,0
	endm
clrz	macro
	bcf	3,2
	endm
setc	macro
	bsf	3,0
	endm
setz	macro
	bsf	3,2
	endm
skipc	macro
	btfss	3,0
	endm
skipz	macro
	btfss	3,2
	endm
skipnc	macro
	btfsc	3,0
	endm
skipnz	macro
	btfsc	3,2
	endm
indf	equ	0
indf0	equ	0
pc	equ	2
pcl	equ	2
status	equ	3
fsr	equ	4
fsr0	equ	4
c	equ	1
z	equ	0
pclath	equ	10
	FNCALL	_main,_angle
	FNCALL	_angle,_display
	FNCALL	_angle,_delay
	FNROOT	_main
	global	_PORTB
psect	text72,local,class=CODE,delta=2
global __ptext72
__ptext72:
_PORTB	set	6
	global	_PORTC
_PORTC	set	7
	global	_TRISB
_TRISB	set	134
	global	_TRISC
_TRISC	set	135
	file	"stepperlcd.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

psect cinit,class=CODE,delta=2
global end_of_initialization

;End of C runtime variable initialization code

end_of_initialization:
clrf status
ljmp _main	;jump to C main() function
psect	cstackCOMMON,class=COMMON,space=1
global __pcstackCOMMON
__pcstackCOMMON:
	global	?_angle
?_angle:	; 0 bytes @ 0x0
	global	?_display
?_display:	; 0 bytes @ 0x0
	global	??_display
??_display:	; 0 bytes @ 0x0
	global	?_delay
?_delay:	; 0 bytes @ 0x0
	global	?_main
?_main:	; 0 bytes @ 0x0
	global	display@num
display@num:	; 1 bytes @ 0x0
	global	delay@a
delay@a:	; 2 bytes @ 0x0
	ds	2
	global	??_delay
??_delay:	; 0 bytes @ 0x2
	ds	1
	global	delay@i
delay@i:	; 1 bytes @ 0x3
	ds	1
	global	??_angle
??_angle:	; 0 bytes @ 0x4
	ds	1
	global	angle@i
angle@i:	; 1 bytes @ 0x5
	ds	1
	global	??_main
??_main:	; 0 bytes @ 0x6
;;Data sizes: Strings 0, constant 0, data 0, bss 0, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14      6       6
;; BANK0           80      0       0
;; BANK1           80      0       0
;; BANK3           96      0       0
;; BANK2           96      0       0

;;
;; Pointer list with targets:



;;
;; Critical Paths under _main in COMMON
;;
;;   _main->_angle
;;   _angle->_delay
;;
;; Critical Paths under _main in BANK0
;;
;;   None.
;;
;; Critical Paths under _main in BANK1
;;
;;   None.
;;
;; Critical Paths under _main in BANK3
;;
;;   None.
;;
;; Critical Paths under _main in BANK2
;;
;;   None.

;;
;;Main: autosize = 0, tempsize = 0, incstack = 0, save=0
;;

;;
;;Call Graph Tables:
;;
;; ---------------------------------------------------------------------------------
;; (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;; ---------------------------------------------------------------------------------
;; (0) _main                                                 0     0      0     120
;;                              _angle
;; ---------------------------------------------------------------------------------
;; (1) _angle                                                2     2      0     120
;;                                              4 COMMON     2     2      0
;;                            _display
;;                              _delay
;; ---------------------------------------------------------------------------------
;; (2) _delay                                                4     2      2      60
;;                                              0 COMMON     4     2      2
;; ---------------------------------------------------------------------------------
;; (2) _display                                              1     1      0      15
;;                                              0 COMMON     1     1      0
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 2
;; ---------------------------------------------------------------------------------

;; Call Graph Graphs:

;; _main (ROOT)
;;   _angle
;;     _display
;;     _delay
;;

;; Address spaces:

;;Name               Size   Autos  Total    Cost      Usage
;;BITCOMMON            E      0       0       0        0.0%
;;EEDATA             100      0       0       0        0.0%
;;NULL                 0      0       0       0        0.0%
;;CODE                 0      0       0       0        0.0%
;;COMMON               E      6       6       1       42.9%
;;BITSFR0              0      0       0       1        0.0%
;;SFR0                 0      0       0       1        0.0%
;;BITSFR1              0      0       0       2        0.0%
;;SFR1                 0      0       0       2        0.0%
;;STACK                0      0       2       2        0.0%
;;ABS                  0      0       0       3        0.0%
;;BITBANK0            50      0       0       4        0.0%
;;BITSFR3              0      0       0       4        0.0%
;;SFR3                 0      0       0       4        0.0%
;;BANK0               50      0       0       5        0.0%
;;BITSFR2              0      0       0       5        0.0%
;;SFR2                 0      0       0       5        0.0%
;;BITBANK1            50      0       0       6        0.0%
;;BANK1               50      0       0       7        0.0%
;;BITBANK3            60      0       0       8        0.0%
;;BANK3               60      0       0       9        0.0%
;;BITBANK2            60      0       0      10        0.0%
;;BANK2               60      0       0      11        0.0%
;;DATA                 0      0       0      12        0.0%

	global	_main
psect	maintext,global,class=CODE,delta=2
global __pmaintext
__pmaintext:

;; *************** function _main *****************
;; Defined at:
;;		line 7 in file "C:\Users\HP\OneDrive\Documents\PIC\STEPPER LCD\picstlcd.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 17F/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_angle
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"C:\Users\HP\OneDrive\Documents\PIC\STEPPER LCD\picstlcd.c"
	line	7
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 6
; Regs used in _main: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	8
	
l1899:	
;picstlcd.c: 8: TRISB=0x00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(134)^080h	;volatile
	line	9
;picstlcd.c: 9: TRISC=0x00;
	clrf	(135)^080h	;volatile
	goto	l1901
	line	10
;picstlcd.c: 10: while(1)
	
l691:	
	line	12
	
l1901:	
;picstlcd.c: 11: {
;picstlcd.c: 12: PORTC=0X01;
	movlw	(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(7)	;volatile
	line	13
	
l1903:	
;picstlcd.c: 13: angle();
	fcall	_angle
	line	14
	
l1905:	
;picstlcd.c: 14: PORTC=0x03;
	movlw	(03h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(7)	;volatile
	line	15
	
l1907:	
;picstlcd.c: 15: angle();
	fcall	_angle
	line	16
	
l1909:	
;picstlcd.c: 16: PORTC=0x02;
	movlw	(02h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(7)	;volatile
	line	17
	
l1911:	
;picstlcd.c: 17: angle();
	fcall	_angle
	line	18
	
l1913:	
;picstlcd.c: 18: PORTC=0x06;
	movlw	(06h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(7)	;volatile
	line	19
	
l1915:	
;picstlcd.c: 19: angle();
	fcall	_angle
	line	20
	
l1917:	
;picstlcd.c: 20: PORTC=0x04;
	movlw	(04h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(7)	;volatile
	line	21
	
l1919:	
;picstlcd.c: 21: angle();
	fcall	_angle
	line	22
	
l1921:	
;picstlcd.c: 22: PORTC=0x0C;
	movlw	(0Ch)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(7)	;volatile
	line	23
	
l1923:	
;picstlcd.c: 23: angle();
	fcall	_angle
	line	24
	
l1925:	
;picstlcd.c: 24: PORTC=0x08;
	movlw	(08h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(7)	;volatile
	line	25
	
l1927:	
;picstlcd.c: 25: angle();
	fcall	_angle
	line	26
	
l1929:	
;picstlcd.c: 26: PORTC=0x09;
	movlw	(09h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(7)	;volatile
	line	27
	
l1931:	
;picstlcd.c: 27: angle();
	fcall	_angle
	goto	l1901
	line	28
	
l692:	
	line	10
	goto	l1901
	
l693:	
	line	28
	
l694:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,88
	global	_angle
psect	text73,local,class=CODE,delta=2
global __ptext73
__ptext73:

;; *************** function _angle *****************
;; Defined at:
;;		line 30 in file "C:\Users\HP\OneDrive\Documents\PIC\STEPPER LCD\picstlcd.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  i               1    5[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         2       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_display
;;		_delay
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text73
	file	"C:\Users\HP\OneDrive\Documents\PIC\STEPPER LCD\picstlcd.c"
	line	30
	global	__size_of_angle
	__size_of_angle	equ	__end_of_angle-_angle
	
_angle:	
	opt	stack 6
; Regs used in _angle: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	32
	
l1885:	
;picstlcd.c: 31: unsigned char i;
;picstlcd.c: 32: for(i=0;i<6;i++)
	clrf	(angle@i)
	
l1887:	
	movlw	(06h)
	subwf	(angle@i),w
	skipc
	goto	u2181
	goto	u2180
u2181:
	goto	l1891
u2180:
	goto	l699
	
l1889:	
	goto	l699
	line	33
	
l697:	
	line	34
	
l1891:	
;picstlcd.c: 33: {
;picstlcd.c: 34: display(i);
	movf	(angle@i),w
	fcall	_display
	line	35
	
l1893:	
;picstlcd.c: 35: delay(100);
	movlw	low(064h)
	movwf	(?_delay)
	movlw	high(064h)
	movwf	((?_delay))+1
	fcall	_delay
	line	32
	
l1895:	
	movlw	(01h)
	movwf	(??_angle+0)+0
	movf	(??_angle+0)+0,w
	addwf	(angle@i),f
	
l1897:	
	movlw	(06h)
	subwf	(angle@i),w
	skipc
	goto	u2191
	goto	u2190
u2191:
	goto	l1891
u2190:
	goto	l699
	
l698:	
	line	36
	
l699:	
	return
	opt stack 0
GLOBAL	__end_of_angle
	__end_of_angle:
;; =============== function _angle ends ============

	signat	_angle,88
	global	_delay
psect	text74,local,class=CODE,delta=2
global __ptext74
__ptext74:

;; *************** function _delay *****************
;; Defined at:
;;		line 38 in file "C:\Users\HP\OneDrive\Documents\PIC\STEPPER LCD\picstlcd.c"
;; Parameters:    Size  Location     Type
;;  a               2    0[COMMON] unsigned int 
;; Auto vars:     Size  Location     Type
;;  i               1    3[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         2       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         4       0       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_angle
;; This function uses a non-reentrant model
;;
psect	text74
	file	"C:\Users\HP\OneDrive\Documents\PIC\STEPPER LCD\picstlcd.c"
	line	38
	global	__size_of_delay
	__size_of_delay	equ	__end_of_delay-_delay
	
_delay:	
	opt	stack 6
; Regs used in _delay: [wreg+status,2+status,0]
	line	40
	
l1101:	
;picstlcd.c: 39: unsigned char i;
;picstlcd.c: 40: for(;a>0;a--)
	movf	((delay@a+1)),w
	iorwf	((delay@a)),w
	skipz
	goto	u11
	goto	u10
u11:
	goto	l1105
u10:
	goto	l706
	
l1103:	
	goto	l706
	line	41
	
l702:	
	line	42
	
l1105:	
;picstlcd.c: 41: {
;picstlcd.c: 42: for(i=250;i>0;i--);
	movlw	(0FAh)
	movwf	(??_delay+0)+0
	movf	(??_delay+0)+0,w
	movwf	(delay@i)
	
l1107:	
	movf	(delay@i),f
	skipz
	goto	u21
	goto	u20
u21:
	goto	l1111
u20:
	goto	l1115
	
l1109:	
	goto	l1115
	
l704:	
	
l1111:	
	movlw	low(01h)
	subwf	(delay@i),f
	
l1113:	
	movf	(delay@i),f
	skipz
	goto	u31
	goto	u30
u31:
	goto	l1111
u30:
	goto	l1115
	
l705:	
	line	40
	
l1115:	
	movlw	low(01h)
	subwf	(delay@a),f
	movlw	high(01h)
	skipc
	decf	(delay@a+1),f
	subwf	(delay@a+1),f
	
l1117:	
	movf	((delay@a+1)),w
	iorwf	((delay@a)),w
	skipz
	goto	u41
	goto	u40
u41:
	goto	l1105
u40:
	goto	l706
	
l703:	
	line	43
	
l706:	
	return
	opt stack 0
GLOBAL	__end_of_delay
	__end_of_delay:
;; =============== function _delay ends ============

	signat	_delay,4216
	global	_display
psect	text75,local,class=CODE,delta=2
global __ptext75
__ptext75:

;; *************** function _display *****************
;; Defined at:
;;		line 45 in file "C:\Users\HP\OneDrive\Documents\PIC\STEPPER LCD\picstlcd.c"
;; Parameters:    Size  Location     Type
;;  num             1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  num             1    0[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         1       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_angle
;; This function uses a non-reentrant model
;;
psect	text75
	file	"C:\Users\HP\OneDrive\Documents\PIC\STEPPER LCD\picstlcd.c"
	line	45
	global	__size_of_display
	__size_of_display	equ	__end_of_display-_display
	
_display:	
	opt	stack 6
; Regs used in _display: [wreg-fsr0h+status,2+status,0]
;display@num stored from wreg
	movwf	(display@num)
	line	46
	
l1085:	
;picstlcd.c: 46: switch(num){
	goto	l1099
	line	47
;picstlcd.c: 47: case 1:PORTB=0x06;
	
l710:	
	
l1087:	
	movlw	(06h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(6)	;volatile
	line	48
;picstlcd.c: 48: break;
	goto	l716
	line	49
;picstlcd.c: 49: case 2:PORTB=0x5B;
	
l712:	
	
l1089:	
	movlw	(05Bh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(6)	;volatile
	line	50
;picstlcd.c: 50: break;
	goto	l716
	line	51
;picstlcd.c: 51: case 3:PORTB=0x4F;
	
l713:	
	
l1091:	
	movlw	(04Fh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(6)	;volatile
	line	52
;picstlcd.c: 52: break;
	goto	l716
	line	53
;picstlcd.c: 53: case 4:PORTB=0x66;
	
l714:	
	
l1093:	
	movlw	(066h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(6)	;volatile
	line	54
;picstlcd.c: 54: break;
	goto	l716
	line	55
;picstlcd.c: 55: case 5:PORTB=0x6D;
	
l715:	
	
l1095:	
	movlw	(06Dh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(6)	;volatile
	line	56
;picstlcd.c: 56: break;
	goto	l716
	line	57
	
l1097:	
;picstlcd.c: 57: }}
	goto	l716
	line	46
	
l709:	
	
l1099:	
	movf	(display@num),w
	; Switch size 1, requested type "space"
; Number of cases is 5, Range of values is 1 to 5
; switch strategies available:
; Name         Instructions Cycles
; simple_byte           16     9 (average)
; direct_byte           26    11 (fixed)
; jumptable            263     9 (fixed)
;	Chosen strategy is simple_byte

	opt asmopt_off
	xorlw	1^0	; case 1
	skipnz
	goto	l1087
	xorlw	2^1	; case 2
	skipnz
	goto	l1089
	xorlw	3^2	; case 3
	skipnz
	goto	l1091
	xorlw	4^3	; case 4
	skipnz
	goto	l1093
	xorlw	5^4	; case 5
	skipnz
	goto	l1095
	goto	l716
	opt asmopt_on

	line	57
	
l711:	
	
l716:	
	return
	opt stack 0
GLOBAL	__end_of_display
	__end_of_display:
;; =============== function _display ends ============

	signat	_display,4216
psect	text76,local,class=CODE,delta=2
global __ptext76
__ptext76:
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end

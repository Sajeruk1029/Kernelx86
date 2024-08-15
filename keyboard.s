.FILE	"keyboard.s"

	.TEXT

		.GLOBL	_keyboardHandler
		.TYPE	_keyboardHandler, @function

		.EXTERN	_writePort
		.EXTERN	_readPort

		.EXTERN	_position

		_keyboardHandler:
			.CODE32

				PUSHL	%EBP
				MOVL	%ESP, %EBP

				PUSHA

				MOVL	$0x00, %EAX

				PUSHL	$0x20
				PUSHL	$0x20
				CALLL	_writePort

				ADDL	$0x08, %ESP

				PUSHL	$0x64
				CALLL	_readPort

				ADDL	$0x04, %ESP

				ANDL	$0x01, %EAX
				CMPL	$0x00, %EAX
				JE	.LCEndEnter

				PUSHL	$0x60
				CALLL	_readPort

				ADDL	$0x04, %ESP

				CMPB	$0x00, %AL
				JE	.LCEndEnter

				LEAL	.ASCII, %EBX
				XLAT

				CMPB	$0x00, %AL
				JE	.LCEndEnter

				MOVB	$0x05, %AH

				MOVL	$_position, %EBX

				MOVL	(%EBX), %EBX

				MOVW	%AX, (%EBX)

				ADDL	$0x02, _position

				.LCEndEnter:

					POPA

					MOVL	%EBP, %ESP
					POPL	%EBP

					IRET

	.DATA

		.ASCII:
			.BYTE	0x1B	#	1
			.BYTE	'1'	#	2
			.BYTE	'2'	#	3
			.BYTE	'3'	#	4
			.BYTE	'4'	#	5
			.BYTE	'5'	#	6
			.BYTE	'6'	#	7
			.BYTE	'7'	#	8
			.BYTE	'8'	#	9
			.BYTE	'9'	#	10
			.BYTE	'0'	#	11
			.BYTE	'-'	#	12
			.BYTE	'='	#	13
			.BYTE	0x08	#	14
			.BYTE	0x09	#	15
			.BYTE	'q'	#	16
			.BYTE	'w'	#	17
			.BYTE	'e'	#	18
			.BYTE	'r'	#	19
			.BYTE	't'	#	20
			.BYTE	'y'	#	21
			.BYTE	'u'	#	22
			.BYTE	'i'	#	23
			.BYTE	'o'	#	24
			.BYTE	'p'	#	25
			.BYTE	'['	#	26
			.BYTE	']'	#	27
			.BYTE	0x0A	#	28[Enter / Num Enter]
			.BYTE	0x00	#	29[Ctrl Left / Ctrl Right]!
			.BYTE	'a'	#	30
			.BYTE	's'	#	31
			.BYTE	'd'	#	32
			.BYTE	'f'	#	33
			.BYTE	'g'	#	34
			.BYTE	'h'	#	35
			.BYTE	'j'	#	36
			.BYTE	'k'	#	37
			.BYTE	'l'	#	38
			.BYTE	';'	#	39
			.BYTE	0x22	#	40
			.BYTE	'~'	#	41
			.BYTE	0x00	#	42[Shift Left]!
			.BYTE	'\'	#	43
			.BYTE	'z'	#	44
			.BYTE	'x'	#	45
			.BYTE	'c'	#	46
			.BYTE	'v'	#	47
			.BYTE	'b'	#	48
			.BYTE	'n'	#	49
			.BYTE	'm'	#	50
			.BYTE	'<'	#	51
			.BYTE	'>'	#	52
			.BYTE	'?'	#	53
			.BYTE	0x00	#	54[Shift Right]!
			.BYTE	'*'	#	55
			.BYTE	0x00	#	56[Alt Left / Alt Right]!
			.BYTE	0x20	#	57
			.BYTE	0x00	#	58[Caps Lock]!
			.BYTE	0x00	#	59[F1]!
			.BYTE	0x00	#	60[F2]!
			.BYTE	0x00	#	61[F3]!
			.BYTE	0x00	#	62[F4]!
			.BYTE	0x00	#	63[F5]!
			.BYTE	0x00	#	64[F6]!
			.BYTE	0x00	#	65[F7]!
			.BYTE	0x00	#	66[F8]!
			.BYTE	0x00	#	67[F9]!
			.BYTE	0x00	#	68[F10]!
			.BYTE	0x00	#	69[Num Lock]!
			.BYTE	0x00	#	70[Scroll Lock]!
			.BYTE	'7'	#	71
			.BYTE	'8'	#	72
			.BYTE	'9'	#	73
			.BYTE	'-'	#	74
			.BYTE	'4'	#	75
			.BYTE	'5'	#	76
			.BYTE	'6'	#	77
			.BYTE	'+'	#	78	
			.BYTE	'1'	#	79
			.BYTE	'2'	#	80
			.BYTE	'3'	#	81
			.BYTE	'0'	#	82
			.BYTE	'.'	#	83
			.BYTE	0x00	#	84[F11]!
			.BYTE	0x00	#	85[F12]!
			.BYTE	0x00	#	86[Num Enter 28]?
			.BYTE	0x00	#	87[Ctrl Right 29]?
			.BYTE	'//'	#	88[Num Divide 53]!
			.BYTE	0x00	#	89[Alt Right 56]?
			.BYTE	0x00	#	90[Win Left]!
			.BYTE	0x00	#	91[Win Right]!
			.BYTE	0x00	#	92[Applications]!
			.BYTE	0x00	#	93[Power]!
			.BYTE	0x00	#	94[Sleep]!
			.BYTE	0x00	#	95[Wake Up]!
			.BYTE	0x00	#	96[Print Screen]!
			.BYTE	0x00	#	97[Home]!
			.BYTE	0x00	#	98[Arrow Up]!
			.BYTE	0x00	#	99[Page Up]!
			.BYTE	0x00	#	100[Arrow Left]!
			.BYTE	0x00	#	101[Arrow Right]!
			.BYTE	0x00	#	102[End]!
			.BYTE	0x00	#	103[Arrow Down]!
			.BYTE	0x00	#	104[Page Down]!
			.BYTE	0x00	#	105[Insert]!
			.BYTE	0x7F	#	106[Delete]
			.BYTE	0x00	#	107[Pause]!


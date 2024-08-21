.FILE	"keyboard.s"

	.TEXT

		.GLOBL	_keyboardHandler
		.TYPE	_keyboardHandler, @function

		.EXTERN	_writePort
		.EXTERN	_readPort

		.EXTERN	_printSymbol

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

				MOVB	$0x00, %AH

				PUSHL	$0x05
				PUSHL	%EAX
				CALLL	_printSymbol

				ADDL	$0x08, %ESP

				.LCEndEnter:

					POPA

					MOVL	%EBP, %ESP
					POPL	%EBP

					IRET

	.DATA

		.ASCII:
			.BYTE	0x1B	#	1
			.BYTE	0x00	#	2
			.BYTE	'1'	#	3
			.BYTE	'2'	#	4
			.BYTE	'3'	#	5
			.BYTE	'4'	#	6
			.BYTE	'5'	#	7
			.BYTE	'6'	#	8
			.BYTE	'7'	#	9
			.BYTE	'8'	#	10
			.BYTE	'9'	#	11
			.BYTE	'0'	#	12
			.BYTE	'-'	#	13
			.BYTE	'='	#	14
			.BYTE	0x08	#	15
			.BYTE	0x09	#	16
			.BYTE	'q'	#	17
			.BYTE	'w'	#	18
			.BYTE	'e'	#	19
			.BYTE	'r'	#	20
			.BYTE	't'	#	21
			.BYTE	'y'	#	22
			.BYTE	'u'	#	23
			.BYTE	'i'	#	24
			.BYTE	'o'	#	25
			.BYTE	'p'	#	26
			.BYTE	'['	#	27
			.BYTE	']'	#	28
			.BYTE	0x0A	#	29[Enter / Num Enter]
			.BYTE	0x00	#	30[Ctrl Left / Ctrl Right]!
			.BYTE	'a'	#	31
			.BYTE	's'	#	32
			.BYTE	'd'	#	33
			.BYTE	'f'	#	34
			.BYTE	'g'	#	35
			.BYTE	'h'	#	36
			.BYTE	'j'	#	37
			.BYTE	'k'	#	38
			.BYTE	'l'	#	39
			.BYTE	';'	#	40
			.BYTE	0x22	#	41
			.BYTE	'~'	#	42
			.BYTE	0x00	#	43[Shift Left]!
			.BYTE	'\'	#	44
			.BYTE	'z'	#	45
			.BYTE	'x'	#	46
			.BYTE	'c'	#	47
			.BYTE	'v'	#	48
			.BYTE	'b'	#	49
			.BYTE	'n'	#	50
			.BYTE	'm'	#	51
			.BYTE	'<'	#	52
			.BYTE	'>'	#	53
			.BYTE	'?'	#	54
			.BYTE	0x00	#	55[Shift Right]!
			.BYTE	'*'	#	56
			.BYTE	0x00	#	57[Alt Left / Alt Right]!
			.BYTE	0x20	#	58
			.BYTE	0x00	#	59[Caps Lock]!
			.BYTE	0x00	#	60[F1]!
			.BYTE	0x00	#	61[F2]!
			.BYTE	0x00	#	62[F3]!
			.BYTE	0x00	#	63[F4]!
			.BYTE	0x00	#	64[F5]!
			.BYTE	0x00	#	65[F6]!
			.BYTE	0x00	#	66[F7]!
			.BYTE	0x00	#	67[F8]!
			.BYTE	0x00	#	68[F9]!
			.BYTE	0x00	#	69[F10]!
			.BYTE	0x00	#	70[Num Lock]!
			.BYTE	0x00	#	71[Scroll Lock]!
			.BYTE	'7'	#	72
			.BYTE	'8'	#	73
			.BYTE	'9'	#	74
			.BYTE	'-'	#	75
			.BYTE	'4'	#	76
			.BYTE	'5'	#	77
			.BYTE	'6'	#	78
			.BYTE	'+'	#	79	
			.BYTE	'1'	#	80
			.BYTE	'2'	#	81
			.BYTE	'3'	#	82
			.BYTE	'0'	#	83
			.BYTE	'.'	#	84
			.BYTE	0x00	#	85[F11]!
			.BYTE	0x00	#	86[F12]!
			.BYTE	0x00	#	87[Num Enter 28]?
			.BYTE	0x00	#	88[Ctrl Right 29]?
			.BYTE	'//'	#	89[Num Divide 53]!
			.BYTE	0x00	#	90[Alt Right 56]?
			.BYTE	0x00	#	91[Win Left]!
			.BYTE	0x00	#	92[Win Right]!
			.BYTE	0x00	#	93[Applications]!
			.BYTE	0x00	#	94[Power]!
			.BYTE	0x00	#	95[Sleep]!
			.BYTE	0x00	#	96[Wake Up]!
			.BYTE	0x00	#	97[Print Screen]!
			.BYTE	0x00	#	98[Home]!
			.BYTE	0x00	#	99[Arrow Up]!
			.BYTE	0x00	#	100[Page Up]!
			.BYTE	0x00	#	101[Arrow Left]!
			.BYTE	0x00	#	102[Arrow Right]!
			.BYTE	0x00	#	103[End]!
			.BYTE	0x00	#	104[Arrow Down]!
			.BYTE	0x00	#	105[Page Down]!
			.BYTE	0x00	#	106[Insert]!
			.BYTE	0x7F	#	107[Delete]
			.BYTE	0x00	#	108[Pause]!


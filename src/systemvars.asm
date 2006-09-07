; $Id: systemvars.asm,v 1.34 2006/09/07 06:39:13 andete Exp $
;
; C-BIOS system variable declarations
;
; Copyright (c) 2002-2003 BouKiCHi.  All rights reserved.
; Copyright (c) 2003 Reikan.  All rights reserved.
; Copyright (c) 2004-2005 Maarten ter Huurne.  All rights reserved.
; Copyright (c) 2004 Manuel Bilderbeek.  All rights reserved.
; Copyright (c) 2004 Joost Yervante Damad.  All rights reserved.
; Copyright (c) 2004-2005 Albert Beevendorp.  All rights reserved.
; Copyright (c) 2005 Jussi Pitkänen.  All rights reserved.
;
; Redistribution and use in source and binary forms, with or without
; modification, are permitted provided that the following conditions
; are met:
; 1. Redistributions of source code must retain the above copyright
;    notice, this list of conditions and the following disclaimer.
; 2. Redistributions in binary form must reproduce the above copyright
;    notice, this list of conditions and the following disclaimer in the
;    documentation and/or other materials provided with the distribution.
;
; THIS SOFTWARE IS PROVIDED BY THE AUTHOR ``AS IS'' AND ANY EXPRESS OR
; IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES
; OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED.
; IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR ANY DIRECT, INDIRECT,
; INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT
; NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE,
; DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY
; THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
; (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF
; THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
;


;-------------------
; help function area
;-------------------
; Note: Functions defined in "main.asm" are disabled here.

; F380-F384: interslot read
;RDPRIM:         equ     $F380

; F385-F38B: interslot read
;WRPRIM:         equ     $F385

; F38C-F399: interslot call
;CLPRIM:         equ     $F38C

; F39A-F3AD: workarea for the DEF USR statement
; this area is initialized with the 10 times the value $475A, which gives
; the error 'Syntax Error'
USRTAB:         equ     $F39A

;----------------------
; screen parameter area
;----------------------

; F3AE: # of positions on a line in SCREEN 0 (ini:39)
LINL40:         equ     $F3AE

; F3AF: # of positions on a line in SCREEN 1 (ini:29)
LINL32:         equ     $F3AF

; F3B0: # of actually used positions in the current screenmodus (ini:39)
LINLEN:         equ     $F3B0

; F3B1: # of used lines on screen (ini:24)
CRTCNT:         equ     $F3B1

; F3B2: # of positions within a tabulator-column (ini:14)
CLMLST:         equ     $F3B2

; F3B3-F3B4: BASE(0): name table address for SCREEN 0 (ini:$0000)
; used to initialize NAMBAS when SCREEN 0 is activated
TXTNAM:         equ     $F3B3

; F3B5-F3B6: BASE(1): color table address for SCREEN 0, unused? (ini:$0000)
TXTCOL:         equ     $F3B5

; F3B7-F3B8: BASE(2): pattern table address for SCREEN 0 (ini:$0800)
; used to initialize CGPBAS when SCREEN 0 is activated
TXTCGP:         equ     $F3B7

; F3B9-F3BA: BASE(3): sprite attribute table address for SCREEN 0, unused (ini:$0000)
; used to initialize ATRBAS when SCREEN 0 is activated
TXTATR:         equ     $F3B9

; F3BB-F3BC: BASE(4): sprite pattern table address for SCREEN 0, unused (ini:$0000)
; used to initialize PATBAS when SCREEN 0 is activated
TXTPAT:         equ     $F3BB

; F3BD-F3BE: BASE(5): nametable address for SCREEN 1 (ini:$1800)
; used to initialize NAMBAS when SCREEN 1 is activated
T32NAM:         equ     $F3BD

; F3BF-F3C0: BASE(6): color table address for SCREEN 1 (ini:$2000)
T32COL:         equ     $F3BF

; F3C1-F3C2: BASE(7): pattern table address for SCREEN 1 (ini:$0000)
; used to initialize CGPBAS when SCREEN 1 is activated
T32CGP:         equ     $F3C1

; F3C3-F3C4: BASE(8): sprite attribute table address for SCREEN 1 (ini:$1B00)
; used to initialize ATRBAS when SCREEN 1 is activated
T32ATR:         equ     $F3C3

; F3C5-F3C6: BASE(9): sprite pattern table address for SCREEN 1 (ini:$0800)
; used to initialize PATBAS when SCREEN 1 is activated
T32PAT:         equ     $F3C5

; F3C7-F3C8: BASE(10): name table address for SCREEN 2 (ini:$1800)
; used to initialize NAMBAS when SCREEN 2 is activated
GRPNAM:         equ     $F3C7

; F3C9-F3CA: BASE(11): color table address for SCREEN 2 (ini:$2000)
GRPCOL:         equ     $F3C9           ; Screen2 Color

; F3CB-F3CC: BASE(12): pattern table address for SCREEN 2 (ini:$0000)
; used to initialize CGPBAS when SCREEN 2 is activated
GRPCGP:         equ     $F3CB

; F3CD-F3CE: BASE(13): sprite attribute table address for SCREEN 2 (ini:$1B00)
; used to initialize ATRBAS when SCREEN 2 is activated
GRPATR:         equ     $F3CD

; F3CF-F3D0: BASE(14): sprite pattern table address for SCREEN 2 (ini:$3800)
; used to initialize PATBAS when SCREEN 2 is activated
GRPPAT:         equ     $F3CF

; F3D1-F3D2: BASE(15): name table address for SCREEN 3 (ini:$0800)
; used to initialize NAMBAS when SCREEN 3 is activated
MLTNAM:         equ     $F3D1

; F3D3-F3D4: BASE(16): color table address for SCREEN 3 (ini:$0000)
; the color table is unused in SCREEN 3
MLTCOL:         equ     $F3D3

; F3D5-F3D6: BASE(17): pattern table address for SCREEN 3 (ini:$0000)
; used to initialize CGPBAS when SCREEN 3 is activated
MLTCGP:         equ     $F3D5

; F3D7-F3D8: BASE(18): sprite attribute table address for SCREEN 3 (ini:$1B00)
; used to initialize ATRBAS when SCREEN 3 is activated
MLTATR:         equ     $F3D7

; F3D9-F3DA: BASE(19): sprite pattern table address for SCREEN 3 (ini:$3800)
; used to initialize PATBAS when SCREEN 3 is activated
MLTPAT:         equ     $F3D9

; F3DB: keyclick when a key is pressed: 0: no, 1: yes (ini: 1)
; SCREEN ,,n will write to this address
CLIKSW:         equ     $F3DB

; F3DC: line where the cursor is located
; starts to count at 1 for the topmost line
CSRY:           equ     $F3DC

; F3DD: column where the cursor is located
; starts to count at 1 for the leftmost column
CSRX:           equ     $F3DD

; F3DE: function key definition shown: 0: no, -1: yes
; Note: MSX BIOS will mess up end-of-screen if this variable contains
;       something other than $00 or $FF.
CNSDFG:         equ     $F3DE

; F3DF-D3E6: storage for the last written value towards VDP registers 0 till 7
; this is needed because these registers are write only
RG0SAV:         equ     $F3DF
RG1SAV:         equ     $F3E0
RG2SAV:         equ     $F3E1
RG3SAV:         equ     $F3E2
RG4SAV:         equ     $F3E3
RG5SAV:         equ     $F3E4
RG6SAV:         equ     $F3E5
RG7SAV:         equ     $F3E6
; F3E7: last read value of VDP register 8
STATFL:         equ     $F3E7

; F3E8: information about the joystick and space bar
; 7 6 5 4 3 2 1 0
; | | | |       +-- Space bar, trig(0) (0 = pressed)
; | | | +---------- Stick 1, Trigger 1 (0 = pressed)
; | | +------------ Stick 1, Trigger 2 (0 = pressed)
; | +-------------- Stick 2, Trigger 1 (0 = pressed)
; +---------------- Stick 2, Trigger 2 (0 = pressed)
TRGFLG:         equ     $F3E8

; F3E9: code for the standard foreground color (ini:15)
FORCLR:         equ     $F3E9

; F3EA: code for the standard background color (ini:4)
BAKCLR:         equ     $F3EA

; F3EB: code for the standard border color (ini:7)
BDRCLR:         equ     $F3EB

; F3EC-F3EE: Jump instruction used by Basic LINE command.
; The routines used are: RIGHTC, LEFTC, UPC and DOWNC
MAXUPD:         equ     $F3EC

; ??? this was already defined ???
PSG_DBG:        equ     $F3EC           ; fobOptO

; F3EF-F3F1: Jump instruction used by Basic LINE command.
; The routines used are: RIGHTC, LEFTC, UPC and DOWNC
MINUPD:         equ     $F3EF

; F3F2: working color, as used for graphical operations
; normally equals to the foreground color (ini:15)
ATRBYT:         equ     $F3F2

; F3F3-F3F4: starting value of the address of the queue-table
; the queue-table contains 4 queue's: 3 for sound and one for RS232
; (ini: QUETAB ($F959))
QUEUES:         equ     $F3F3

; F3F5: CLOAD flag =0 when CLOAD =255 when CLOAD?
FRCNEW:         equ     $F3F5

; F3F6: VDP-interupt counter that counts from 3 to 0, when it reaches zero, the
; keyboard matrix is scanned, and the counters is reset at 3
SCNCNT:         equ     $F3F6

; F3F7: key repeat counter. Runs from 13 to 0, and is changed when SCNCNT is changed
; if the key remained the same. If it reaches 0, keyrepetition starts. If another key
; is pressed the value is reset at 13.
REPCNT:         equ     $F3F7

; F3F8-F3F9: first free space in the inputbuffer of the keyboard
; everytime a key is added to the inputbuffer, this address is incremented,
; when it equals to GETPNT, the buffer is full
; the buffer is located at KEYBUF
PUTPNT:         equ     $F3F8           ; L[obt@ÖÌ|C^

; F3FA-F3FB: address in inputbuffer of first character that is not yet read
; everytime a key is read from the buffer it is incremented
; the buffer is located at KEYBUF
GETPNT:         equ     $F3FA           ; L[obt@ÖÌ|C^

; F3FC-F400: memory area for tape system parameters for 1200 baud
; F3FC: length of  low signal for 0     (ini:83)
; F3FD: length of high signal for 0     (ini:92)
; F3FE: length of  low signal for 1     (ini:38)
; F3FF: length of high signal for 1     (ini:45)
; F400: length of synchronization block (ini:15)
CS120:          equ     $F3FC

; F401-F405: memory area for tape system parameters for 1200 baud
; F401: length of  low signal for 0     (ini:37)
; F402: length of high signal for 0     (ini:45)
; F403: length of  low signal for 1     (ini:14)
; F404: length of high signal for 1     (ini:22)
; F405: length of synchronization block (ini:31)
CS240:          equ     $F401

; F406-F407: lenghts of signal for 0 for the current speed of the tape system
; either equal to the content of F3FC-F3FD or the content of F401-F402
; (ini: 83, 92)
LOW_:           equ     $F406 ; real name: LOW, but doesn't compile?

; F408-F409: lenghts of signal for 1 for the current speed of the tape system
; either equal to the content of F3FE-F3FF or the content of F403-F404
; (ini: 38, 45)
HIGH_:          equ     $F408 ; real name: HIGH, but doesn't compile?

; F40A: lenghts of synchronization block for the current speed of the tape system
; either equal to the content of F400 or the content of F405 (ini: 15)
HEADER:         equ     $F40A

; F40B-F40C: standard setting for the height/width aspect of the
; BASIC statement CIRCLE; only the byte in F40B is actually used
; If ASPECT2 is larger then 255, the value of F40B is the number of horizontal
; dots per 256 verical dots of the radius (ini:$0100)
; ! not verified :)
ASPCT1:         equ     $F40B

; F40D-F40E: standard setting for the height/width aspect of the
; BASIC statement CIRCLE; If ASPCT2 is smaller then 512, then ASPCT2 is the
; number of vertical dots per 256 horizontal dots of the radius (ini:$0100)
; ! not verified :)
ASPCT2:         equ     $F40D

; F40F-F413: work area for the BASIC statement RESUME NEXT
; contains a fake end of basic program
; (ini: 58, 0, 0, 0, 0)
ENDPRG:         equ     $F40F

; F414: errornumber of last error that happened while executing a BASIC program
; (ini:0)
ERRFLG:         equ     $F414

; F415: number of characters in the writebuffer of the printer that still
; need printing
LPTPOS:         equ     $F415

; F416: switch indicating if output should be screen or printer
; (think LIST vs LLIST) (ini:0) values: 0: screen, 1: printer
PRTFLG:         equ     $F416

; F417: switch indicating if hooked up printer is an MSX printer or not
; values: 0: MSX-Printer, 1: no MSX-Printer
; if the printer is no MSX-Printer, non-ASCII (>=128) characters are replaced
; by spaces before sending them to the printer (ini: 0)
NTMSXP:         equ     $F417

; F418: switch indicating of printing routines should use raw-mode or
; should convert:
; =0 to convert tabs and unknown characters to spaces and remove graphical headers
; =1 to send data just like it gets it (ini: 0)
; if RAWPRT is 1, the value if NTMSXP is ignored
RAWPRT:         equ     $F418

; ---------------------------
; basic interpreter work area
; ---------------------------

; F419-F41A: work area for the BASIC command VAL: contains address of character that
; has temporarely been replaced by O by VAL
VLZADR:         equ     $F419

; F41B: work area for the BASIC command VAL: contains the character originally at
; the location of VLZADR
VLZDAT:         equ     $F41B

; F41C-F41D: line number of current BASIC line being executed, in direct modus this
; contains $FFFF (ini:$FFFF)
CURLIN:         equ     $F41C

; F41E: error detection prefix for KBUF, always contains ":"
; originally undocumented :)
KBFMIN:         equ     $F41E

; F41F-F55C: workarea for coding basic rules that have been typed in direct modus
; this are contains the code for the line interpreted in direct modus
KBUF:           equ     $F41F

; F55D: byte used as first byte of BUF for input statements, giving them always
; an extra ',' (ini:44 == ',')
BUFMIN:         equ     $F55D

; F55E-F65F: used in direct modus to store the ASCII codes of the line, or simulary
; for INPUT or LINE INPUT BASIC statements
BUF:            equ     $F55E

; F562-F570: used by bitblit routines to store the register data
SX:             equ     $F562
SY:             equ     $F564
DX:             equ     $F566
DY:             equ     $F568
NX:             equ     $F56A
NY:             equ     $F56C
CDUMMY:         equ     $F56E
ARG_:           equ     $F56F
L_OP:           equ     $F570

; F660: last usable byte of BUF
ENDBUF:         equ     $F660

; F661: number of column of last written character on the screen
TTYPOS:         equ     $F661

; F662: switch indicating during variable lookup for arrays, if this has not already
; been done for a DIM BASIC statement
DIMFLG:         equ     $F662

; F663: workarea for evaluation of expressions; contains type of last evaluated
; expression; the value of the expression is in DAC, possible values of VALTYP:
; 2: integer
; 3: string
; 4: normal real
; 8: double real
VALTYP:         equ     $F663

; F664: workarea for coding of BASIC statements. switch indicating if keywords have
; to be encoded or not. E.g. in DATA fields they should not be encoded
; 0: encoding on, 1: encoding off
DORES:          equ     $F664

; F665: workarea for coding of BASIC statements. swithc indication of numbers have to be
; encoded; values: $0: encode as const, $1: encode as line number, $FF: do not encode
DONUM:          equ     $F665

; F666-F667: work area for evaluation of expressions: contains address of first character
; after the code of the last evaluated expression
CONTXT:         equ     $F666

; F668: work area for evaluation of expressions: contains information byte about the
; encoding of the last evaluated constant number; value of this constant is in CONLO
; values:
; $0B: octal (2 bytes)
; $0C: hexadecimal (2 bytes)
; $0F: decimal 0<=value<256 (1 byte)
; $11-$1B: short encoding for 0->10
; $1C: decimal (2bytes, 2s-compliment)
; $26: $42 binary as ASCII
; $0E: line number
; $0D: line pointer
; $1D: normal real (1 byte exp, 3 bytes BCD)
; $1F: double real (1 byte exp, 7 bytes BCD)
CONSAV:         equ     $F668

; F669: work area for evaluation of expressions: contains type of last evaluated number
; constant; the value is in CONLO, for values of CONTYP, see VALTYP
; Strings are never contant in BASIC!
CONTYP:         equ     $F669

; F66A-F671: work area for evaluation of expressions: contains the value of the last
; evaluated number contant; value starts at F66A, and takes bytes as needed for the type
CONLO:          equ     $F66A

; F672-F673: upper limit of memory area reserved for strings, contains the upper address
; that is allowed to be used
MEMSIZ:         equ     $F672

; F674-F675: top of stack; also first byte below string area
STKTOP:         equ     $F674

; F676-F677: start address of current basic program, set at initialization, and
; not changed by OS (ini:$8001)
TXTTAB:         equ     $F676

; F678-F679: address of first unused string-descriptor in TEMPST
; (ini:value of TEMPST)
TEMPPT:         equ     $F678

; F67A-F697: work area for evaluation of string expressions; this area has space
; for 10 string descriptors of 3 bytes; these can be used for temporarely results
; of string arythmetics
TEMPST:         equ     $F67A

; F698-F69A: work area for evaluation of string expressions; this contains the
; string descriptor of the intermediate result
DSCTMP:         equ     $F698

; F69B-F69C: first address within the string memory area that is still free
; the string area is filled backwards, soo the lower the value, the less space
; remains (ini: value of MEMSIZ)
FRETOP:         equ     $F69B

; F69D-F69E: temporarely storage for adminstration of the basic interpreter
TEMP3:          equ     $F69D

; F69F-F6A0: temporarely storage for garbage collection
TEMP8:          equ     $F69F

; F6A1-F6A2: address of first byte in BASIC-code after last FOR statement
ENDFOR:         equ     $F6A1

; F6A3-F6A4: line number of last used line of DATA statements
DATLIN:         equ     $F6A3

; F6A5: switch indicating if a variable is allowed to be an array variable.
; This is e.g. not allowed for the loop variable of a FOR statement
; 0 = allowed, 1 = not allowed
SUBFLG:         equ     $F6A5

; F6A6: switch indicating if currently a READ or INPUT statement is being executed
FLKINP:         equ     $F6A6

; F6A7-F6A8: temporarely storage for adminstration of the basic interpreter
TEMP:           equ     $F6A7

; F6A9: switch indicating if there are still linenumber constants in the BASIC code
; that are encoded as pointers?
PTRFLG:         equ     $F6A9

; F6AA: switch indication if currently an AUTO statement is active
; 0 = no auto, 1 = auto
AUTFLG:         equ     $F6AA

; F6AB-F6AC: last generated AUTO line number
AUTLIN:         equ     $F6AB

; F6AD-F6AE: last used AUTO increment
AUTINC:         equ     $F6AD
SAVTXT:         equ     $F6AF
SAVSTK:         equ     $F6B1
ERRLIN:         equ     $F6B3
DOT:            equ     $F6B5
ERRTXT:         equ     $F6B7
ONELIN:         equ     $F6B9
ONEFLG:         equ     $F6BB
TEMP2:          equ     $F6BC
OLDLIN:         equ     $F6BE
OLDTXT:         equ     $F6C0
VARTAB:         equ     $F6C2
ARYTAB:         equ     $F6C4
STREND:         equ     $F6C6
DATPTR:         equ     $F6C8
DEFTBL:         equ     $F6CA
PRMSTK:         equ     $F6E4
PRMLEN:         equ     $F6E6
PARM1:          equ     $F6E8
PRMDRV:         equ     $F74C
PRMLN2:         equ     $F74E
PARM2:          equ     $F750
PRMFLG:         equ     $F7B4
ARYTA2:         equ     $F7B5
NOFUNS:         equ     $F7B7
TEMP9:          equ     $F7B8
FUNACT:         equ     $F7BA
SWPTMP:         equ     $F7BC
TRCFLG:         equ     $F7C4
FBUFFR:         equ     $F7C5
DECTMP:         equ     $F7F0
DECTM2:         equ     $F7F2
DECCNT:         equ     $F7F4
DAC:            equ     $F7F6
HOLD8:          equ     $F806
HOLD2:          equ     $F836
HOLD:           equ     $F83E
ARG:            equ     $F847
RNDX:           equ     $F857

; --------------------
; filesystem work area
; --------------------

MAXFIL:         equ     $F85F
FILTAB:         equ     $F860
NULBUF:         equ     $F862
PTRFIL:         equ     $F864
RUNFLG:         equ     $F866
FILNAM:         equ     $F867
FILNM2:         equ     $F871
NLONLY:         equ     $F87C
SAVEND:         equ     $F87D
FNKSTR:         equ     $F87F

; ------------------------
; screen routine work area
; ------------------------

CGPNT:          equ     $F91F
NAMBAS:         equ     $F922
CGPBAS:         equ     $F924
PATBAS:         equ     $F926
ATRBAS:         equ     $F928
CLOC:           equ     $F92A
CMASK:          equ     $F92C
MINDEL:         equ     $F92D
MAXDEL:         equ     $F92F
ASPECT:         equ     $F931
CENCNT:         equ     $F933
CLINEF:         equ     $F935
CNPNTS:         equ     $F936
CPLOTF:         equ     $F938
CPCNT:          equ     $F939
CPCNT8:         equ     $F93B
CRCSUM:         equ     $F93D
CSTCNT:         equ     $F93F
CSCLXY:         equ     $F941
CSAVEA:         equ     $F942
CSAVEM:         equ     $F944
CXOFF:          equ     $F945
CYOFF:          equ     $F947
LOHMSK:         equ     $F949
LOHDIR:         equ     $F94A
LOHADR:         equ     $F94B
LOHCNT:         equ     $F94D
SKPCNT:         equ     $F94F
MOVCNT:         equ     $F951
PDIREC:         equ     $F953
LFPROG:         equ     $F954
RTPROG:         equ     $F955
MCLTAB:         equ     $F956
MCLFLG:         equ     $F958

; ------------------------------------------
; work area for sound and queueing and RS232
; ------------------------------------------

; F959-F971: Variables for three music queues and one RS232 queue
; F959: VOICAQ put position
; F95A: VOICAQ get position
; F95B: VOICAQ putback flag
; F95C: VOICAQ size
; F95D: VOICAQ address
; F95F-F964: VOICBQ
; F965-F96A: VOICCQ
; F96B-F970: RS2IQ
QUETAB:         equ     $F959

; Putback characters for queues. TODO: what purpose do these have exactly?
QUEBAK:         equ     $F971

; Buffers for queues.
VOICAQ:         equ     $F975           ; Voice A queue
VOICBQ:         equ     $F9F5           ; Voice B queue
VOICCQ:         equ     $FA75           ; Voice C queue
RS2IQ:          equ     $FAF5           ; RS232   queue

; in MSX2 the content of RS2IQ is used differently:
DPPAGE:         equ     $FAF5           ; Display page (SCR5+)
ACPAGE:         equ     $FAF6           ; Active page (SCR5+)
AVCSAV:         equ     $FAF7
EXBRSA:         equ     $FAF8           ; TuÊu
CHRCNT:         equ     $FAF9
ROMA:           equ     $FAFA
MODE:           equ     $FAFC
;Reserved       equ     $FAFD
XSAVE:          equ     $FAFE
YSAVE:          equ     $FB00
LOGOPR:         equ     $FB02
; FB21-FB28: Table which contains info for up to 4 disk ROMs, 2 bytes each:
; - first byte: number of drives connected to this interface
; - second byte: slot ID of the disk ROM
DRVINF:         equ     $FB21
; end of MSX2 only usage of RS2IQ

PRSCNT:         equ     $FB35
SAVSP:          equ     $FB36
VOICEN:         equ     $FB38
SAVVOL:         equ     $FB39
MCLLEN:         equ     $FB3B
MCLPTR:         equ     $FB3C
QUEUEN:         equ     $FB3E
PLYCNT:         equ     $FB40
VCBA:           equ     $FB41
VCBB:           equ     $FB66
VCBC:           equ     $FB8B

; -----------------------------------------------
; settings for screen editor and interrupt system
; -----------------------------------------------

ENSTOP:         equ     $FBB0
BASROM:         equ     $FBB1
LINTTB:         equ     $FBB2
FSTPOS:         equ     $FBCA
CURSAV:         equ     $FBCC
FNKSWI:         equ     $FBCD
FNKFLG:         equ     $FBCE
ONGSBF:         equ     $FBD8
CLIKFL:         equ     $FBD9
OLDKEY:         equ     $FBDA
NEWKEY:         equ     $FBE5
KEYBUF:         equ     $FBF0
; LIMPNT: something about "key buffer pointer"
LIMPNT:         equ     $FC17           ; L[obt@ÖÌ|C^
LINWRK:         equ     $FC18           ; 40ªÌobt@
PATWRK:         equ     $FC40
BOTTOM:         equ     $FC48
HIMEM:          equ     $FC4A
TRPTBL:         equ     $FC4C
RTYCNT:         equ     $FC9A
INTFLG:         equ     $FC9B
PADY:           equ     $FC9C
PADX:           equ     $FC9D
JIFFY:          equ     $FC9E           ; timer counter
INTVAL:         equ     $FCA0
INTCNT:         equ     $FCA2
LOWLIM:         equ     $FCA4
WINWID:         equ     $FCA5
GRPHED:         equ     $FCA6

; FCA7 ESCCNT State of a state machine that handles the printing of escape
; sequences. A subset of the VT52 escape sequences is supported.
; values:
; $00: not inside an escape sequence
; $01: seen <ESC>x
; $02: seen <ESC>y
; $03: seen <ESC>Y<row>
; $04: seen <ESC>Y
; $FF: seen <ESC>
ESCCNT:         equ     $FCA7

INSFLG:         equ     $FCA8
CSRSW:          equ     $FCA9
CSTYLE:         equ     $FCAA
CAPST:          equ     $FCAB
KANAST:         equ     $FCAC
KANAMD:         equ     $FCAD

; ----
; misc
; ----

FLBMEM:         equ     $FCAE
SCRMOD:         equ     $FCAF
OLDSCR:         equ     $FCB0
CASPRV:         equ     $FCB1
BRDATR:         equ     $FCB2
GXPOS:          equ     $FCB3
GYPOS:          equ     $FCB5
GRPACX:         equ     $FCB7
GRPACY:         equ     $FCB9
DRWFLG:         equ     $FCBB
DRWANG:         equ     $FCBD
RUNBNF:         equ     $FCBE
SAVENT:         equ     $FCBF

; ---------------------------
; storage of slot information
; ---------------------------

; FCC1-FCC4: Information for each primary slot. The most significant bit is
; set if the primary slot is found to be expanded.
EXPTBL:         equ     $FCC1

; FCC5-FCC8: Duplicate the contents of the four possible secondary slot
; registers.
SLTTBL:         equ     $FCC5

; FCC9-FD08: Information for any extension ROMs found during the power-up
; ROM search.
; FCC9-FCCC: primary slot 0, secondary slot 0
; FCCD-FCD0: primary slot 0, secondary slot 1
; FCD1-FCD4: primary slot 0, secondary slot 2
; FCD5-FCD8: primary slot 0, secondary slot 3
; FCD9-FCE8: primary slot 1
; FCE9-FCF8: primary slot 2
; FCF9-FD08: primary slot 3
; The information is stored as below.
; bit 7 (set): BASIC program
; bit 6 (set): device handler
; bit 5 (set): statement handler
SLTATR:         equ     $FCC9

SLTWRK:         equ     $FD09

; ------------------------------
; storage of ROM-page parameters
; ------------------------------

PROCNM:         equ     $FD89
DEVICE:         equ     $FD99
; ------------
; system hooks
; ------------

; system hooks are defined in hooks.asm

; ------------------
; storage of VDP8-23
; ------------------

; FFE7-FFF6: storage of VDP 8-23
RG8SAV:         equ     $FFE7

; ----------------------
; extra slot information
; ----------------------

; FFF7: slot address of main-rom
;?????:         equ     $FFF7

; ------------------
; storage of VDP25-27
; ------------------

; FFFA-FFFC: storage of VDP 25-27
RG25SAV:         equ     $FFFA

; ---------------------------
; subslot switching addresses
; ---------------------------

; FFFF: subslot switching address
; This is not actually a system variable, it is a hardware register:
;   SSL_REGS (see hardware.asm).

; -------
; the end
; -------

; vim:ts=8:expandtab:filetype=z8a:syntax=z8a:

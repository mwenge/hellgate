;
; **** ZP FIELDS **** 
;
f3E = $3E
;
; **** ZP ABSOLUTE ADRESSES **** 
;
zpLo = $00
zpHi = $01
screenPtrXPos = $02
screenPtrYPPos = $03
charToDraw = $04
colorToDraw = $05
bulletGroup = $06
pulsingColorArrayIndex = $07
a08 = $08
a09 = $09
a0A = $0A
a0B = $0B
a0E = $0E
a0F = $0F
a10 = $10
a11 = $11
a12 = $12
a13 = $13
a14 = $14
a15 = $15
a16 = $16
a17 = $17
a18 = $18
a19 = $19
a1A = $1A
joystickInput = $1B
a1C = $1C
a1D = $1D
a1E = $1E
a1F = $1F
a20 = $20
a21 = $21
a22 = $22
a23 = $23
a24 = $24
a26 = $26
a27 = $27
a28 = $28
a29 = $29
a2A = $2A
a2B = $2B
a2C = $2C
a2D = $2D
a2E = $2E
a2F = $2F
a30 = $30
curEnergyBarLevel = $31
a32 = $32
a33 = $33
a34 = $34
a35 = $35
a36 = $36
a37 = $37
a38 = $38
shipsLeft = $39
zapsLeft = $3A
a50 = $50
a51 = $51
a52 = $52
a53 = $53
a54 = $54
a55 = $55
aC5 = $C5
;
; **** ZP POINTERS **** 
;
p0E = $0E
p23 = $23
p2C = $2C
;
; **** FIELDS **** 
;
SCREEN_PTR_LO = $0340
SCREEN_PTR_HI = $0360
f1200 = $1200
highScoreTableStorage = $3D00
f3D01 = $3D01
f3D02 = $3D02
f3E00 = $3E00
f3E20 = $3E20
f3E40 = $3E40
f3E60 = $3E60
f3E80 = $3E80
f3EA0 = $3EA0
f3EC0 = $3EC0
f3EE0 = $3EE0
bulletColorArray = $3FA0
bulletGroupArray = $3FB0
bulletXPosArray = $3FC0
bulletYPosArray = $3FD0
f3FE0 = $3FE0
bulletCharArray = $3FF0
f96BE = $96BE
f96D4 = $96D4
f96DC = $96DC
f96E1 = $96E1
f96E6 = $96E6
fC000 = $C000
fCACB = $CACB
;
; **** ABSOLUTE ADRESSES **** 
;
screenPtrXPos91 = $0291
screenPtrYPPos15 = $0315
WaitCtr2 = $1108
WaitCtr1 = $1109
a113F = $113F
a1140 = $1140
a96D3 = $96D3
;
; **** POINTERS **** 
;
p02 = $0002
p0B = $000B
p0101 = $0101
p0119 = $0119
p01AD = $01AD
p01AE = $01AE
p0200 = $0200
p0203 = $0203
p0505 = $0505
p066E = $066E
p0900 = $0900
p0901 = $0901
p0A02 = $0A02
p0A07 = $0A07
p0B0A = $0B0A
p0B0C = $0B0C
p0C02 = $0C02
p0C03 = $0C03
p0C13 = $0C13
p0E02 = $0E02
p0E13 = $0E13

SCREEN_RAM = $1000
dsplyEntryLevel = SCREEN_RAM + $264
dsplyPlayers = SCREEN_RAM + $270
dsplyZapsLeft = SCREEN_RAM + $2C2
dsplyShipsLeft = SCREEN_RAM + $2D4
dsplyEnergyBar = SCREEN_RAM + $2C3
p12D5 = SCREEN_RAM + $2D5

p4C0B = $4C0B
p6301 = $6301
p6D1B = $6D1B
p7519 = $7519

;
; **** EXTERNAL JUMPS **** 
;
eDD8E = $DD8E
;
; **** PREDEFINED LABELS **** 
;
RAM_CINV = $0314
VICCR0 = $9000
VICCR1 = $9001
VICCR2 = $9002
VICCR3 = $9003
VICCR4 = $9004
VICCR5 = $9005
VICCRA = $900A
VICCRB = $900B
VICCRC = $900C
VICCRD = $900D
VICCRE = $900E
VICCRF = $900F
VIA1IER = $911E
VIA1PA2 = $911F
VIA2PB = $9120
VIA2DDRB = $9122
ROM_IRQ = $EABF

        * = $1201

        .BYTE $0B,$12,$0A,$00,$9E,$36,$36,$35
        .BYTE $36,$00,$00,$00
        STY f3E,X
        CLV 
        SBC fCACB,X
        .BYTE $C2,$45 ;NOP #$45
        JMP eDD8E

        .BYTE $80,$E9,$9E,$AE,$CB,$CC,$8F,$8E
        .BYTE $C4,$E5,$C8,$C8,$C6,$CC,$8D,$CF
        .BYTE $C6,$E7,$C9,$C4,$81,$86,$CD,$CC
        .BYTE $B5,$7F,$AE,$7F,$FF,$B6,$B9,$33
        .BYTE $3E,$BF,$2F,$05,$3A,$EA,$33,$6C
        .BYTE $38,$FE,$38,$98,$1B,$B6,$16,$9F
        .BYTE $B5,$7C,$7C,$79,$BC,$AC,$80,$9D
        .BYTE $CC,$DF,$DA,$CD,$4C,$CF,$DC,$E1
        .BYTE $9C,$FF,$9C,$CC,$EA,$CC,$C4,$44
        .BYTE $DC,$CF,$6A,$C8
        .BYTE $CC,$C6,$8A,$D8,$CA,$C6,$CD,$CC
        .BYTE $C8,$CA,$C9,$C4
        .BYTE $3C,$AE,$3B,$3C,$36,$D5,$93,$6A
        .BYTE $FF,$BC,$4F,$AA,$3E,$08,$79,$D9
        .BYTE $38,$73,$37,$5C,$B5,$D5,$9A,$9D
        .BYTE $9F,$31,$D4,$3D,$91,$3C,$7C,$FC
        .BYTE $CE,$DC,$CC,$9C,$CC,$CF,$C8,$9F
        .BYTE $C6,$D4,$CA,$C5,$CE,$DF,$CC,$44
        .BYTE $CD,$C5,$CD,$44,$CA,$CB,$AE,$DB
        .BYTE $5C,$D8,$49,$C0,$B8,$C4,$CC,$CC
        .BYTE $9A,$3C,$A2,$9D,$7B,$B9,$30,$9C
        .BYTE $33,$87,$3D,$DC,$A2,$14,$70,$B5
        .BYTE $BE,$3E
        .BYTE $7E
        .BYTE $9C,$1E,$71,$3A,$5F,$3C,$1C,$3C
        .BYTE $B8,$5C,$BA,$98,$94,$D4,$59,$49
        .BYTE $ED
        .BYTE $C4
        .BYTE $CD,$CE,$E5,$C4,$4D,$C1,$4D,$CB
        .BYTE $D4,$84,$D1,$EC,$C2,$04,$E2,$CE
        .BYTE $CB,$4E,$CC,$C8,$CE,$C6,$CE,$C4
        .BYTE $85,$C0,$D4,$FE,$15,$5F,$F9,$B4
        .BYTE $7E,$9D,$1E,$7A,$51,$30,$1D,$5F
        .BYTE $4D,$59,$7A
        .BYTE $3A,$BC,$1F,$0E,$BF,$3C,$2C,$BE
        .BYTE $AE,$1C,$B8,$7C,$37,$4C,$9C,$CC
        .BYTE $08,$D9,$CE,$EC,$DC,$CD,$C9,$41
        .BYTE $CC,$CC,$E7,$DC,$6C,$9F,$4C,$D4
        .BYTE $CC,$CB,$D7,$C8,$DF,$CF,$CF,$CF
        .BYTE $C6,$D5,$CC,$CA,$CF,$4C,$CC,$CC
        .BYTE $34,$1E,$11,$DE,$33,$BC,$F9,$0A
        .BYTE $F3,$BC,$3E,$1A,$3E,$F1,$31,$FE
        .BYTE $3E,$9F,$9B,$3D,$77,$BB,$3C,$7E
        .BYTE $98,$F9,$3A,$ED,$3E,$5D,$9C,$DE
        .BYTE $F8,$CD,$4C,$CD,$E5,$CB,$CE,$C6
        .BYTE $CF,$C6,$F4,$DD,$CE,$9C,$ED,$C2
        .BYTE $4C,$C7,$C5,$4E,$CA,$CB,$C0,$CE
        .BYTE $D8,$CD,$CC,$D7,$C5,$CE,$CE,$9C
        .BYTE $BE,$7E,$F6,$E6,$39,$B9,$17,$59
        .BYTE $BB,$7D,$30,$FD,$37,$BD,$BB,$15
        .BYTE $3C,$BD,$79,$3D,$34,$BD,$3F,$79
        .BYTE $39,$4D,$79,$66,$FE,$6F,$9D,$9C
        .BYTE $CC,$53,$C4,$5E,$DE,$4C,$CC,$92
        .BYTE $9E,$DE,$DF,$9D,$D6,$C0,$C4,$CD
        .BYTE $CD,$C7,$DF,$CE,$CF,$4C,$C0,$D6
        .BYTE $C8,$C7,$75,$C3,$DF,$CF,$C0,$CC
        .BYTE $1B,$79,$79,$9D,$BD,$1D,$5B,$34
        .BYTE $02,$FD,$27,$EC,$35,$D6,$79,$1C
        .BYTE $BF,$B9,$BD,$EC,$1E,$1E,$7B,$FA
        .BYTE $BF,$DD,$9C,$94,$B5,$5F,$3F,$9C
        .BYTE $C5,$CD,$9C,$CD,$DD,$C9,$D8,$4A
        .BYTE $D0,$D8,$FC,$DA,$DA,$88,$CC,$C4
        .BYTE $CC,$D5,$DF,$CD,$C6,$C8,$CD,$0F
        .BYTE $CC,$C4,$CF,$CD,$CC,$CF,$CC,$8E
        .BYTE $7E,$9C,$6F,$8C,$B3,$DF,$36,$18
        .BYTE $3F,$D7,$72,$FE,$30,$B6,$FF,$9D

.include "charset.asm"

        .BYTE $00,$00,$00,$00,$00,$00,$00,$C1
        LDA #$02
p1A02   STA VIA1IER  ;$911E - interrupt enable register (IER)
        LDA #$80
        STA screenPtrXPos91
        JMP InitializeAudioAndVideo

;------------------------------------------------
; We write to the screen by writing to address $1E00-$1FFF.
; Use SCREEN_PTR_LO/SCREEN_PTR_HI as an array that contains
; pointers to the addresses in screen memory.
;------------------------------------------------
InitScreenPtrArray
        LDA #>SCREEN_RAM
        STA zpHi
        LDA #<SCREEN_RAM
        STA zpLo
        LDX #$00
b1A17   LDA zpLo
        STA SCREEN_PTR_LO,X
        LDA zpHi
        STA SCREEN_PTR_HI,X
        LDA zpLo
        CLC 
        ADC #$19
        STA zpLo
        LDA zpHi
        ADC #$00
        STA zpHi
        INX 
        CPX #$20
        BNE b1A17
        RTS 

;------------------------------------------------
; Screen_GetPtr
;------------------------------------------------
Screen_GetPtr
        LDX screenPtrYPPos
        LDY screenPtrXPos
        LDA SCREEN_PTR_LO,X
        STA zpLo
        LDA SCREEN_PTR_HI,X
        STA zpHi
        RTS 

;------------------------------------------------
; GetCharAtCurrentPos
;------------------------------------------------
GetCharAtCurrentPos
        JSR Screen_GetPtr
        LDA (zpLo),Y
b1A48   RTS 

;------------------------------------------------
; DrawCharacter
;------------------------------------------------
DrawCharacter
        LDA screenPtrXPos
        CMP #$28
        BPL b1A48
        TXA 
        PHA 
        TYA 
        PHA 
        JSR Screen_GetPtr
        LDA charToDraw
        STA (zpLo),Y
        LDA zpHi
        CLC 
        ADC #$84
        STA zpHi
        LDA colorToDraw
        STA (zpLo),Y
        PLA 
        TAY 
        PLA 
        TAX 
        RTS 

;------------------------------------------------
; ClearScreen
;------------------------------------------------
ClearScreen   LDX #$00
b1A6C   LDA #$20
        STA SCREEN_RAM,X
        STA SCREEN_RAM + $100,X
        STA SCREEN_RAM + $200,X
        STA SCREEN_RAM + $300,X
        DEX 
        BNE b1A6C
        RTS 

a1A7E          .TEXT "0"
a1A7F          .TEXT $08
a1A80          .TEXT " "
a1A81          .TEXT $06
highScoreTable .TEXT "0010000LLA0009000MA 0008000YAK0007000DOE"
               .TEXT "0006000VIC0005000UNA0004000EWE0003000YAK"

;------------------------------------------------
; InitializeAudioAndVideo
;------------------------------------------------
InitializeAudioAndVideo
        JSR InitScreenPtrArray
        JSR ClearScreen
        LDA #<p0119
        STA a33
        LDA #>p0119
        STA a34
        LDA #<p0B
        STA a35

        LDX #>p0B
        STX a36
b1AE8   LDA highScoreTable,X
        STA highScoreTableStorage,X
        INX 
        CPX #$50
        BNE b1AE8

        LDA #<p12D5
        STA a23
        LDA #>p12D5
        STA a24
        LDA #$08
        STA VICCRF   ;$900F - screen colors: background, border & inverse

        ; Bits 0 to 3 (i.e. the D in $CD) determine which address character
        ; set is stored at. So D points to $1400. The maps is as follows:
        ;Bits    Address  
        ;0000    8000 
        ;0001    8400 
        ;0010    8800 
        ;0011    8C00 
        ;1000    0000 
        ;1100    1000 
        ;1101    1400 
        ;1110    1800 
        ;1111    1C00 
        LDA #$CD ; $D translates as charcters starting at $1400
        STA VICCR5   ;$9005 - screen map & character map address

        LDA #$19
        STA VICCR2   ;$9002 - number of columns, part os screen map addr.
        LDA #$3C
        STA VICCR3   ;$9003 - number of lines, part of raster location (bit 8)
        LDA #$0A
        STA VICCR0   ;$9000 - left edge of picture & interlace switch
        SEI 
        LDA #<p2218
        STA RAM_CINV
        LDA #>p2218
        STA screenPtrYPPos15
        CLI 
        LDA #$18
        STA VICCR1   ;$9001 - vertical picture origin
        LDA #$00
        STA a32
        STA a37
        JMP RunTitleSequence

;-------------------------------
; j1B2E
;-------------------------------
j1B2E    
        JSR DrawScreenInterstitialEffect
        JSR DrawScoreStrapLine
        LDA a36
        BEQ b1B3F
        JSR UpdateScrPtrYPosWithX
        AND #$0F
        STA a32
b1B3F   LDA #$33
        STA zapsLeft
        LDA #$34 ; 4 ships
        STA shipsLeft
        LDA a32
        STA a38

;-------------------------------
; EnterNextLevel
;-------------------------------
EnterNextLevel    

        LDA #$06
        STA a1E
        LDA #$0F
        STA VICCRE   ;$900E - sound volume
        JSR ClearFullScreen

        LDA #$01
        STA a21
        STA a22
        STA a20
          
        LDA #$00
        LDX #$00
b1B63   STA bulletColorArray,X
        INX 
        CPX #$10
        BNE b1B63
        STA joystickInput
        STA a50
        LDA #<p6301
        STA a2B
        LDA #>p6301
        STA a2C
        LDA #$2F
        STA a2D
        LDA a32
        BEQ b1B8B
        TAX 

b1B80   JSR WasteSomeCycles
        BNE b1B80
        DEX 
        BNE b1B80
        JSR WasteSomeCycles

b1B8B   JSR PrepareToDieNewLevelEffect
        JSR s1C6A
        JMP MainGameLoop

;------------------------------------------------
; DrawScoreStrapLine
;------------------------------------------------
DrawScoreStrapLine
        LDA #<p02
        STA screenPtrXPos
b1B98   LDA #>p02
        STA screenPtrYPPos
        LDA #>p066E
        STA colorToDraw
        LDA #<p066E
        STA charToDraw
        JSR DrawCharacter
        LDA #>p6D1B
        STA charToDraw
        LDA #<p6D1B
        STA screenPtrYPPos
        JSR DrawCharacter
        INC screenPtrXPos
        LDA screenPtrXPos
        CMP #$17
        BNE b1B98
        LDA #>p0200
        STA screenPtrYPPos
b1BBE   LDA #<p0200
        STA screenPtrXPos
        LDA #$70
        STA charToDraw
        JSR DrawCharacter
        DEC charToDraw
        LDA #$18
        STA screenPtrXPos
        JSR DrawCharacter
        INC screenPtrYPPos
        LDA screenPtrYPPos
        CMP #$1A
        BNE b1BBE
        LDA #>p1C00
        STA screenPtrYPPos
        LDA #<p1C00
        STA screenPtrXPos
        LDA a36
        BNE b1C0B
        LDX #$00
b1BE8   LDA scoreLineColors,X
        AND #$BF
        STA charToDraw
        LDA #$07
        STA colorToDraw
        JSR DrawCharacter
        INC screenPtrYPPos
        LDA scoreLineText,X
        AND #$3F
        STA charToDraw
p1C00   =*+$01
        JSR DrawCharacter
        DEC screenPtrYPPos
        INC screenPtrXPos
        INX 
p1C08   =*+$01
        CPX #$19
        BNE b1BE8
b1C0B   JSR ResetEnergyBar
        JMP j1C43

scoreLineColors .BYTE $9D,$9E,$9F,$A0,$A1,$A2,$33,$20
                .BYTE $20,$20,$20,$20,$20,$20,$20,$20
                .BYTE $20,$20,$20,$20,$20,$20,$20,$A3
                .BYTE $34
scoreLineText   .TEXT "0000000 HELL$GATE 0000000"
;-------------------------------
; j1C43
;-------------------------------
j1C43    
        LDA #$01
        STA a11
        STA a16
        LDA #$16
        STA a10
        LDA #$02
        STA a17
        LDA #>p1917
        STA a15
        LDA #<p1917
        STA a14
        LDA #>p1A02
        STA a13
        LDA #<p1A02
        STA a12
        LDA #$00
        STA a18
        STA a19
        STA a1A
        RTS 

;------------------------------------------------
; s1C6A
;------------------------------------------------
s1C6A    
        LDA #$A0
        STA VICCRD   ;$900D - frequency of sound osc.4 (noise)
        JSR s2187

        LDX #$00
        LDA #$00
b1C76   STA f3E00,X
        INX 
        BNE b1C76

        LDA #$00
        STA VICCRD   ;$900D - frequency of sound osc.4 (noise)
        JSR MoveShips
        JMP PlayNewLevelSounds

;------------------------------------------------
; MoveShips
;------------------------------------------------
MoveShips    
        LDA a18
        BEQ b1C8E
        JMP LeftRightShipFirstFrame

b1C8E   LDA #leftShipFull
        JSR UpdateCharToDraw
        LDA a16
        STA screenPtrXPos
        LDA #$07
        STA colorToDraw
        LDA a17
        STA screenPtrYPPos
        JSR MoveShip

        LDA #rightShipFull
        JSR UpdateCharToDraw
        LDA a14
        STA screenPtrXPos
        LDA #$04
        STA colorToDraw
        LDA a15
        STA screenPtrYPPos
        JSR MoveShip

        JMP MoveTopBottomShips
        ; Returns from MoveShip

;------------------------------------------------
; UpdateCharToDraw
;------------------------------------------------
UpdateCharToDraw    
        LDY a1A
        CPY #$01
        BNE b1CC1
        LDA #$20
b1CC1   STA charToDraw
        RTS 

;-------------------------------
; LeftRightShipFirstFrame
;-------------------------------
LeftRightShipFirstFrame    
        LDA #leftShipTopHalf
        JSR UpdateCharToDraw
        LDA #$07
        STA colorToDraw
        LDA a16
        STA screenPtrXPos
        LDA a17
        STA screenPtrYPPos
        JSR MoveShip
        INC charToDraw
        LDA charToDraw
        JSR UpdateCharToDraw
        INC screenPtrYPPos
        JSR MoveShip
        LDA #rightShipTopHalf
        JSR UpdateCharToDraw
        LDA #$04
        STA colorToDraw
        LDA a14
        STA screenPtrXPos
        LDA a15
        STA screenPtrYPPos
        JSR MoveShip
        INC charToDraw
        LDA charToDraw
        JSR UpdateCharToDraw
        INC screenPtrYPPos
        JSR MoveShip

;-------------------------------
; MoveTopBottomShips
;-------------------------------
MoveTopBottomShips    
        LDA a19
        BEQ b1D0B
        JMP BottomTopFirstFrame

b1D0B   LDA #bottomShipFull
        JSR UpdateCharToDraw
        LDA #$07
        STA colorToDraw
        LDA a12
        STA screenPtrXPos
        LDA a13
        STA screenPtrYPPos
        JSR MoveShip
        LDA #topShipFull
        JSR UpdateCharToDraw
        LDA #$04
        STA colorToDraw
        LDA a10
        STA screenPtrXPos
        LDA a11
        STA screenPtrYPPos
        JMP MoveShip
        ; Returns

;-------------------------------
; BottomTopFirstFrame
;-------------------------------
BottomTopFirstFrame    
        LDA #bottomShipLeftHalf
        JSR UpdateCharToDraw
        LDA #$07
        STA colorToDraw
        LDA a12
        STA screenPtrXPos
        LDA a13
        STA screenPtrYPPos
        JSR MoveShip
        INC charToDraw
        LDA charToDraw
        JSR UpdateCharToDraw
        INC screenPtrXPos
        JSR MoveShip
        LDA #$04
        STA colorToDraw
        LDA a10
        STA screenPtrXPos
        LDA a11
        STA screenPtrYPPos
        LDA #topShipRightHalf
        JSR UpdateCharToDraw
        JSR MoveShip
        INC charToDraw
        LDA charToDraw
        JSR UpdateCharToDraw
        INC screenPtrXPos
        JMP MoveShip

;------------------------------------------------
; GetJoystickInput
;------------------------------------------------
GetJoystickInput
        SEI 
        LDX #$7F
        STX VIA2DDRB ;$9122 - data direction register for port b

b1D79   LDY VIA2PB   ;$9120 - port b I/O register
        CPY VIA2PB   ;$9120 - port b I/O register
        BNE b1D79

        LDX #$FF
        STX VIA2DDRB ;$9122 - data direction register for port b
        LDX #$F7
        STX VIA2PB   ;$9120 - port b I/O register
        CLI 

b1D8C   LDA VIA1PA2  ;$911F - mirror of VIA1PA1 (CA1 & CA2 unaffected)
        CMP VIA1PA2  ;$911F - mirror of VIA1PA1 (CA1 & CA2 unaffected)
        BNE b1D8C

        PHA 
        AND #$1C
        LSR 
        CPY #$80
        BCC b1D9E
        ORA #$10
b1D9E   TAY 
        PLA 
        AND #$20
        CMP #$20
        TYA 
        ROR 
        EOR #$8F
        STA joystickInput
        LDA a36
        BEQ b1DBB
        LDA joystickInput
        AND #$80
        BEQ b1DB7
        JMP j3418

b1DB7   LDA #$85
        STA joystickInput
b1DBB   RTS 

;------------------------------------------------
; MoveShipsDown
;------------------------------------------------
MoveShipsDown 
        LDA a17
        CMP #$19
        BNE b1DCC
        LDA a17
        PHA 
        LDA a15
        STA a17
        PLA 
        STA a15
b1DCC   INC a18
        LDA a18
        CMP #$02
        BNE b1DD8
        LDA #$00
        STA a18
b1DD8   LDA a18
        BEQ b1DDF
        DEC a15
        RTS 

b1DDF   INC a17
        RTS 

;------------------------------------------------
; MoveShipsUp
;------------------------------------------------
MoveShipsUp    
        LDA a17
        CMP #$02
        BNE b1DF2
        LDA a17
        PHA 
        LDA a15
        STA a17
        PLA 
        STA a15
b1DF2   DEC a18
        LDA a18
        CMP #$FF
        BNE b1DFE
        LDA #$01
        STA a18
b1DFE   LDA a18
        BEQ b1E05
        DEC a17
        RTS 

b1E05   INC a15
        RTS 

;------------------------------------------------
; MoveShipsRight
;------------------------------------------------
MoveShipsRight    
        LDA a12
        CMP #$16
        BNE b1E18
        LDA a12
        PHA 
        LDA a10
        STA a12
        PLA 
        STA a10
b1E18   INC a19
        LDA a19
        AND #$01
        STA a19
        BEQ b1E25
        DEC a10
        RTS 

b1E25   INC a12
        RTS 

;------------------------------------------------
; MoveShipsLeft
;------------------------------------------------
MoveShipsLeft    
        LDA a12
        CMP #$02
        BNE b1E38
        LDA a12
        PHA 
        LDA a10
        STA a12
        PLA 
        STA a10
b1E38   INC a19
        LDA a19
        AND #$01
        STA a19
        BEQ b1E45
        DEC a12
        RTS 

b1E45   INC a10

;------------------------------------------------
; CheckJoystickInput
;------------------------------------------------
b1E47   RTS 

CheckJoystickInput    

        DEC a1C
        BNE b1E47
        LDA a1A7E
        STA a1C
        JSR s29F8

        LDA #$01
        STA a2A
        JSR MoveShips
        DEC a2A

        JSR GetJoystickInput
        LDA joystickInput
        AND #$0F
        BEQ b1E47

        LDA #$01
        STA a1A
        JSR MoveShips
        DEC a1A

        LDA joystickInput
        AND #$01 ; Up
        BEQ b1E78
        JSR MoveShipsUp
b1E78   LDA joystickInput
        AND #$02 ; Down
        BEQ b1E81
        JSR MoveShipsDown
b1E81   LDA joystickInput
        AND #$04 ; Left
        BEQ b1E8A
        JSR MoveShipsLeft
b1E8A   LDA joystickInput
        AND #$08 ; Right
        BEQ b1E93
        JSR MoveShipsRight
b1E93   JMP MoveShips

;------------------------------------------------
; MainGameLoop
;------------------------------------------------
MainGameLoop
        JSR CheckJoystickInput
        JSR PlayBackgroundSounds
        JSR CheckFireBullets
        JSR UpdateEnemyPositions
        JMP MainGameLoop

;------------------------------------------------
; DrawBullets4
;------------------------------------------------
DrawBullets4    
        INC f3FE0,X
        LDA f3FE0,X
        AND #$01
        STA f3FE0,X
        BEQ b1EC9
        LDA bulletCharArray,X
        STA charToDraw
        INC charToDraw
        LDA bulletXPosArray,X
        STA screenPtrXPos
        LDA bulletYPosArray,X
        STA screenPtrYPPos
        JSR s25C1
        JMP DrawCharacter

b1EC9   LDA bulletXPosArray,X
        STA screenPtrXPos
        LDA bulletYPosArray,X
        STA screenPtrYPPos
        LDA #$20
        STA charToDraw
        JSR s25C1
        JSR DrawCharacter
        INC screenPtrXPos
        INC bulletXPosArray,X
        DEC bulletColorArray,X
        BNE b1EE8
        RTS 

b1EE8   LDA bulletCharArray,X
        STA charToDraw
        JSR s25C1
        JMP DrawCharacter

;------------------------------------------------
; DrawBullets3
;------------------------------------------------
DrawBullets3    
        DEC f3FE0,X
        LDA f3FE0,X
        AND #$01
        STA f3FE0,X
        BNE b1F15
        LDA bulletXPosArray,X
        STA screenPtrXPos
        LDA bulletYPosArray,X
        STA screenPtrYPPos
        LDA bulletCharArray,X
        STA charToDraw
        JSR s25C1
        JMP DrawCharacter

b1F15   LDA bulletXPosArray,X
        STA screenPtrXPos
        LDA bulletYPosArray,X
        STA screenPtrYPPos
        LDA #$20
        STA charToDraw
        JSR s25C1
        JSR DrawCharacter
        DEC screenPtrXPos
        DEC bulletXPosArray,X
        DEC bulletColorArray,X
        BNE b1F34
        RTS 

b1F34   LDA bulletCharArray,X
        STA charToDraw
        INC charToDraw
        JSR s25C1
        JMP DrawCharacter

;------------------------------------------------
; DrawBullets1
;------------------------------------------------
DrawBullets1    
        DEC f3FE0,X
        LDA f3FE0,X
        AND #$01
        STA f3FE0,X
        BNE b1F63
        LDA bulletXPosArray,X
        STA screenPtrXPos
        LDA bulletYPosArray,X
        STA screenPtrYPPos
        LDA bulletCharArray,X
        STA charToDraw
        JSR s25C1
        JMP DrawCharacter

b1F63   LDA bulletXPosArray,X
        STA screenPtrXPos
        LDA bulletYPosArray,X
        STA screenPtrYPPos
        LDA #$20
        STA charToDraw
        JSR s25C1
        JSR DrawCharacter
        DEC screenPtrYPPos
        DEC bulletYPosArray,X
        DEC bulletColorArray,X
        BNE b1F82
        RTS 

b1F82   LDA bulletCharArray,X
        STA charToDraw
        INC charToDraw
        JSR s25C1
        JMP DrawCharacter

;------------------------------------------------
; DrawBullets2
;------------------------------------------------
DrawBullets2    
        INC f3FE0,X
        LDA f3FE0,X
        AND #$01
        STA f3FE0,X
        BEQ b1FB3
        LDA bulletXPosArray,X
        STA screenPtrXPos
        LDA bulletYPosArray,X
        STA screenPtrYPPos
        LDA bulletCharArray,X
        STA charToDraw
        INC charToDraw
        JSR s25C1
        JMP DrawCharacter

b1FB3   LDA bulletXPosArray,X
        STA screenPtrXPos
        LDA bulletYPosArray,X
        STA screenPtrYPPos
        LDA #$20
        STA charToDraw
        JSR s25C1
        JSR DrawCharacter
        INC screenPtrYPPos
        INC bulletYPosArray,X
        DEC bulletColorArray,X
        BNE b1FD2
        RTS 

b1FD2   LDA bulletCharArray,X
        STA charToDraw
        JSR s25C1
        JMP DrawCharacter

;------------------------------------------------
; CheckFireBullets
;------------------------------------------------
CheckFireBullets    
        DEC a1D
        BEQ b1FE2
        RTS 

b1FE2   LDA a1A80
        STA a1D
        DEC a1E
        BEQ b1FEE
        JMP UpdateBullets

b1FEE   LDA #$0C
        STA a1E
        JSR UpdateEnergyBar

        LDA joystickInput
        AND #$80 ; Fire
        BNE FireBullets ; Fire Pressed
        JMP UpdateBullets
        ; Returns

FireBullets
        LDA a12
        STA screenPtrXPos
        LDA #$00
        STA bulletGroup
        LDA #$19
        STA screenPtrYPPos
        LDA #$75
        STA charToDraw
        LDA #$19
        STA colorToDraw
        LDA a19
        BEQ b201C
        LDA #$77
        STA charToDraw
        INC screenPtrXPos
b201C   JSR UpdateBulletArrays
        INC bulletGroup
        LDA a10
        STA screenPtrXPos
        LDA #$02
        STA screenPtrYPPos
        LDA a19
        BEQ b202F
        INC screenPtrXPos
b202F   JSR UpdateBulletArrays
        INC bulletGroup
        LDA #$02
        STA screenPtrXPos
        LDA a17
        STA screenPtrYPPos
        LDA #$71
        STA charToDraw
        LDA #$16
        STA colorToDraw
        LDA a18
        BEQ b204C
        LDA #$73
        STA charToDraw
b204C   JSR UpdateBulletArrays
        INC bulletGroup
        LDA #$16
        STA screenPtrXPos
        LDA a15
        STA screenPtrYPPos
        LDA a18
        BEQ b205D
b205D   JSR UpdateBulletArrays
        JMP UpdateBullets

;------------------------------------------------
; UpdateBulletArrays
;------------------------------------------------
UpdateBulletArrays    
        LDX #$00
b2065   LDA bulletColorArray,X
        BEQ b2070
        INX 
        CPX #$10
        BNE b2065
        RTS 

b2070   LDA colorToDraw
        STA bulletColorArray,X
        LDA screenPtrXPos
        STA bulletXPosArray,X
        LDA screenPtrYPPos
        STA bulletYPosArray,X
        LDA charToDraw
        STA bulletCharArray,X
        LDA bulletGroup
        STA bulletGroupArray,X
        LDA #$FF
        STA VICCRB   ;$900B - frequency of sound osc.2 (alto)
        LDA #$04
        STA a20
        RTS 

;-------------------------------
; UpdateBullets
;-------------------------------
UpdateBullets    
        LDA #$01
        STA colorToDraw
        LDX #$00
b2099   LDA bulletColorArray,X
        BEQ b20C6
        LDA bulletGroupArray,X
        BNE b20A9
        JSR DrawBullets1
        JMP NextBullet

b20A9   CMP #$01
        BNE b20B3
        JSR DrawBullets2
        JMP NextBullet

b20B3   CMP #$03
        BNE b20BD
        JSR DrawBullets3
        JMP NextBullet

b20BD   JSR DrawBullets4

NextBullet    
        INX 
        CPX #$10
        BNE b2099
        RTS 

b20C6   LDY #$50
b20C8   DEY 
        BNE b20C8
        JMP NextBullet


;------------------------------------------------
; PlaySound1
;------------------------------------------------
b20CE   RTS 

PlaySound1    
        LDA VICCRB   ;$900B - frequency of sound osc.2 (alto)
        AND #$80
        BEQ b20CE
        DEC VICCRB   ;$900B - frequency of sound osc.2 (alto)
        LDA VICCRB   ;$900B - frequency of sound osc.2 (alto)
        CMP #$A0
        BNE b20CE
        DEC a20
        BEQ b20EA
        LDA #$FF
        STA VICCRB   ;$900B - frequency of sound osc.2 (alto)
        RTS 

b20EA   LDA #$00
        STA VICCRB   ;$900B - frequency of sound osc.2 (alto)
b20EF   RTS 

;------------------------------------------------
; PlayBackgroundSounds
;------------------------------------------------
PlayBackgroundSounds    
        DEC a1F
        BNE b20EF
        LDA a1A7F
        STA a1F
        JSR PlaySound1
        JMP PlaySound2
        ;Returns

pulsingColorArray   .BYTE $06,$02,$04,$05,$03,$07,$01,$00
;------------------------------------------------
; AnimateTrail
;------------------------------------------------
AnimateTrail    
        LDA #$20
        STA charToDraw
        LDA #$08
        STA a0B
        LDA a09
        STA a0A
        JSR DrawExplosionTrail
        LDA #$A4
        STA charToDraw
        ; Fall through

;-------------------------------
; DrawExplosionTrails
;-------------------------------
DrawExplosionTrails    
        DEC a0A
        BEQ b2128
        DEC a0B
        BEQ b2128
        JSR DrawExplosionTrail
        JMP DrawExplosionTrails

b2128   RTS 

;------------------------------------------------
; DrawExplosionTrail
;------------------------------------------------
DrawExplosionTrail    
        LDA a0B
        AND #$07
        TAX 
        LDA pulsingColorArray,X
        STA colorToDraw
        LDA pulsingColorArrayIndex
        SEC 
        SBC a0A
        STA screenPtrXPos
        LDA a08
        STA screenPtrYPPos
        JSR OverwriteCharacter
        LDA pulsingColorArrayIndex
        CLC 
        ADC a0A
        STA screenPtrXPos
        JSR OverwriteCharacter
        LDA pulsingColorArrayIndex
        STA screenPtrXPos
        LDA a08
        SEC 
        SBC a0A
        STA screenPtrYPPos
        JSR OverwriteCharacter
        LDA a08
        CLC 
        ADC a0A
        STA screenPtrYPPos
;------------------------------------------------
; OverwriteCharacter
;------------------------------------------------
OverwriteCharacter    
        LDA screenPtrXPos
        AND #$80
        BEQ b2167
b2166   RTS 

b2167   LDA screenPtrXPos
        CMP #$19
        BPL b2166
        LDA screenPtrYPPos
        AND #$80
        BNE b2166
        LDA screenPtrYPPos
        CMP #$1C
        BPL b2166
        JSR GetCharAtCurrentPos
        CMP #$A4
        BEQ b2184
        CMP #$20
        BNE b2166
b2184   JMP DrawCharacter

;------------------------------------------------
; s2187
;------------------------------------------------
s2187    
        LDA #$20
        STA a09
b218B   LDA a10
        STA pulsingColorArrayIndex
        LDA #$80
        ADC a09
        STA VICCRD   ;$900D - frequency of sound osc.4 (noise)
        LDA a09
        CLC 
        LSR 
        STA a0B
        LDA #$10
        SEC 
        SBC a0B
        STA VICCRE   ;$900E - sound volume
        LDA a11
        STA a08
        JSR AnimateTrail
        LDA a12
        STA pulsingColorArrayIndex
        LDA a13
        STA a08
        JSR AnimateTrail
        LDA a14
        STA pulsingColorArrayIndex
        LDA a15
        STA a08
        JSR AnimateTrail
        LDA a16
        STA pulsingColorArrayIndex
        LDA a17
        STA a08
        JSR AnimateTrail
        LDX #$02
        LDY #$00
b21D0   DEY 
        BNE b21D0
        DEX 
        BNE b21D0
        DEC a09
        BNE b218B
        LDA #$00
        STA VICCRD   ;$900D - frequency of sound osc.4 (noise)
        RTS 

;-------------------------------
; PlayNewLevelSounds
;-------------------------------
PlayNewLevelSounds    
        LDA #$0F
        STA VICCRE   ;$900E - sound volume
b21E5   LDA #$00
        STA VICCRA   ;$900A - frequency of sound osc.1 (bass)
        LDA #$90
        STA VICCRB   ;$900B - frequency of sound osc.2 (alto)
b21EF   DEC VICCRA   ;$900A - frequency of sound osc.1 (bass)
        INC VICCRB   ;$900B - frequency of sound osc.2 (alto)
        LDY #$C0
b21F7   DEY 
        BNE b21F7
        LDA VICCRB   ;$900B - frequency of sound osc.2 (alto)
        BNE b21EF
        DEC VICCRE   ;$900E - sound volume
        DEC VICCRE   ;$900E - sound volume
        DEC VICCRE   ;$900E - sound volume
        BNE b21E5
        LDA #$00
        STA VICCRA   ;$900A - frequency of sound osc.1 (bass)
        STA VICCRB   ;$900B - frequency of sound osc.2 (alto)
        LDA #$0F
        STA VICCRE   ;$900E - sound volume
        RTS 

;------------------------------------------------
; Looks like an interrupt handler
;------------------------------------------------
p2218   LDX #$04
b221A   INC f96DC,X
        LDA f96DC,X
        AND #$07
        STA f96DC,X
        INC f96E1,X
        LDA f96E1,X
        AND #$07
        STA f96E1,X
        STA a96D3
        DEX 
        BNE b221A
        DEC a21
        BEQ b223D
        JMP ROM_IRQ  ;$EABF - IRQ interrupt handler

b223D   LDA #$07
        STA a21
        INC a22
        LDA a22
        AND #$07
        STA a22
        TAX 
        LDA a23
        STA a0E
        LDA a24
        CLC 
        ADC #$84
        STA a0F
        LDY #$00
        LDA pulsingColorArray,X
b225A   STA (p0E),Y
        INY 
        CPY #$08
        BNE b225A
        LDA a22
        EOR #$07
        TAX 
        LDA pulsingColorArray,X
        LDY #$03
b226B   STA f96BE,Y
        DEY 
        BNE b226B
        JMP ROM_IRQ  ;$EABF - IRQ interrupt handler

f2274   .BYTE $00,$04,$20,$1E,$10,$14,$0A,$0A
        .BYTE $14,$0F,$0F,$1E,$00,$00,$00,$0C
        .BYTE $0C,$0C,$0C

;------------------------------------------------
; UpdateEnemyPositions
;------------------------------------------------
UpdateEnemyPositions    
        DEC a26
        BEQ b228C
        RTS 

b228C   LDA a1A81
        STA a26

        LDX #$00
b2293   LDA f3E00,X
        BEQ b22A4
        DEC f3EE0,X
        BNE b22A4
        TXA 
        PHA 
        JSR EnemyAnimationRoutine
        PLA 
        TAX 
b22A4   INX 
        CPX #$20
        BNE b2293

        RTS 

;------------------------------------------------
; EnemyAnimationRoutine
;------------------------------------------------
EnemyAnimationRoutine    
        LDA f3E00,X
        TAY 
        LDA f2274,Y
        STA f3EE0,X
        LDA f3E00,X
        CMP #$01
        BEQ b22BE
        JMP j23C4

b22BE   LDA #$01
        STA colorToDraw
        LDA #$B0
        STA VICCRD   ;$900D - frequency of sound osc.4 (noise)
        LDA f3EA0,X
        EOR #$0F
        STA VICCRE   ;$900E - sound volume
        INC f3EC0,X
        LDA f3EC0,X
        AND #$01
        STA f3EC0,X
        BEQ b22DF
        JMP DrawEnemies

b22DF   LDA #$20
        STA charToDraw
        LDA f3E20,X
        SEC 
        SBC f3EA0,X
        STA screenPtrXPos
        LDA f3E40,X
        SEC 
        SBC f3EA0,X
        STA screenPtrYPPos
        JSR UpdateEnemyFragment
        LDA screenPtrXPos
        CLC 
        ADC f3EA0,X
        ADC f3EA0,X
p2301   STA screenPtrXPos
        JSR UpdateEnemyFragment
        LDA screenPtrYPPos
        CLC 
        ADC f3EA0,X
        ADC f3EA0,X
        STA screenPtrYPPos
        JSR UpdateEnemyFragment
        LDA f3E20,X
        SEC 
        SBC f3EA0,X
        STA screenPtrXPos
        JSR UpdateEnemyFragment
        DEC f3EA0,X

;-------------------------------
; DrawEnemies
;-------------------------------
DrawEnemies    
        LDA f3EA0,X
        BNE b2337
        LDA f3E80,X
        STA f3E00,X
        INC f3EA0,X
        LDA #$00
        STA VICCRD   ;$900D - frequency of sound osc.4 (noise)
        RTS 

b2337   LDA f3E20,X
        SEC 
        SBC f3EA0,X
        STA screenPtrXPos
        LDA f3E40,X
        SEC 
        SBC f3EA0,X
        STA screenPtrYPPos
        LDA f3EC0,X
        CLC 
        ADC #$1B
        STA charToDraw
        JSR UpdateEnemyFragment
        LDA screenPtrXPos
        CLC 
        ADC f3EA0,X
        ADC f3EA0,X
        STA screenPtrXPos
        INC charToDraw
        INC charToDraw
        JSR UpdateEnemyFragment
        LDA screenPtrYPPos
        CLC 
        ADC f3EA0,X
        ADC f3EA0,X
        STA screenPtrYPPos
        LDA charToDraw
        CLC 
        ADC #$0A
        STA charToDraw
        JSR UpdateEnemyFragment
        LDA f3E20,X
        SEC 
        SBC f3EA0,X
        STA screenPtrXPos
        DEC charToDraw
        DEC charToDraw

;------------------------------------------------
; UpdateEnemyFragment
;------------------------------------------------
UpdateEnemyFragment    
        LDA screenPtrXPos
        AND #$80
        BEQ b238F
b238E   RTS 

b238F   LDA screenPtrXPos
        CMP #$19
        BPL b238E
        LDA screenPtrYPPos
        AND #$80
        BNE b238E
        LDA screenPtrYPPos
        CMP #$1E
        BPL b238E
        TXA 
        PHA 
        JSR GetCharAtCurrentPos
        LDX #$0A
b23A8   CMP f23B9,X
        BEQ b23B3
        DEX 
        BNE b23A8
        PLA 
        TAX 
        RTS 

b23B3   JSR DrawCharacter
        PLA 
        TAX 
        RTS 

f23B9   .BYTE $00,$20,$1B,$1C,$1D,$1E,$25,$26
        .BYTE $27,$28,$AF
;-------------------------------
; j23C4
;-------------------------------
j23C4    
        CMP #$10
        BNE b23CB
        JMP j2637

b23CB   CMP #$06
        BNE b23D2
        JMP j2A58

b23D2   CMP #$07
        BNE b23D9
        JMP j2D6D

b23D9   CMP #$09
        BNE b23E0
        JMP j3292

b23E0   LDY f3E00,X
        LDA f23F7,Y
        STA colorToDraw
        JMP j2403

enemyArray   .BYTE $00,$00,$80,$85,$8A,$8F,$00,$00
        .BYTE $94,$09,$80,$8A
f23F7   .BYTE $01,$01,$07,$05,$03,$02,$01,$05
        .BYTE $04,$09,$06,$00
;-------------------------------
; j2403
;-------------------------------
j2403    
        INC f3EC0,X
        LDA f3EC0,X
        AND #$01
        STA f3EC0,X
        LDA f3E60,X
        CMP #$00
        BEQ b2418
        JMP j2463

b2418   LDA f3E40,X
        CMP #$01
        BNE b2422
        JMP j25A9

b2422   LDA f3EC0,X
        AND #$01
        BNE b2447
        DEC f3E40,X
        LDA enemyArray,Y
        STA charToDraw
        LDA f3E40,X
        STA screenPtrYPPos
        LDA f3E20,X
        STA screenPtrXPos
        JSR DrawCharacter
        LDA #$20
        STA charToDraw
        INC screenPtrYPPos
        JMP DrawCharacter

b2447   LDA enemyArray,Y
        CLC 
        ADC #$03
        STA charToDraw
        LDA f3E40,X
        STA screenPtrYPPos
        LDA f3E20,X
        STA screenPtrXPos
        JSR DrawCharacter
        INC charToDraw
        DEC screenPtrYPPos
        JMP DrawCharacter

;-------------------------------
; j2463
;-------------------------------
j2463    
        CMP #$01
        BEQ b246A
        JMP j24F2

b246A   LDA f3EC0,X
        AND #$01
        BNE b2497
        LDA enemyArray,Y
        STA charToDraw
        LDA f3E20,X
        STA screenPtrXPos
        LDA f3E40,X
        STA screenPtrYPPos
        JSR DrawCharacter
        LDA #$20
        STA charToDraw
        DEC screenPtrYPPos
        JSR DrawCharacter
        LDA f3E40,X
        CMP #$1A
        BEQ b2494
        RTS 

b2494   JMP j25A9

b2497   INC f3E40,X
        LDA f3E40,X
        STA screenPtrYPPos
        LDA f3E20,X
        STA screenPtrXPos
        LDA enemyArray,Y
        CLC 
        ADC #$03
        STA charToDraw
        JSR DrawCharacter
        INC charToDraw
        DEC screenPtrYPPos
        JMP DrawCharacter

        LDX #$08
b24B8   LDA #$01
        STA f3E00,X
        STA f3EC0,X
        JSR UpdateScrPtrYPosWithX
        AND #$03
        STA f3E60,X
        JSR UpdateScrPtrYPosWithX
        AND #$03
        CLC 
        ADC #$02
        STA f3E80,X
        JSR UpdateScrPtrYPosWithX
        AND #$0F
        CLC 
        ADC #$06
        STA f3E40,X
        LDA #$10
        STA f3EA0,X
        LDA fC000,X
        AND #$0F
        CLC 
        ADC #$06
        STA f3E20,X
        DEX 
        BNE b24B8
        RTS 

;-------------------------------
; j24F2
;-------------------------------
j24F2    
        CMP #$02
        BEQ b24F9
        JMP j2553

b24F9   LDA f3EC0,X
        AND #$01
        BEQ b252E
        LDA enemyArray,Y
        STA charToDraw
        LDA f3E20,X
        STA screenPtrXPos
        LDA f3E40,X
        STA screenPtrYPPos
        JSR DrawCharacter
        LDA f3E20,X
        CMP #$17
        BNE b251A
        RTS 

b251A   LDA #$20
        STA charToDraw
        INC screenPtrXPos
        JSR DrawCharacter
        LDA f3E20,X
        CMP #$01
        BEQ b252B
        RTS 

b252B   JMP j25B8

b252E   LDA f3E20,X
        CMP #$01
        BEQ b252B
        DEC f3E20,X
        LDA enemyArray,Y
        STA charToDraw
        INC charToDraw
        LDA f3E20,X
        STA screenPtrXPos
        LDA f3E40,X
        STA screenPtrYPPos
        JSR DrawCharacter
        INC screenPtrXPos
        INC charToDraw
        JMP DrawCharacter

;-------------------------------
; j2553
;-------------------------------
j2553    
        LDA f3E20,X
        CMP #$17
        BNE b255D
        JMP j25B8

b255D   LDA f3EC0,X
        AND #$01
        BNE b2582
        INC f3E20,X
        LDA f3E20,X
        STA screenPtrXPos
        LDA f3E40,X
        STA screenPtrYPPos
        LDA enemyArray,Y
        STA charToDraw
        JSR DrawCharacter
        LDA #$20
        STA charToDraw
        DEC screenPtrXPos
        JMP DrawCharacter

b2582   LDA f3E20,X
        STA screenPtrXPos
        LDA f3E40,X
        STA screenPtrYPPos
        LDA enemyArray,Y
        STA charToDraw
        INC charToDraw
        JSR DrawCharacter
        INC charToDraw
        INC screenPtrXPos
        JMP DrawCharacter

;------------------------------------------------
; UpdateScrPtrYPosWithX
;------------------------------------------------
UpdateScrPtrYPosWithX    
        STX screenPtrYPPos
        INC a27
        LDX a27
        LDA fC000,X
        LDX screenPtrYPPos
        RTS 

;-------------------------------
; j25A9
;-------------------------------
j25A9    
        JSR UpdateScrPtrYPosWithX
        AND #$03
        BEQ j25A9
        CMP #$01
        BEQ j25A9
        STA f3E60,X
        RTS 

;-------------------------------
; j25B8
;-------------------------------
j25B8    
        JSR UpdateScrPtrYPosWithX
        AND #$01
        STA f3E60,X
        RTS 

;------------------------------------------------
; s25C1
;------------------------------------------------
s25C1    
        LDA bulletXPosArray,X
        STA screenPtrXPos
        LDA bulletYPosArray,X
        STA screenPtrYPPos
        TXA 
        PHA 
        JSR GetCharAtCurrentPos
        AND #$80
        BNE b25D7
        PLA 
        TAX 
        RTS 

b25D7   PLA 
        TAX 
        LDY #$00
        STY a29
b25DD   LDA bulletXPosArray,X
        CMP f3E20,Y
        BEQ b25FA
;-------------------------------
; j25E5
;-------------------------------
j25E5    
        INY 
        CPY #$20
        BNE b25DD
        LDA a29
        BEQ b25F9
        PLA 
        PLA 
        LDA #$F0
        STA VICCRC   ;$900C - frequency of sound osc.3 (soprano)
        LDA #$02
        STA a28
b25F9   RTS 

b25FA   LDA bulletYPosArray,X
        CMP f3E40,Y
        BEQ b2605
b2602   JMP j25E5

b2605   LDA f3E00,Y
        BEQ b2602
        CMP #$01
        BEQ b2602
        CMP #$10
        BEQ b2602
        CMP #$07
        BEQ b262D
        LDA #$20
        STA charToDraw
        JSR DrawCharacter
        LDA #$10
        STA f3E00,Y
        STA f3EA0,Y
        LDA #$01
        STA f3EC0,Y
        STA f3EE0,Y
b262D   LDA #$00
        STA bulletColorArray,X
        INC a29
        JMP j25E5

;-------------------------------
; j2637
;-------------------------------
j2637    
        LDA f3EA0,X
        CMP #$10
        BEQ b2641
        JMP j267C

b2641   LDA f3E20,X
        STA screenPtrXPos
        LDA f3E40,X
        STA screenPtrYPPos
        LDA #$20
        STA charToDraw
        JSR s266A
        INC screenPtrXPos
        JSR s266A
        INC screenPtrYPPos
        JSR s266A
        LDA #$00
        STA f3EA0,X
        DEC screenPtrXPos
        JSR s266A
        DEC screenPtrYPPos
        DEC screenPtrYPPos
;------------------------------------------------
; s266A
;------------------------------------------------
s266A    
        TXA 
        PHA 
        JSR GetCharAtCurrentPos
        AND #$80
        BNE b2676
        PLA 
        TAX 
        RTS 

b2676   JSR DrawCharacter
        PLA 
        TAX 
        RTS 

;-------------------------------
; j267C
;-------------------------------
j267C    
        DEC f3EC0,X
        LDA f3EC0,X
        AND #$01
        STA f3EC0,X
        BNE b268C
        JMP j26E2

b268C   LDA f3E20,X
        SEC 
        SBC f3EA0,X
        STA screenPtrXPos
        LDA f3E40,X
        SEC 
        SBC f3EA0,X
        STA screenPtrYPPos
        LDA #$20
        STA charToDraw
        JSR UpdateEnemyFragment
        LDA screenPtrXPos
        CLC 
        ADC f3EA0,X
        ADC f3EA0,X
        STA screenPtrXPos
        JSR UpdateEnemyFragment
        LDA screenPtrYPPos
        CLC 
        ADC f3EA0,X
        ADC f3EA0,X
        STA screenPtrYPPos
        JSR UpdateEnemyFragment
        LDA f3E20,X
        SEC 
        SBC f3EA0,X
        STA screenPtrXPos
        JSR UpdateEnemyFragment
        INC f3EA0,X
        LDA f3EA0,X
        CMP #$10
        BNE j26E2
        JSR s2D0D
        TXA 
        PHA 
        JSR s274C
        PLA 
        TAX 
        RTS 

;-------------------------------
; j26E2
;-------------------------------
j26E2    
        LDA f3EA0,X
        EOR #$0F
        CLC 
        ROR 
        TAY 
        LDA pulsingColorArray,Y
        STA colorToDraw
        JMP b2337

;-------------------------------
; PlaySound2
;-------------------------------
PlaySound2    
        LDA a28
        BNE b26F7
b26F6   RTS 

b26F7   DEC VICCRC   ;$900C - frequency of sound osc.3 (soprano)
        LDA VICCRC   ;$900C - frequency of sound osc.3 (soprano)
        CMP #$D0
        BNE b26F6
        LDA #$F0
        STA VICCRC   ;$900C - frequency of sound osc.3 (soprano)
        DEC a28
        BNE b26F6
        LDA #$00
        STA VICCRC   ;$900C - frequency of sound osc.3 (soprano)
        RTS 

;-------------------------------
; j2710
;-------------------------------
j2710    
        LDX #$00
b2712   LDA f3E00,X
        BEQ b271D
        INX 
        CPX #$20
        BNE b2712
        RTS 

b271D   LDA screenPtrXPos
        STA f3E80,X
        CMP #$09
        BNE b272A
        LDA #$02
        STA charToDraw
b272A   LDA #$01
        STA f3E00,X
        STA f3EE0,X
        LDA screenPtrYPPos
        STA f3E60,X
        LDA charToDraw
        STA f3E20,X
        LDA colorToDraw
        STA f3E40,X
        LDA #$10
        STA f3EA0,X
        LDA #$00
        STA f3EC0,X
b274B   RTS 

;------------------------------------------------
; s274C
;------------------------------------------------
s274C    
        LDA #$00
        STA f3E00,X
        LDA f3E80,X
        CMP #$02
        BEQ b274B
        CMP #$0B
        BEQ b2760
        CMP #$03
        BNE b277B
b2760   LDA f3E20,X
        STA charToDraw
        LDA f3E40,X
        STA colorToDraw
        LDA #$02
        STA screenPtrXPos
        JSR UpdateScrPtrYPosWithX
        AND #$01
        CLC 
        ADC #$02
        STA screenPtrYPPos
        JMP j2710

b277B   CMP #$04
        BNE b2799
        LDA f3E20,X
        STA charToDraw
        LDA f3E40,X
        STA colorToDraw
        LDA #<p0203
        STA screenPtrXPos
        LDA #>p0203
        STA screenPtrYPPos
        JSR j2710
        INC screenPtrYPPos
        JMP j2710

b2799   CMP #$08
        BNE b274B
        LDA f3E20,X
        STA charToDraw
        LDA f3E40,X
        STA colorToDraw
        LDA #$08
        STA screenPtrXPos
        JSR UpdateScrPtrYPosWithX
        AND #$03
        STA screenPtrYPPos
        JMP j2710

;------------------------------------------------
; MoveShip
;------------------------------------------------
MoveShip    
        LDA a2A
        BEQ b27C0

        ; Check if colliiding with enemy
        JSR GetCharAtCurrentPos
        AND #$80 ; All enemies start with $8
        BNE b27C6 ; Collided with enemy

b27C0   JMP DrawCharacter

b27C3   JMP j288A

b27C6   LDA a36
        BNE b27C3

        LDA dsplyZapsLeft
        CMP #$30
        BEQ b27D7
        DEC dsplyZapsLeft
        JMP b27C3

b27D7   JMP PlayerKilled

;------------------------------------------------
; s27DA
;------------------------------------------------
s27DA    
        LDA #$00
        STA a2A
        STA VICCRA   ;$900A - frequency of sound osc.1 (bass)
        STA VICCRB   ;$900B - frequency of sound osc.2 (alto)
        STA VICCRC   ;$900C - frequency of sound osc.3 (soprano)
        LDA #$01
        STA a1A
        JSR MoveShips
        JSR s2867
        LDA #$01
        STA a09
b27F5   LDA a10
        STA pulsingColorArrayIndex
        LDA a09
        CLC 
        LSR 
        EOR #$0F
        STA VICCRE   ;$900E - sound volume
        LDA #$A0
        SBC a09
        STA VICCRD   ;$900D - frequency of sound osc.4 (noise)
        STA VICCRA   ;$900A - frequency of sound osc.1 (bass)
        LDA a11
        STA a08
        JSR DrawEnemyExplosion
        LDA a12
        STA pulsingColorArrayIndex
        LDA a13
        STA a08
        JSR DrawEnemyExplosion
        LDA a14
        STA pulsingColorArrayIndex
        LDA a15
        STA a08
        JSR DrawEnemyExplosion
        LDA a16
        STA pulsingColorArrayIndex
        LDA a17
        STA a08
        JSR DrawEnemyExplosion
        LDX #$02
b2836   LDY #$80
b2838   DEY 
        BNE b2838
        DEX 
        BNE b2836
        JSR s2933
        INC a09
        LDA a09
        CMP #$23
        BNE b27F5
        LDA a36
        BEQ b2850
        JMP j3414

b2850   RTS 

;------------------------------------------------
; DrawEnemyExplosion
;------------------------------------------------
DrawEnemyExplosion    
        LDA #$A4
        STA charToDraw
        LDA #$08
        STA a0B
        LDA a09
        STA a0A
        JSR DrawExplosionTrails
        LDA #$20
        STA charToDraw
        JMP DrawExplosionTrail

;------------------------------------------------
; s2867
;------------------------------------------------
s2867    
        LDX #$00
b2869   LDA bulletColorArray,X
        BEQ b2884
        LDA bulletXPosArray,X
        STA screenPtrXPos
        LDA bulletYPosArray,X
        STA screenPtrYPPos
        LDA #$20
        STA charToDraw
        LDA #$00
        STA bulletColorArray,X
        JSR DrawCharacter
b2884   INX 
        CPX #$10
        BNE b2869
        RTS 

;-------------------------------
; j288A
;-------------------------------
j288A    
        JSR s27DA

;-------------------------------
; RestartLevel
;-------------------------------
RestartLevel    
        LDA #$00
        STA VICCRD   ;$900D - frequency of sound osc.4 (noise)
        STA a2A
        STA a1A
        STA VICCRA   ;$900A - frequency of sound osc.1 (bass)
        JSR ClearFullScreen
        JSR s28ED
        LDX #$00
        STX a51
b28A3   LDA f3E00,X
        BEQ b28C3
        CMP #$07
        BNE b28AE
        INC a51
b28AE   LDA #$10
        STA f3E00,X
        STA f3EA0,X
        LDA #$02
        STA f3E80,X
        LDA #$01
        STA f3EC0,X
        STA f3EE0,X
b28C3   INX 
        CPX #$20
        BNE b28A3
        LDY #$26
b28CA   TYA 
        PHA 
        JSR s2933
        LDY #$C0
b28D1   DEY 
        BNE b28D1
        PLA 
        TAY 
        DEY 
        BNE b28CA
        JSR ClearFullScreen
        JSR s2187
        JSR s298E
        LDA #$0F
        STA VICCRE   ;$900E - sound volume
        LDX #$F8
        TXS 
        JMP MainGameLoop

;------------------------------------------------
; s28ED
;------------------------------------------------
s28ED    
        LDA #$06
        STA a50
        LDA #$0F
        STA VICCRE   ;$900E - sound volume
b28F6   LDA #$00
        STA VICCRD   ;$900D - frequency of sound osc.4 (noise)
;-------------------------------
; j28FB
;-------------------------------
j28FB    
        DEC VICCRD   ;$900D - frequency of sound osc.4 (noise)
        LDA VICCRD   ;$900D - frequency of sound osc.4 (noise)
        CMP #$CF
        BEQ b2910
        JSR b228C
        LDY #$30
b290A   DEY 
        BNE b290A
        JMP j28FB

b2910   LDA VICCR4   ;$9004 - raster beam location (bits 7-0)
        BNE b2910
        LDA VICCRF   ;$900F - screen colors: background, border & inverse
        CMP #$08
        BNE b2924
        LDA #$2A
        STA VICCRF   ;$900F - screen colors: background, border & inverse
        JMP j2929

b2924   LDA #$08
        STA VICCRF   ;$900F - screen colors: background, border & inverse
;-------------------------------
; j2929
;-------------------------------
j2929    
        DEC a50
        BNE b28F6
        LDA #$00
        STA VICCRD   ;$900D - frequency of sound osc.4 (noise)
        RTS 

;------------------------------------------------
; s2933
;------------------------------------------------
s2933    
        LDX #$00
b2935   TXA 
        PHA 
        LDA f3E00,X
        BEQ b2943
        CMP #$07
        BEQ b2943
        JSR EnemyAnimationRoutine
b2943   PLA 
        TAX 
        INX 
        CPX #$20
        BNE b2935
        RTS 

;------------------------------------------------
; ResetEnergyBar
;------------------------------------------------
ResetEnergyBar    
        LDA #>p1C08
        STA screenPtrYPPos
        LDA #<p1C08
        STA screenPtrXPos
        LDX #$00
b2955   LDA f296E,X
        STA charToDraw
        LDA f297F,X
        STA colorToDraw
        JSR DrawCharacter
        INC screenPtrXPos
        INX 
        CPX #$0F
        BNE b2955
        LDA #$01
        STA curEnergyBarLevel
        RTS 

f296E   .BYTE $A5,$A7,$A7,$A7,$A7,$A7,$A7,$A7
        .BYTE $A7,$A7,$A7,$A7,$A7,$A7,$A7,$A7
        .BYTE $A7
f297F   .BYTE $05,$05,$05,$05,$05,$05,$05,$05
        .BYTE $05,$05,$05,$02,$02,$02,$02
;------------------------------------------------
; s298E
;------------------------------------------------
s298E    
        LDA a51
        BNE b2993
        RTS 

b2993   JSR UpdateScrPtrYPosWithX
        AND #$07
        ADC #$09
        STA charToDraw
        JSR UpdateScrPtrYPosWithX
        AND #$07
        ADC #$09
        STA colorToDraw
        JSR UpdateScrPtrYPosWithX
        AND #$03
        STA screenPtrYPPos
        LDA #$07
        STA screenPtrXPos
        JSR j2710
        DEC a51
        BNE b2993
        RTS 

;------------------------------------------------
; WasteSomeCycles
;------------------------------------------------
WasteSomeCycles    
        INC a2C
        BNE b29BE
        INC a2D
b29BE   LDY #$00
        LDA (p2C),Y
        RTS 

;-------------------------------
; j29C3
;-------------------------------
j29C3    
        DEC a2B
        BEQ b29C8
        RTS 

b29C8   JSR UpdateScrPtrYPosWithX
        AND #$03
        ADC #$01
        STA a2B
        JSR UpdateScrPtrYPosWithX
        AND #$0F
        TAY 
        LDA f29E8,Y
        STA screenPtrXPos
        JSR UpdateScrPtrYPosWithX
        AND #$07
        ADC #$01
        STA a50
        JMP j2A21

f29E8   .BYTE $02,$03,$04,$05,$06,$08,$09,$0A
        .BYTE $0B,$03,$04,$09,$0B,$0A,$02,$08
;------------------------------------------------
; s29F8
;------------------------------------------------
s29F8    
        DEC a2E
        BEQ b29FD
b29FC   RTS 

b29FD   LDA #$20
        STA a2E
        LDY #$00
        LDA (p2C),Y
        BNE b2A0A
        JMP LevelCompleteSequence

b2A0A   CMP #$FF
        BNE b2A11
        JMP j29C3

b2A11   STA screenPtrXPos
        DEC a2B
        BNE b29FC
        INY 
        LDA (p2C),Y
        STA a50
        INY 
        LDA (p2C),Y
        STA a2B
;-------------------------------
; j2A21
;-------------------------------
j2A21    
        JSR UpdateScrPtrYPosWithX
        AND #$07
        ADC #$09
        STA charToDraw
        JSR UpdateScrPtrYPosWithX
        AND #$07
        ADC #$09
        STA colorToDraw
        JSR UpdateScrPtrYPosWithX
        AND #$03
        STA screenPtrYPPos
        JSR j2710
        DEC a50
        BNE j2A21
        LDY #$00
        LDA (p2C),Y
        CMP #$FF
        BNE b2A4A
        RTS 

b2A4A   LDA a2C
        CLC 
        ADC #$03
        STA a2C
        LDA a2D
        ADC #$00
        STA a2D
        RTS 

;-------------------------------
; j2A58
;-------------------------------
j2A58    
        LDA #$01
        STA colorToDraw
        INC f3EC0,X
        LDA f3EC0,X
        AND #$01
        STA f3EC0,X
        BEQ b2A6C
        JMP j2AA8

b2A6C   LDA f3E20,X
        STA screenPtrXPos
        LDA f3E40,X
        STA screenPtrYPPos
        LDA #$20
        STA charToDraw
        JSR DrawCharacter
        LDY f3E60,X
        CPY #$00
        BNE b2A8A
        DEC f3E40,X
        INC f3E20,X
b2A8A   CPY #$01
        BNE b2A94
        INC f3E40,X
        INC f3E20,X
b2A94   CPY #$02
        BNE b2A9E
        INC f3E40,X
        DEC f3E20,X
b2A9E   CPY #$03
        BNE j2AA8
        DEC f3E40,X
        DEC f3E20,X
;-------------------------------
; j2AA8
;-------------------------------
j2AA8    
        LDA f3E20,X
        STA screenPtrXPos
        LDA f3E40,X
        STA screenPtrYPPos
        LDY f3E60,X
        CPY #$00
        BNE b2AE1
        LDA f3EC0,X
        AND #$01
        BNE b2AC7
        LDA #$99
        STA charToDraw
        JMP DrawCharacter

b2AC7   LDA #$9A
        STA charToDraw
        JSR DrawCharacter
        LDA screenPtrYPPos
        CMP a11
        BNE b2AD7
        JMP j2B53

b2AD7   LDA screenPtrXPos
        CMP a14
        BNE b2AE0
        JMP j2B61

b2AE0   RTS 

b2AE1   CPY #$01
        BNE b2B0A
        LDA f3EC0,X
        BNE b2AF1
        LDA #$9B
        STA charToDraw
        JMP DrawCharacter

b2AF1   LDA #$9C
        STA charToDraw
        JSR DrawCharacter
        LDA screenPtrXPos
        CMP a14
        BNE b2B01
        JMP j2B53

b2B01   LDA screenPtrYPPos
        CMP a13
        BNE b2AE0
        JMP j2B61

b2B0A   CPY #$02
        BNE b2B33
        LDA f3EC0,X
        BNE b2B1A
        LDA #$9A
        STA charToDraw
        JMP DrawCharacter

b2B1A   LDA #$99
        STA charToDraw
        JSR DrawCharacter
        LDA screenPtrYPPos
        CMP a13
        BNE b2B2A
        JMP j2B53

b2B2A   LDA screenPtrXPos
        CMP a16
        BNE b2AE0
        JMP j2B61

b2B33   LDA f3EC0,X
        BNE b2B3F
        LDA #$9C
        STA charToDraw
        JMP DrawCharacter

b2B3F   LDA #$9B
        STA charToDraw
        JSR DrawCharacter
        LDA screenPtrXPos
        CMP a16
        BEQ j2B53
        LDA screenPtrYPPos
        CMP a11
        BEQ j2B61
        RTS 

;-------------------------------
; j2B53
;-------------------------------
j2B53    
        INC f3E60,X
;-------------------------------
; j2B56
;-------------------------------
j2B56    
        LDA f3E60,X
        AND #$03
        STA f3E60,X
        JMP j2AA8

;-------------------------------
; j2B61
;-------------------------------
j2B61    
        DEC f3E60,X
        JMP j2B56

;------------------------------------------------
; MaterializeCharEffect
;------------------------------------------------
MaterializeCharEffect    
        LDA #$20
        STA a09
b2B6B   TXA 
        PHA 
        JSR AnimateTrail
        LDA a09
        CLC 
        ASL 
        ADC #$A0
        STA VICCRD   ;$900D - frequency of sound osc.4 (noise)
        LDY #$C0
b2B7B   DEY 
        BNE b2B7B
        PLA 
        TAX 
        DEC a09
        BNE b2B6B
        TXA 
        STA charToDraw
        LDA #$01
        STA colorToDraw
        DEC screenPtrYPPos
        JMP DrawCharacter

;------------------------------------------------
; PrepareToDieNewLevelEffect
;------------------------------------------------
PrepareToDieNewLevelEffect    
        LDA #>p0505
        STA a08
        LDA #<p0505
        STA pulsingColorArrayIndex
        LDX #$00
        LDA a36
        BEQ b2B9F
        RTS 

b2B9F   TXA 
        PHA 
        LDA txtPrepareToDie,X
        AND #$3F
        TAX 
        JSR MaterializeCharEffect
        INC pulsingColorArrayIndex
        PLA 
        TAX 
        INX 
        CPX #$0E
        BNE b2B9F

        LDA #$10
        STA pulsingColorArrayIndex
        STA VICCRD   ;$900D - frequency of sound osc.4 (noise)
        JSR PlayNewLevelSounds
        JSR s3241
        JSR PulsingTextColorEffect

;------------------------------------------------
; ClearFullScreen
;------------------------------------------------
ClearFullScreen    
        LDA #$20
        STA charToDraw
        LDA a11
        STA screenPtrYPPos
b2BCB   LDA a16
        STA screenPtrXPos
b2BCF   JSR DrawCharacter
        INC screenPtrXPos
        LDA screenPtrXPos
        CMP #$18
        BNE b2BCF
        INC screenPtrYPPos
        LDA screenPtrYPPos
        CMP #$1B
        BNE b2BCB
        RTS 

txtPrepareToDie   .TEXT "PREPARE TO DIE"

;------------------------------------------------
; UpdateEnergyBar
;------------------------------------------------
UpdateEnergyBar    
        LDA joystickInput
        AND #$80
        BEQ b2C27
        LDA a2F
        CMP a12
        BEQ b2C06
        LDA a30
        CMP a17
        BEQ b2C06
        JMP b2C27

b2C06   LDX curEnergyBarLevel
        LDA dsplyEnergyBar,X
        CMP #$A5
        BEQ b2C15
        DEC dsplyEnergyBar,X
        JMP j2C41

b2C15   INX 
        CPX #$0F
        BNE b2C1D
        JMP PlayerKilled

b2C1D   STX curEnergyBarLevel
        LDA #$A6
        STA dsplyEnergyBar,X
        JMP j2C41

b2C27   LDX curEnergyBarLevel
        CPX #$01
        BEQ j2C41
        LDA dsplyEnergyBar,X
        CMP #$A6
        BEQ b2C3A
        INC dsplyEnergyBar,X
        JMP j2C41

b2C3A   LDA #$A7
        STA dsplyEnergyBar,X
        DEC curEnergyBarLevel

j2C41    
        LDA a12
        STA a2F
        LDA a17
        STA a30
        RTS 

;------------------------------------------------
; PulsingTextColorEffect
;------------------------------------------------
PulsingTextColorEffect    
        LDA pulsingColorArrayIndex
        AND #$07
        TAX 
        LDA pulsingColorArray,X
        STA colorToDraw
        LDA a16
        STA screenPtrXPos
b2C58   LDA a11
        STA screenPtrYPPos
b2C5C   JSR GetCharAtCurrentPos
        STA charToDraw
        JSR DrawCharacter
        INC screenPtrYPPos
        LDA screenPtrYPPos
        CMP a13
        BNE b2C5C
        INC screenPtrXPos
        LDA screenPtrXPos
        CMP #$18
        BNE b2C58

        LDA pulsingColorArrayIndex
        STA VICCRE   ;$900E - sound volume
        LDA #$E0
        STA VICCRC   ;$900C - frequency of sound osc.3 (soprano)
b2C7E   INC VICCRC   ;$900C - frequency of sound osc.3 (soprano)
        LDY #$80
b2C83   DEY 
        BNE b2C83
        LDA VICCRC   ;$900C - frequency of sound osc.3 (soprano)
        BNE b2C7E

        DEC pulsingColorArrayIndex
        BNE PulsingTextColorEffect

        LDA #$0F
        STA VICCRE   ;$900E - sound volume
        RTS 

;-------------------------------
; PlayerKilled
;-------------------------------
PlayerKilled    
        JSR s27DA
        JSR ClearFullScreen
        LDA #$0F
        STA VICCRE   ;$900E - sound volume
        JSR ResetEnergyBar
        DEC dsplyShipsLeft
        LDA dsplyShipsLeft
        CMP #$30
        BNE b2CB8
        LDA a37
        BEQ b2CB5
        CMP #$02
        BNE b2CB8
b2CB5   JMP DrawGameOver

b2CB8   LDX #$00
        LDA #>p0901
        STA a08
        LDA #<p0901
        STA pulsingColorArrayIndex
b2CC2   TXA 
        PHA 
        LDA txtLaserHeadsDestablized,X
        AND #$3F
        TAX 
        JSR MaterializeCharEffect
        PLA 
        TAX 
        INC pulsingColorArrayIndex
        INX 
        CPX #$17
        BNE b2CC2

        STX VICCRD   ;$900D - frequency of sound osc.4 (noise)
        JSR PlayNewLevelSounds

        LDA #$10
        STA pulsingColorArrayIndex
        JSR PulsingTextColorEffect
        JSR ClearFullScreen

        LDA a37
        BEQ b2CF3
        JSR ResetGameVariables
        LDX #$F8
        TXS 
        JMP EnterNextLevel

b2CF3   JMP RestartLevel

txtLaserHeadsDestablized   .TEXT "LASERHEADS DESTABILISED"
;------------------------------------------------
; s2D0D
;------------------------------------------------
s2D0D    
        LDA f3E80,X
        STA screenPtrXPos
        TXA 
        PHA 
        LDX screenPtrXPos
        LDY f2D53,X
        LDA f2D41,X
        TAX 
b2D1D   TYA 
        PHA 
        LDA a36
        BEQ b2D27
        PLA 
        PLA 
        TAX 
        RTS 

b2D27   LDA (p23),Y
        CLC 
        ADC #$01
        STA (p23),Y
        CMP #$3A
        BNE b2D39
        LDA #$30
        STA (p23),Y
        DEY 
        BNE b2D27
b2D39   PLA 
        TAY 
        DEX 
        BNE b2D1D
        PLA 
        TAX 
        RTS 

f2D41   .BYTE $01,$01,$03,$06,$09,$06,$06,$05
        .BYTE $04,$01,$03,$04,$05,$05,$06,$06
        .BYTE $07,$08
f2D53   .BYTE $05,$05,$05,$05,$05,$04,$04,$04
        .BYTE $04,$06,$04,$05,$05,$05,$05,$05
        .BYTE $05,$05
f2D65   .BYTE $A8,$A9,$AA,$AB,$AC,$AB,$AA
        .BYTE $A9
;-------------------------------
; j2D6D
;-------------------------------
j2D6D    
        LDA a50
        BEQ b2D72
        RTS 

b2D72   DEC f3EA0,X
        BEQ b2D7A
        JMP j2D8A

b2D7A   INC f3E60,X
        LDA f3E60,X
        AND #$07
        STA f3E60,X
        LDA #$0C
        STA f3EA0,X
;-------------------------------
; j2D8A
;-------------------------------
j2D8A    
        LDA f3E60,X
        CMP #$07
        BNE b2D94
        JSR s2DAF
b2D94   LDA f3E60,X
        TAY 
        LDA pulsingColorArray,Y
        STA colorToDraw
        LDA f2D65,Y
        STA charToDraw
        LDA f3E20,X
        STA screenPtrXPos
        LDA f3E40,X
        STA screenPtrYPPos
        JMP DrawCharacter

;------------------------------------------------
; s2DAF
;------------------------------------------------
s2DAF    
        LDA f3EC0,X
        BNE b2DCB
        LDA #$80
        STA VICCRA   ;$900A - frequency of sound osc.1 (bass)
        JSR UpdateScrPtrYPosWithX
        AND #$01
        CLC 
        ADC #$01
        STA f3EC0,X
        LDA #$01
        STA a51
        JMP j2DCF

b2DCB   LDA #$00
        STA a51
;-------------------------------
; j2DCF
;-------------------------------
j2DCF    
        LDA f3E20,X
        STA screenPtrXPos
        LDA f3E40,X
        STA screenPtrYPPos
        LDA #$01
        STA colorToDraw
        LDA f3EC0,X
        CMP #$02
        BEQ b2E10
        LDA #$20
        STA charToDraw
        LDA a51
        BEQ b2DF0
        LDA #$1F
        STA charToDraw
b2DF0   LDA #$01
        STA screenPtrXPos
b2DF4   JSR DrawCharacter
        INC screenPtrXPos
        LDA screenPtrXPos
        CMP #$17
        BNE b2DF4
        LDA f3E40,X
        CMP a17
        BEQ b2E0D
        CMP a15
        BEQ b2E0D
        JMP j2E36

b2E0D   JMP PlayerKilled

b2E10   LDA #$20
        STA charToDraw
        LDA a51
        BEQ b2E1C
        LDA #>p2301
        STA charToDraw
b2E1C   LDA #<p2301
        STA screenPtrYPPos
b2E20   JSR DrawCharacter
        INC screenPtrYPPos
        LDA screenPtrYPPos
        CMP #$1B
        BNE b2E20
        LDA f3E20,X
        CMP a12
        BEQ b2E0D
        CMP a10
        BEQ b2E0D
;-------------------------------
; j2E36
;-------------------------------
j2E36    
        LDA f3EA0,X
        CMP #$01
        BEQ b2E43
        LDA #$02
        STA f3EA0,X
        RTS 

b2E43   LDA #$00
        STA f3EC0,X
        STA VICCRA   ;$900A - frequency of sound osc.1 (bass)
        RTS 

;-------------------------------
; LevelCompleteSequence
;-------------------------------
LevelCompleteSequence    
        LDX #$00
b2E4E   LDA f3E00,X
        BEQ b2E5C
        CMP #$07
        BEQ b2E5C
        CMP #$08
        BEQ b2E5C
        RTS 

b2E5C   INX 
        CPX #$20
        BNE b2E4E
        JSR s27DA
        LDA #$00
        STA VICCRA   ;$900A - frequency of sound osc.1 (bass)
        STA VICCRB   ;$900B - frequency of sound osc.2 (alto)
        STA VICCRC   ;$900C - frequency of sound osc.3 (soprano)
        STA VICCRD   ;$900D - frequency of sound osc.4 (noise)
        STA a1A

        JSR ClearFullScreen
        JSR ResetEnergyBar
        LDA #<p0A02
        STA screenPtrXPos
        LDA #>p0A02
        STA screenPtrYPPos

        ; Draw 'Attack Wave Zapped'
        LDX #$00
b2E84   LDA txtAttackWaveZapped,X
        AND #$3F
        STA charToDraw
        LDA #$03
        STA colorToDraw
        JSR DrawCharacter
        INC screenPtrXPos
        INX 
        CPX #$15
        BNE b2E84

        ;Wait a little while.
        LDX a32
        INX 
b2E9C   INC WaitCtr1
        LDA WaitCtr1
        CMP #$3A
        BNE b2EAE
        LDA #$30
        STA WaitCtr1
        INC WaitCtr2
b2EAE   DEX 
        BNE b2E9C

        LDA dsplyZapsLeft
        CMP #$30
        BNE b2EBB
        JMP IncrementLivesPlaySound

b2EBB   PHA 
b2EBC   LDY #$04
        LDX a32
        INX 
        TXA 
        JSR s2F4A

        LDA #$02
        STA a50
b2EC9   LDA #$FC
        STA VICCRC   ;$900C - frequency of sound osc.3 (soprano)
b2ECE   LDY #$C0
b2ED0   DEY 
        BNE b2ED0
        DEC VICCRC   ;$900C - frequency of sound osc.3 (soprano)
        LDA VICCRC   ;$900C - frequency of sound osc.3 (soprano)
        CMP #$7E
        BNE b2ECE
        DEC a50
        BNE b2EC9

        DEC dsplyZapsLeft
        LDA dsplyZapsLeft
        CMP #$30
        BNE b2EBC
        PLA 
        STA dsplyZapsLeft

IncrementLivesPlaySound    
        LDA dsplyZapsLeft
        CMP #$39
        BEQ b2F03
        INC dsplyZapsLeft
        LDA dsplyZapsLeft
        CMP #$39
        BEQ b2F03
        INC dsplyZapsLeft

b2F03   LDA #$0F
        STA VICCRE   ;$900E - sound volume
b2F08   LDA #$FC
        STA VICCRA   ;$900A - frequency of sound osc.1 (bass)
b2F0D   LDY #$00
b2F0F   DEY 
        BNE b2F0F
        DEC VICCRA   ;$900A - frequency of sound osc.1 (bass)
        LDA VICCRA   ;$900A - frequency of sound osc.1 (bass)
        CMP #$A0
        BNE b2F0D
        LDA #$FF
        STA VICCRA   ;$900A - frequency of sound osc.1 (bass)
b2F21   LDY #$00
b2F23   DEY 
        BNE b2F23
        DEC VICCRA   ;$900A - frequency of sound osc.1 (bass)
        LDA VICCRA   ;$900A - frequency of sound osc.1 (bass)
        CMP #$70
        BNE b2F21
        DEC VICCRE   ;$900E - sound volume
        DEC VICCRE   ;$900E - sound volume
        LDA VICCRE   ;$900E - sound volume
        AND #$80
        BEQ b2F08
        LDA #$0F
        STA VICCRE   ;$900E - sound volume
        INC a32
        LDX #$F8
        TXS 
        JMP EnterNextLevel

;------------------------------------------------
; s2F4A
;------------------------------------------------
s2F4A    
        PHA 
        JMP b2D1D

txtAttackWaveZapped   .TEXT "ATTACK WAVE 00 ZAPPED"
        .BYTE $02,$04,$04,$02,$06,$04,$02,$06
        .BYTE $04,$02,$04,$02,$02,$04,$01,$09
        .BYTE $02,$01,$02,$04,$01,$00,$02,$06
        .BYTE $04,$06,$04,$02,$06,$04,$02,$06
        .BYTE $04,$02,$09,$01,$01,$02,$04,$01
        .BYTE $02,$04,$05,$03,$02,$01,$00,$03
        .BYTE $04,$06,$02,$04,$04,$02,$06,$04
        .BYTE $06,$04,$02,$03,$02,$02,$04,$01
        .BYTE $03,$02,$04,$04,$02,$04,$03,$02
        .BYTE $04,$02,$09,$02,$01,$02,$04,$01
        .BYTE $00,$06,$08,$04,$05,$04,$01,$05
        .BYTE $04,$01,$05,$04,$01,$09,$03,$01
        .BYTE $03,$04,$03,$03,$02,$02,$03,$02
        .BYTE $01,$06,$08,$01,$00,$04,$04,$06
        .BYTE $06,$02,$01,$05,$05,$01,$02,$04
        .BYTE $06,$03,$03,$03,$03,$02,$02,$03
        .BYTE $01,$01,$09,$04,$01,$05,$04,$01
        .BYTE $02,$04,$01,$00,$02,$04,$02,$05
        .BYTE $04,$02,$06,$06,$03,$04,$02,$06
        .BYTE $07,$01,$01,$02,$04,$04,$02,$04
        .BYTE $03,$02,$04,$02,$05,$04,$01,$09
        .BYTE $02,$01,$02,$04,$01,$00,$03,$06
        .BYTE $03,$06,$06,$06,$02,$04,$01,$05
        .BYTE $04,$01,$02,$04,$01,$05,$04,$01
        .BYTE $07,$01,$01,$09,$02,$01,$06,$06
        .BYTE $02,$04,$01,$01,$00,$03,$04,$01
        .BYTE $03,$04,$01,$03,$04,$01,$03,$04
        .BYTE $01,$03,$04,$01,$03,$04,$01,$07
        .BYTE $02,$01,$09,$04,$01,$02,$04,$03
        .BYTE $05,$04,$02,$03,$04,$02,$06,$04
        .BYTE $02,$04,$01,$02,$04,$01,$09,$02
        .BYTE $01,$02,$04,$01,$02,$04,$01,$02
        .BYTE $00,$09,$04,$02,$02,$04,$01,$02
        .BYTE $04,$04,$09,$04,$02,$02,$04,$04
        .BYTE $05,$04,$04,$00,$06,$04,$02,$06
        .BYTE $04,$02,$06,$04,$08,$07,$01,$04
        .BYTE $05,$04,$02,$04,$04,$02,$09,$03
        .BYTE $01,$03,$06,$04,$03,$06,$04,$03
        .BYTE $06,$04,$02,$08,$01,$00,$02,$04
        .BYTE $01,$02,$04,$01,$02,$04,$01,$02
        .BYTE $04,$01,$02,$04,$01,$02,$04,$01
        .BYTE $07,$02,$01,$02,$04,$01,$02,$04
        .BYTE $01,$02,$04,$01,$02,$04,$01,$05
        .BYTE $04,$01,$05,$04,$01,$09,$04,$01
        .BYTE $05,$04,$07,$06,$04,$01,$00,$06
        .BYTE $10,$06,$02,$04,$04,$02,$04,$04
        .BYTE $08,$04,$04,$03,$06,$02,$07,$02
        .BYTE $01,$02,$10,$06,$04,$02,$01,$05
        .BYTE $04,$01,$05,$04,$01,$09,$02,$01
        .BYTE $08,$04,$04,$05,$04,$01,$00,$03
        .BYTE $04,$02,$09,$04,$01,$02,$04,$01
        .BYTE $02,$04,$01,$07,$03,$06,$0A,$04
        .BYTE $01,$0A,$04,$01,$0A,$04,$01,$0A
        .BYTE $04,$01,$04,$08,$01,$02,$04,$01
        .BYTE $03,$04,$01,$04,$04,$01,$05,$04
        .BYTE $01,$06,$04,$01,$09,$06,$01,$0A
        .BYTE $04,$01,$00,$0A,$04,$02,$04,$06
        .BYTE $06,$07,$01,$01,$09,$06,$01,$03
        .BYTE $06,$05,$04,$04,$04,$02,$04,$01
        .BYTE $05,$04,$01,$0A,$04,$01,$0A,$04
        .BYTE $01,$07,$01,$01,$08,$04,$02,$08
        .BYTE $04,$08,$07,$02,$01,$0A,$04,$01
        .BYTE $0A,$14,$01,$09,$04,$01,$00,$0A
        .BYTE $06,$03,$04,$04,$02,$02,$04,$06
        .BYTE $07,$01,$01,$09,$04,$01,$05,$06
        .BYTE $02,$0A,$04,$01,$09,$06,$05,$07
        .BYTE $02,$01,$03,$05,$02,$04,$05,$02
        .BYTE $02,$04,$08,$0A,$14,$01,$09,$08
        .BYTE $01,$00,$0A,$04,$02,$07,$01,$01
        .BYTE $0A,$04,$02,$07,$01,$01,$0A,$05
        .BYTE $02,$07,$01,$01,$0A,$05,$02,$07
        .BYTE $01,$01,$0A,$05,$02,$09,$06,$01
        .BYTE $06,$06,$01,$09,$08,$01,$0A,$06
        .BYTE $01,$03,$06,$01,$09,$04,$01,$06
        .BYTE $06,$01,$06,$06,$01,$00,$0B,$04
        .BYTE $05,$0A,$06,$01,$09,$04,$01,$06
        .BYTE $0C,$06,$07,$01,$01,$03,$05,$06
        .BYTE $0B,$04,$02,$09,$04,$01,$03,$04
        .BYTE $01,$09,$06,$01,$00,$04,$04,$05
        .BYTE $0B,$04,$05,$06,$06,$01,$06,$06
        .BYTE $01,$06,$06,$01,$06,$06,$01,$06
        .BYTE $06,$01,$09,$08,$01,$04,$04,$02
        .BYTE $0A,$0C,$01,$00,$0A,$06,$02,$03
        .BYTE $06,$04,$06,$04,$01,$06,$04,$01
        .BYTE $0B,$06,$01,$09,$06,$01,$04,$04
        .BYTE $04,$07,$01,$06,$05,$08,$01,$03
        .BYTE $02,$01,$03,$02,$01,$03,$02,$01
        .BYTE $03,$02,$01,$09,$06,$01,$04,$02
        .BYTE $01,$0B,$02,$01,$0A,$08,$01,$07
        .BYTE $01,$04,$02,$04,$01,$03,$04,$01
        .BYTE $06,$06,$01,$09,$04,$01,$0A,$08
        .BYTE $01,$00,$FF,$FF,$FF,$FF
;------------------------------------------------
; s3241
;------------------------------------------------
s3241    
        LDA #$01
        STA colorToDraw
        LDA a36
        BEQ b324A
        RTS 

b324A   LDA #>p0C03
        STA screenPtrYPPos
        LDA #<p0C03
        STA screenPtrXPos
        LDX #$00
b3254   LDA txtAttackSequence,X
        AND #$3F
        STA charToDraw
        JSR DrawCharacter
        INC screenPtrXPos
        INX 
        CPX #$12
        BNE b3254
        LDX a32
        INX 
b3268   INC a1140
        LDA a1140
        CMP #$3A
        BNE b327A
        LDA #$30
        STA a1140
        INC a113F
b327A   DEX 
        BNE b3268
        JMP j38EB

txtAttackSequence   .TEXT "ATTACK SEQUENCE 00"
;-------------------------------
; j3292
;-------------------------------
j3292    
        INC f3EC0,X
        LDA f3EC0,X
        AND #$01
        STA f3EC0,X
        BNE b32C6
        LDA f3EA0,X
        AND #$80
        BNE b32C6
        LDA f3E20,X
        STA screenPtrXPos
        LDA f3E40,X
        STA screenPtrYPPos
        LDA #$20
        STA charToDraw
        JSR DrawCharacter
        INC f3E20,X
        LDA f3E20,X
        CMP #$17
        BNE b32C6
        LDA #$90
        STA f3EA0,X
b32C6   LDA f3E20,X
        STA screenPtrXPos
        LDA f3E40,X
        STA screenPtrYPPos
        LDA f3EA0,X
        AND #$80
        BEQ b330E
        LDA #$3C
        STA charToDraw
        DEC f3EA0,X
        LDA f3EA0,X
        CMP #$7F
        BEQ b32F0
        AND #$07
        TAY 
        LDA pulsingColorArray,Y
        STA colorToDraw
        JMP j3304

b32F0   LDA #$00
        STA colorToDraw
        LDA #$00
        STA f3E00,X
        STX a51
        LDX #$05
        LDY #$03
        LDA a51
        JSR s2F4A
;-------------------------------
; j3304
;-------------------------------
j3304    
        JSR DrawCharacter
        DEC charToDraw
        DEC screenPtrXPos
        JMP DrawCharacter

b330E   LDA f3EC0,X
        BNE b331E
        LDA #>p01AD
        STA colorToDraw
        LDA #<p01AD
        STA charToDraw
        JMP DrawCharacter

b331E   LDA #<p01AE
        STA charToDraw
        LDA #>p01AE
        STA colorToDraw
        JSR DrawCharacter
        INC screenPtrXPos
        INC charToDraw
        JMP DrawCharacter

;------------------------------------------------
; DrawScreenInterstitialEffect
;------------------------------------------------
DrawScreenInterstitialEffect
        LDA #$A4
        STA charToDraw
p3334   JSR DrawInterstitial
        LDA #$20
        STA charToDraw
        STA VICCRD   ;$900D - frequency of sound osc.4 (noise)
        LDA #$80
        STA VICCRB   ;$900B - frequency of sound osc.2 (alto)
        LDA #$C1
        STA VICCRA   ;$900A - frequency of sound osc.1 (bass)

;------------------------------------------------
; DrawInterstitial
;------------------------------------------------
DrawInterstitial
        LDA #$0D
        STA a50
        STA a51
        LDA #<p0101
        STA a52
        LDA #>p0101
        STA a53
        LDA #$FF
        STA a54
b335A   JSR PaintInterstitialEffect
        DEC a50
        DEC a51
        INC a52
        INC a53
        INC a53
        INC a54
        INC a54
        LDA a51
        CMP #$FF
        BNE b335A
        LDA #$00
        STA VICCRA   ;$900A - frequency of sound osc.1 (bass)
        RTS 

;------------------------------------------------
; PaintInterstitialEffect
;------------------------------------------------
PaintInterstitialEffect
        LDA a52
        AND #$07
        TAX 
        LDA pulsingColorArray,X
        STA colorToDraw
        LDA a50
        STA screenPtrXPos
        LDX a54
        TXA 
        AND #$80
        BNE b33A2
b338C   LDA a51
        STA screenPtrYPPos
        JSR DrawCharacter
        LDA #$1B
        SEC 
        SBC a51
        STA screenPtrYPPos
        JSR DrawCharacter
        INC screenPtrXPos
        DEX 
        BNE b338C
b33A2   LDA a51
        STA screenPtrYPPos
        LDX a53
b33A8   LDA a50
        STA screenPtrXPos
        JSR DrawCharacter
        LDA #$18
        SEC 
        SBC a51
        STA screenPtrXPos
        JSR DrawCharacter
        INC screenPtrYPPos
        DEX 
        BNE b33A8
        LDA a51
        CLC 
        LSR 
        STA VICCRE   ;$900E - sound volume
        LDA #$E0
        STA VICCRC   ;$900C - frequency of sound osc.3 (soprano)
b33CA   LDY #$C0
b33CC   DEY 
        BNE b33CC
        INC VICCRC   ;$900C - frequency of sound osc.3 (soprano)
        LDA VICCRC   ;$900C - frequency of sound osc.3 (soprano)
        CMP #$00
        BNE b33CA
        LDA #$0F
        STA VICCRC   ;$900C - frequency of sound osc.3 (soprano)
        STA VICCRE   ;$900E - sound volume
        RTS 

;------------------------------------------------
; DrawGameOver
;------------------------------------------------
DrawGameOver
        JSR DrawScreenInterstitialEffect
        LDA #$08
        STA pulsingColorArrayIndex
        STA a08
        LDX #$00
b33ED   STX a51
        LDA txtGameOver,X
        AND #$3F
        TAX 
        JSR MaterializeCharEffect
        INC pulsingColorArrayIndex
        LDX a51
        INX 
        CPX #$09
        BNE b33ED
        STX VICCRD   ;$900D - frequency of sound osc.4 (noise)
        LDA #$10
        STA pulsingColorArrayIndex
        JSR PlayNewLevelSounds
        JSR PulsingTextColorEffect
        JSR DrawScreenInterstitialEffect
        JSR s38D5
;-------------------------------
; j3414
;-------------------------------
j3414    
        NOP 

;------------------------------------------------
; RunTitleSequence
;------------------------------------------------
RunTitleSequence
        JSR DrawTitleScreen
;-------------------------------
; j3418
;-------------------------------
j3418    
        LDA #$00
        STA a36
        STA a32
        LDX #$F8
        TXS 
        JSR DrawScreenInterstitialEffect
        JSR DrawTitleScreen2
        JMP RunTitleSequenceLoop

txtGameOver   .TEXT "GAME OVER"

;------------------------------------------------
; DrawTitleScreen2
;------------------------------------------------
DrawTitleScreen2
        LDX #$00
        LDA #$01
        STA screenPtrXPos
b3439   LDA #$02
        STA colorToDraw
        LDA #$01
        STA screenPtrYPPos
        LDA titleScreen2Text1,X
        AND #$3F
        STA charToDraw
        JSR DrawCharacter
        LDA #$03
        STA colorToDraw
        STA screenPtrYPPos
        STA VICCRB   ;$900B - frequency of sound osc.2 (alto)
        LDA titleScreen2Text2,X
        AND #$3F
        STA charToDraw
        JSR DrawCharacter
        LDA #$1A
        STA screenPtrYPPos
        LDA #$01
        STA colorToDraw
        LDA titleScreen2Text3,X
        AND #$3F
        STA charToDraw
        JSR DrawCharacter
        INC screenPtrXPos
        INX 
        CPX #$17
        BNE b3439
        LDA #$01
        STA a51
        LDA #$06
        STA screenPtrYPPos
        LDY #$00
b3481   LDA #$06
        STA screenPtrXPos
        LDA a51
        EOR #$07
        TAX 
        LDA pulsingColorArray,X
        STA colorToDraw
        LDA #$07
        STA a50
b3493   LDA highScoreTableStorage,Y
        AND #$3F
        STA charToDraw
        JSR DrawCharacter
        INC screenPtrXPos
        INY 
        DEC a50
        BNE b3493
        INC screenPtrXPos
        INC screenPtrXPos
        INC screenPtrXPos
        INC screenPtrXPos
        LDA #$03
        STA a50
b34B0   LDA highScoreTableStorage,Y
        AND #$3F
        STA charToDraw
        JSR DrawCharacter
        INC screenPtrXPos
        INY 
        DEC a50
        BNE b34B0
        INC screenPtrYPPos
        INC screenPtrYPPos
        INC a51
        LDA a51
        CMP #$08
        BNE b3481
        JMP DrawEntryPlayersText

titleScreen2Text1   .TEXT "THE DEMONS OF HELLGATE:"
titleScreen2Text2   .TEXT " GUARDIANS OF THE GATE "
titleScreen2Text3   .TEXT "  PRESS FIRE TO BEGIN  "
;-------------------------------
; j3515
;-------------------------------
j3515    
        LDY #$00
        LDX #$00
        LDA #$00
        STA a54
        LDA a36
        BEQ b3522
        RTS 

b3522   TXA 
        PHA 
b3524   LDA (p23),Y
        CMP highScoreTableStorage,X
        BEQ b3530
        BMI b3536
        JMP j3546

b3530   INX 
        INY 
        CPY #$07
        BNE b3524
b3536   LDY #$00
        PLA 
        CLC 
        ADC #$0A
        TAX 
        INC a54
        LDA a54
        CMP #$07
        BNE b3522
        RTS 

;-------------------------------
; j3546
;-------------------------------
j3546    
        PLA 
        STA a53
        CLC 
        ADC #$0A
        STA screenPtrXPos
        LDY #$4F
        LDX #$45
b3552   LDA highScoreTableStorage,X
        STA highScoreTableStorage,Y
        DEY 
        DEX 
        CPX a53
        BNE b3552
        LDX a53
        LDY #$00
b3562   LDA (p23),Y
        STA highScoreTableStorage,X
        INX 
        INY 
        CPY #$07
        BNE b3562
        STX a53
        LDA #$00
        STA highScoreTableStorage,X
        STA f3D01,X
        STA f3D02,X
        LDA a37
        BEQ b359A
        LDA a54
        PHA 
        LDA a53
        PHA 
        JSR DrawScreenInterstitialEffect
        JSR j38EB
        LDA #$07
        STA pulsingColorArrayIndex
        JSR PulsingTextColorEffect
        JSR DrawScreenInterstitialEffect
        PLA 
        STA a53
        PLA 
        STA a54
b359A   JSR DrawTitleScreen2
        LDA a54
        CLC 
        ASL 
        CLC 
        ADC #$06
        STA screenPtrYPPos
        LDA #$11
        STA screenPtrXPos
        LDA #$01
        STA colorToDraw
        LDA a33
        STA a55
        JSR s35E3
        LDA a55
        STA a33
        LDX a53
        STA highScoreTableStorage,X
        INC a53
        LDA a34
        STA a55
        JSR s35E3
        LDA a55
        STA a34
        LDX a53
        STA highScoreTableStorage,X
        INC a53
        LDA a35
        STA a55
        JSR s35E3
        LDA a55
        STA a35
        LDX a53
        STA highScoreTableStorage,X
        RTS 

;------------------------------------------------
; s35E3
;------------------------------------------------
s35E3    
        LDA a55
        AND #$1F
        STA charToDraw
        INC colorToDraw
        LDA colorToDraw
        AND #$07
        STA colorToDraw
        JSR DrawCharacter
        LDX #$80
        JSR s3628
        JSR GetJoystickInput
        LDA joystickInput
        AND #$04
        BEQ b3604
        DEC a55
b3604   LDA joystickInput
        AND #$08
        BEQ b360C
        INC a55
b360C   LDA joystickInput
        AND #$80
        BNE b3615
        JMP s35E3

b3615   LDA a55
        AND #$1F
        STA a55
        STA charToDraw
        LDA #$03
        STA colorToDraw
        JSR DrawCharacter
        INC screenPtrXPos
        LDX #$00
;------------------------------------------------
; s3628
;------------------------------------------------
s3628    
        LDY #$00
b362A   DEY 
        BNE b362A
        DEX 
        BNE s3628
        RTS 

;------------------------------------------------
; DrawTitleScreen
;------------------------------------------------
DrawTitleScreen
        JSR DrawScreenInterstitialEffect
        LDA #$0A
        STA VICCRF   ;$900F - screen colors: background, border & inverse
        LDA #$90
        STA VICCRE   ;$900E - sound volume
        LDA #$0F
        STA colorToDraw
        LDA #$40
        STA a09
        LDA #<SCREEN_RAM + $100
        STA pulsingColorArrayIndex
b364A   LDA #>SCREEN_RAM + $100
        STA a08
        JSR DrawPattern
        INC pulsingColorArrayIndex
        LDA pulsingColorArrayIndex
        CMP #$1A
        BNE b364A
        LDA #<p0900
        STA pulsingColorArrayIndex
b365D   LDA #>p0900
        STA a08
        LDA #$44
        STA a09
        JSR DrawPattern
        INC pulsingColorArrayIndex
        LDA pulsingColorArrayIndex
        CMP #$1A
        BNE b365D
        JSR DrawSomething1
        LDA #>p0C02
        STA a08
        LDA #<p0C02
        STA pulsingColorArrayIndex
        LDA #$48
        STA a09
        JSR DrawPattern
        INC pulsingColorArrayIndex
        LDA #$4C
        STA a09
        JSR DrawPattern
        LDA #<p0E02
        STA pulsingColorArrayIndex
        LDA #>p0E02
        STA a08
        LDA #$50
        STA a09
        JSR DrawPattern
        INC pulsingColorArrayIndex
        LDA #$54
        STA a09
        JSR DrawPattern
        LDA #>p0C13
        STA a08
        LDA #<p0C13
        STA pulsingColorArrayIndex
        LDA #$48
        STA a09
        JSR DrawPattern
        INC pulsingColorArrayIndex
        LDA #$4C
        STA a09
        JSR DrawPattern
        LDA #<p0E13
        STA pulsingColorArrayIndex
        LDA #>p0E13
        STA a08
        LDA #$50
        STA a09
        JSR DrawPattern
        INC pulsingColorArrayIndex
        LDA #$54
        STA a09
        JSR DrawPattern
        JMP DrawTitleScreenText

;------------------------------------------------
; DrawPattern
;------------------------------------------------
DrawPattern
        LDA a09
        STA charToDraw
        LDA a08
        STA screenPtrYPPos
        LDA pulsingColorArrayIndex
        STA screenPtrXPos
        INC pulsingColorArrayIndex
        JSR DrawCharacter
        INC screenPtrYPPos
        INC charToDraw
        JSR DrawCharacter
        DEC screenPtrYPPos
        INC screenPtrXPos
        LDA screenPtrXPos
        CMP #$19
        BNE b36F9
        RTS 

b36F9   INC charToDraw
        JSR DrawCharacter
        INC screenPtrYPPos
        INC charToDraw
        JMP DrawCharacter

;------------------------------------------------
; DrawSomething1
;------------------------------------------------
DrawSomething1
        LDA #>p4C0B
        STA charToDraw
        LDA #<p4C0B
        STA screenPtrYPPos
b370D   LDA #$00
        STA screenPtrXPos
b3711   JSR DrawCharacter
        INC screenPtrXPos
        LDA screenPtrXPos
        CMP #$19
        BNE b3711
        INC screenPtrYPPos
        LDA screenPtrYPPos
        CMP #$11
        BNE b370D
        RTS 

;------------------------------------------------
; DrawTitleScreenText
;------------------------------------------------
DrawTitleScreenText
        LDA #>p0B0A
        STA a08
        LDA #<p0B0A
        STA pulsingColorArrayIndex
        LDA #$58
        STA a09
        JSR DrawPattern
        LDA #$0D
        STA a08
        DEC pulsingColorArrayIndex
        JSR DrawPattern
        LDA #$0F
        STA a08
        DEC pulsingColorArrayIndex
        JSR DrawPattern
        LDA #>p0B0C
        STA a08
        LDA #<p0B0C
        STA pulsingColorArrayIndex
        LDA #$5C
        STA a09
        JSR DrawPattern
        INC a08
        INC a08
        DEC pulsingColorArrayIndex
        JSR DrawPattern
        INC a08
        INC a08
        DEC pulsingColorArrayIndex
        JSR DrawPattern
        LDA #$01
        STA colorToDraw
        LDA #$00
        STA screenPtrXPos
        TAX 
b3770   LDA #$04
        STA screenPtrYPPos
        LDA copyrightText,X
        AND #$3F
        STA charToDraw
        JSR DrawCharacter
        LDA #$15
        STA screenPtrYPPos
        LDA titleScreenText,X
        AND #$3F
        STA charToDraw
        JSR DrawCharacter
        INC screenPtrXPos
        INX 
        CPX #$19
        BNE b3770
        LDA #$00
        STA a51
        STA a36
b3799   LDA #$00
        STA a52
b379D   JSR GetJoystickInput
        LDA joystickInput
        AND #$80
        BNE b37B4
        LDA aC5
        CMP #$40
        BNE b37B4
        DEC a52
        BNE b379D
        DEC a51
        BNE b3799
b37B4   LDA #$08
        STA VICCRF   ;$900F - screen colors: background, border & inverse
        RTS 

copyrightText   .TEXT "COPYRIGHT: LLAMASOFT 1984"
titleScreenText   .TEXT " HELLGATE BY JEFF MINTER "

;------------------------------------------------
; RunTitleSequenceLoop
;------------------------------------------------
RunTitleSequenceLoop
        LDA #$04
        STA a53
b37F0   LDA #$00
        STA a51
        STA a52
b37F6   JSR GetJoystickInput
        LDA aC5
        CMP #$27
        BNE b380A
        INC a32
        LDA a32
        AND #$07
        STA a32
        JMP j3816

b380A   CMP #$2F
        BNE b3822
        INC a37
        LDA a37
        AND #$01
        STA a37

j3816    
        JSR DrawTitleScreen2
b3819   LDA aC5
        CMP #$40
        BNE b3819
        JMP RunTitleSequenceLoop

b3822   LDA joystickInput
        AND #$80
        BNE b3838
        DEC a52
        BNE b37F6
        DEC a51
        BNE b37F6
        DEC a53
        BNE b37F0
        LDA #$01
        STA a36
b3838   JMP j1B2E

;------------------------------------------------
; ResetGameVariables
;------------------------------------------------
ResetGameVariables    
        NOP 
        LDX #$07
        LDA #$07
b3840   STA f96E6,X
        STA f96D4,X
        DEX 
        BNE b3840

        STX a1A
        LDA a23
        CMP #$D5
        BNE b3858
        LDA #$E7
        STA a23
        JMP j385C

b3858   LDA #$D5
        STA a23

j385C    
        LDA dsplyZapsLeft
        PHA 
        LDA zapsLeft
        STA dsplyZapsLeft
        PLA 
        STA zapsLeft
        LDA dsplyShipsLeft
        PHA 
        LDA shipsLeft
        STA dsplyShipsLeft
        PLA 
        STA shipsLeft
        LDA a32
        PHA 
        LDA a38
        STA a32
        PLA 
        STA a38
        INC a37
        LDA a37
        CMP #$03
        BNE b388A
        LDA #$01
        STA a37
b388A   RTS 

;------------------------------------------------
; DrawEntryPlayersText
;------------------------------------------------
DrawEntryPlayersText
        LDA #>p1800
        STA screenPtrYPPos
        LDA #<p1800
        STA screenPtrXPos
        LDX #$00
b3895   LDA entryPlayersText,X
        AND #$3F
        STA charToDraw
        LDA #$01
        STA colorToDraw
        JSR DrawCharacter
        INC screenPtrXPos
        INX 
        CPX #$19
        BNE b3895
        LDA #$31
        CLC 
        ADC a32
        STA dsplyEntryLevel
        LDA a37
        BEQ b38BB
        LDA #$32
        STA dsplyPlayers
b38BB   RTS 

entryPlayersText   .TEXT "ENTRY LEVEL:0   PLAYERS:1"

;------------------------------------------------
; s38D5
;------------------------------------------------
s38D5    
        LDA a37
        BNE b38DC
        JMP j3515

b38DC   JSR ResetGameVariables
        JSR j3515
        JSR ResetGameVariables
        JSR j3515
        JMP ResetGameVariables

;-------------------------------
; j38EB
;-------------------------------
j38EB    
        LDX #$00
        LDA #>p0A07
        STA screenPtrYPPos
        LDA #<p0A07
        STA screenPtrXPos
        LDA a37
        BNE b38FA
        RTS 

b38FA   LDA txtPlayerOneTwo,X
        AND #$3F
        STA charToDraw
        JSR DrawCharacter
        INC screenPtrXPos
        INX 
        CPX #$07
        BNE b38FA
        LDA a37
        CMP #$02
        BNE b3914
        INX 
        INX 
        INX 
b3914   LDY #$03
b3916   LDA txtPlayerOneTwo,X
        AND #$3F
        STA charToDraw
        JSR DrawCharacter
        INC screenPtrXPos
        INX 
        DEY 
        BNE b3916
        RTS 

txtPlayerOneTwo   .TEXT "PLAYER ONETWO"
        .BYTE $32,$20,$20,$2E,$BC,$53,$42,$42
        .BYTE $4D,$20,$20,$2E,$C9,$53,$42,$42
        .BYTE $4F,$4E,$20,$2E,$BB,$53,$42,$49
        .BYTE $4E,$43,$20,$2E,$88,$DF,$F6,$6E
        .BYTE $00,$FF,$27,$FB,$04,$F7,$00,$FF
        .BYTE $00,$FF,$09,$7D,$08,$FF,$00,$FF
        .BYTE $00,$FF,$40,$68,$29,$FF,$00,$FF
        .BYTE $00,$FF,$42,$BB,$20,$F7,$00,$FF
        .BYTE $00,$FF,$07,$50,$02,$BF,$44,$7F
        .BYTE $6D,$B8,$CF,$E0,$00,$FD,$00,$FF
        .BYTE $00,$FF,$44,$FD,$80,$BD,$00,$FF
        .BYTE $00,$FF,$46,$EF,$18,$FF,$00,$FF
        .BYTE $00,$FF,$00,$FF,$40,$FA,$00,$FF
        .BYTE $00,$FF,$07,$B7,$00,$DF,$00,$FF
        .BYTE $00,$FF,$50,$F6,$00,$9F,$00,$FF
        .BYTE $00,$FF,$0A,$BF,$30,$6B,$00,$FF
        .BYTE $00,$FF,$50,$77,$00,$FF,$00,$FF
        .BYTE $00,$FF,$54,$B5,$03,$9F,$00,$FF
        .BYTE $00,$FF,$A3,$E0,$04,$EE,$00,$FF
        .BYTE $00,$FF,$0C,$DB,$04,$92,$00,$FF
        .BYTE $00,$FF,$1A,$60,$80,$69,$00,$FF
        .BYTE $00,$FF,$40,$FB,$5F,$24,$00,$FF
        .BYTE $00,$FF,$08,$EF,$02,$AD,$00,$FF
        .BYTE $00,$FF,$80,$F7,$DF,$01,$00,$FF
        .BYTE $00,$FF,$40,$7F,$00,$67,$00,$FF
        .BYTE $5F,$50,$FE,$80

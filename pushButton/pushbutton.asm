

.include "m328Pdef.inc"
.org 0x0000

.def temp = r16
rjmp voidsetup

voidsetup:
    ser temp                    ; set register with 0xff
    out DDRB,temp
    ldi temp,0b00000000
    out DDRD,temp
    clr temp
    out PORTB,temp
    ldi temp,0b000000001
    out PORTD,temp

voidloop:
    in temp,PIND
    out PORTB,temp
    rjmp voidloop




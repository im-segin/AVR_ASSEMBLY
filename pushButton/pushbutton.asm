

.include "m328Pdef.inc"
.org 0x0000
.def temp = r16
rjmp voidsetup

voidsetup:
    ldi temp,0b00000001
    out DDRB,temp
    ldi temp,0b00000000
    out DDRD,temp
    ldi temp,0b00000001
    out PORTD,temp
    clr temp
    out PORTB,temp
    
voidloop:
    in temp,PIND
    out PORTB,temp
    rjmp voidloop



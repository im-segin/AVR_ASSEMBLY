.include "./m328Pdef.inc"
.org 0x0000

        ldi r16,0b0000001
        out DDRB,r16
        out PORTB,r16
start:
        rjmp start
.include "./m328Pdef.inc"

        ldi r16,0b00000001
        ldi r17,0b00000000
        out DDRB,r16
        out PORTB,r16
        
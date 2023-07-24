<CsoundSynthesizer>

<CsOptions>

; realtime output
;-o dac ;uncomment for realtime output
 -o test.wav -W -3 ;uncomment for writing to test.wav file
;-o song.wav -W -3

</CsOptions>


<CsInstruments>

sr = 44100
ksmps = 32
0dbfs = 1
nchnls = 1

instr 1
 iamp = 0.1
 icps = p4
 iphs = 0
 iatt = 0.07
 idec = 0.05
 islev = 0.1
 irel = 0.03
 kenv madsr iatt, idec, islev, irel
 aOut oscils iamp, icps, iphs, 0
 out aOut*kenv
endin


instr 2
 kamp  = 0.1 
 kcps  = p4
 iwave = 3 
 kpw init 0.5
 ifn = 1
 asig vco kamp, kcps, iwave, kpw, ifn

 iatt = 0.01
 idec = 0.2
 islev = 0.01
 irel = 0.2
 kenv xadsr iatt, idec, islev, irel
 out asig*kenv
endin


</CsInstruments>







<CsScore>

#include "frequencies_macros.sco"

;table
f 1 0 65536 10 1    ; a sine wave.

;set tempo
t 0 95

i 1 0 1 $C4
i 1 + 1 $D4
i 1 + 1 $E4
i 1 + 1 $F4
i 1 + 1 $G4
i 1 + 1 $A4
i 1 + 1 $B4
i 1 + 1 $C5

i 2 8 1 $C4
i 2 + 1 $D4
i 2 + 1 $E4
i 2 + 1 $F4
i 2 + 1 $G4
i 2 + 1 $A4
i 2 + 1 $B4
i 2 + 1 $C5

i 1 16 1 $C5
i 1 + 1 $D5
i 1 + 1 $E5
i 1 + 1 $F5
i 1 + 1 $G5
i 1 + 1 $A5
i 1 + 1 $B5
i 1 + 1 $C6

i 2 24 1 $C5
i 2 + 1 $D5
i 2 + 1 $E5
i 2 + 1 $F5
i 2 + 1 $G5
i 2 + 1 $A5
i 2 + 1 $B5
i 2 + 1 $C6

e
</CsScore>


</CsoundSynthesizer>



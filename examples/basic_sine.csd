<CsoundSynthesizer>
<CsOptions>
-odac -d
</CsOptions>
<CsInstruments>
sr = 44100
ksmps = 32
nchnls = 2
0dbfs = 1

instr 1
    a1 oscili 0.5, 440
    a2 = a1
    outs a1, a2
endin
</CsInstruments>
<CsScore>
i 1 0 2
e
</CsScore>
</CsoundSynthesizer> 
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
    ; Start at 40 Hz, drop to 20 Hz over 0.01s
    kpitch linseg 40, 0.01, 20

    ; Cutoff drops from 18000 to 80 in 0.06s
    kcutoff expseg 18000, 0.01, 200, 0.05, 80

    kres = 18
    kdist = 6.0

    anoise rand 0.25

    a1 oscili 1, kpitch
    a1 = a1 + anoise
    a1 = tanh(a1 * kdist)
    a1 moogladder a1, kcutoff, kres

    aenv linen 1, 0.001, 0.05, 0.02
    a1 = a1 * aenv

    a1 = a1 * 3
    outs a1, a1
endin


</CsInstruments>
<CsScore>
i 1 0 0.2
i 1 0.25 0.2
i 1 0.5 0.2
i 1 0.75 0.2
i 1 1.0 0.2
i 1 1.25 0.2
i 1 1.5 0.2
i 1 1.75 0.2
i 1 2.0 0.2
i 1 2.25 0.2
i 1 2.5 0.2
i 1 2.75 0.2
i 1 3.0 0.2
i 1 3.25 0.2
i 1 3.5 0.2
i 1 3.75 0.2
e
</CsScore>
</CsoundSynthesizer> 
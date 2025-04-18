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
    kfreq = 27.5
    kpitch = kfreq * 2
    kpitch = linseg(55, 0.01, 27.5)
    kcutoff = expseg(20000, 0.02, 400, 0.1, 60)
    kres = 12
    kdist = 3.5
    
    anoise = rand(0.3)
    a1 = oscili(1, kpitch)
    a1 = a1 + anoise
    a1 = tanh(a1 * kdist)
    a1 = moogladder(a1, kcutoff, kres)
    
    aenv = linen(1, 0.001, 0.1, 0.02)
    a1 = a1 * aenv
    
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
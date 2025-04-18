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
    kfreq = 36.7
    kcutoff = expseg(20000, 0.05, 800, 0.2, 100)
    kres = 6
    kdist = 1.2
    
    a1 = oscili(1, kfreq)
    a1 = tanh(a1 * kdist)
    a1 = moogladder(a1, kcutoff, kres)
    
    aenv = linen(1, 0.005, 0.2, 0.05)
    a1 = a1 * aenv
    
    outs a1, a1
endin

</CsInstruments>
<CsScore>
i 1 0 0.4
i 1 0.5 0.4
i 1 1.0 0.4
i 1 1.5 0.4
i 1 2.0 0.4
i 1 2.5 0.4
i 1 3.0 0.4
i 1 3.5 0.4
e
</CsScore>
</CsoundSynthesizer> 
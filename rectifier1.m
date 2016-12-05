clear
close all
Vs = 120
Is1 = 10
P = 950
THD = 0.75
DPF = P/(Vs*Is1)
PF = 1/sqrt(1+THD^2)*DPF
DF = PF/DPF
Is = Is1/DF
Idist = sqrt(Is^2-Is1^2)
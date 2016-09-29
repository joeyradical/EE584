Vin = 50
Vload = 20
Iload = 5
Vpp = 0.5
Fs = 50000
VDs_on = 0.5
VDiode_on = 0.2

V1 = Vin - VDs_on - Vload
V2 = Vload + VDiode_on

D = V2/(V1 + V2)

IAvg25 = 0.25 * Iload

Ipk = 2*IAvg25

L = Vin * ((D/Fs)/Ipk)

Icmin =-IAvg25
Icmax = IAvg25
Idiodemin = Icmin + Iload
Idiodemax = Icmax + Iload

ESR = Vpp/Ipk
Icrms = Ipk/sqrt(3)
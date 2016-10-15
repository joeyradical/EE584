Vin = 1.5
Vload = 5
Iload = 1
Vpp = 0.1
Fs = 50000
VDs_on = 0.1
VDiode_on = 0.5

V1 = Vin - VDs_on
V2 = Vload + VDiode_on - Vin

D = V2/(V1 + V2)

IAvg25 = 0.25 * Iload

Ipk = 2*IAvg25/(1-D)

L = Vin * ((D/Fs)/Ipk)

I2 = ((2*Iload)/(1-D)-Ipk)/2
I1 = I2 + Ipk

I1rms = I1-Iload
I2rms = I2-Iload
I3rms = -Iload

Irms = sqrt(I3rms^2*D+(1-D)/3*(I1rms^2+I1rms*I2rms+I2rms^2))

ESR = Vpp/(I1rms-I2rms )

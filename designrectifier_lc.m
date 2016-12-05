Vout = 5
Iout = 1
Vpp = 0.5
Vd = 0.7
Vreg =2
Vpk = pi/2*Vout
Vsecpk = Vpk + 2*Vd + Vreg
Vsecrms = Vsecpk/sqrt(2)
disp('Choose 15 V transformer')
Vin = 15
Vineq = 15*0.424
Ipk = 0.25*Iout
Irms = Ipk/sqrt(2)
Vpp2 = Vpp/2*1/sqrt(2)
Xc=Vpp2/Irms
C = 1/(2*pi*120*Xc)
Xl = (Vineq+Vpp2)/Irms
L = Xl/(2*pi*120)
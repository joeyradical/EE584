Vin = 24;
Vo = 18
D = 0.75
Ts = 1/100000;
fs = 100000
L = 100* 10^(-6);
Po = 5
deltaIl = (Vin-Vo)/L*D*Ts
Rcrit = 2*L*fs/((1-D)^2)
Io = Po/Vo
Il = Io
if Io > deltaIl/2
    disp('The circuit is in CCM mode')
else
    disp('The circuit is not in CCM mode')
    Lnew = (Vin-Vo)/(2*Il)*D*Ts
end
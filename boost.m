Vin = 12;
Ts = 1/400000;
L = 25* 10^(-6);
D = 0.4
Po = 2
Vo = 20
Io = Po/Vo
Iin =Vo/Vin*Io
deltaIl = (Vin)/L*D*Ts
Il = Iin
if Il > deltaIl/2
    disp('The circuit is in CCM mode')
else
    disp('The circuit is not in CCM mode')
    Lnew = (Vin)/(2*Il)*D*Ts
end
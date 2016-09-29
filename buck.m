Vin = 50;
Vo = 12
D = Vo/Vin
Ts = 1/400000;
L = 25* 10^(-6);
Po = 5
deltaIl = (Vin-Vo)/L*D*Ts
Io = Po/Vo
Il = Io
if Io > deltaIl/2
    disp('The circuit is in CCM mode')
else
    disp('The circuit is not in CCM mode')
    Lnew = (Vin-Vo)/(2*Il)*D*Ts
end
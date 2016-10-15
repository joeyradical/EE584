clear
close all
L = 25*10^-6
Fs = 400000
Ts = 1/Fs
Vin = 12
D = 0.6
Rcrit = 2*L*Fs/((1-D)^2)
R = 2 * Rcrit
M = (R/(2*L*Fs)*D^2)
Vo = Vin * sqrt(M)
deltaIl= Vin/L * D*Ts
Io = Vo/R

D2 = Vin * D / Vo
D3 = 1 - D - D2

% Inductor voltage
subplot(4,1,1)
plot([0 D D D D (D+D2) (D+D2) (D+D2) (D+D2) 1], [Vin Vin Vin -Vo -Vo -Vo -Vo 0 0 0])
title('Inductor Voltage')
xlabel('Ts')
ylabel('Vl')

% Diode voltage
subplot(4,1,2)
plot([0 D D D D (D+D2) (D+D2) (D+D2) (D+D2) 1], [-(Vin+Vo) -(Vin+Vo) -(Vin+Vo) 0 0 0 0 -Vo -Vo -Vo])
title('Diode Voltage')
xlabel('Ts')
ylabel('Vdiode')

% Inductor Current
subplot(4,1,3)
plot([0 D D (D+D2) (D+D2) 1], [0 deltaIl deltaIl 0 0 0])
title('Inductor Current')
xlabel('Ts')
ylabel('Il')

subplot(4,1,4)
plot([0 D D D D 1], [0 deltaIl deltaIl 0 0 0])
title('Switch Current')
xlabel('Ts')
ylabel('Isw')

figure
subplot(3,1,1)
plot([0 D D D D (D+D2) (D+D2) 1], [0 0 0 deltaIl deltaIl 0 0 0])
title('Diode Current')
xlabel('Ts')
ylabel('Idiode')

subplot(3,1,2)
plot([0 D D D D (D+D2) (D+D2) 1], [0 0 0 deltaIl-Io deltaIl-Io 0 0 0])
title('Capacitor Current')
xlabel('Ts')
ylabel('Icap')

subplot(3,1,3)
plot([0 D D D D (D+D2) (D+D2) (D+D2) (D+D2) 1], [0 0 0 (Vin+Vo) (Vin+Vo) (Vin+Vo) (Vin+Vo) Vin Vin Vin])

clear
close all
Vin = 50
Vout = -25;
Io = 4;
Vpp = 0.1;
fs = 65000;
Vds = 0.3;
Vdiode = 0.5;

V1 = Vin - Vds;
V2 = Vdiode - Vout;

D = V2/(V1+V2);
IAvg25 = 0.25*Io
Ipk = (2*IAvg25)/(1-D)
L = V1*(D/fs)/Ipk
x = [1 1;-1 1]\[2*Io/(1-D);-Ipk]
I1 = x(1)
I2 = x(2)
ESR = Vpp/I1
Irms = sqrt((-Io)^2*D+(1-D)/3*((I1-Io)^2+(I1-Io)*(I2-Io)+(I2-Io)^2))
%Inductor voltage
subplot(6,1,1)
plot([0 D], [V1 V1], 'b')
hold on
plot([D D], [V1 -V2], 'b')
hold on
plot([D 1], [-V2 -V2], 'b')
text(D, 0, '\leftarrow DTs')
grid on
xlabel('Ts')
ylabel('Vl')
ylim([-V2-20 V1+20])
title('Inductor Voltage')

%Inductor current
subplot(6,1,2)
plot([0 D], [0, Ipk], 'b')
hold on
plot([D 1], [Ipk 0], 'b')
text(D, 0, '\leftarrow DTs')
xlabel('Ts')
ylabel('Il')
title('Inductor Current @ 25% Load')
grid on

%Input current
subplot(6,1,3)
plot([0 D], [0, Ipk], 'b')
hold on
plot([D D], [Ipk 0], 'b')
hold on
plot([D 1], [0 0], 'b')
text(D, 0, '\leftarrow DTs')
xlabel('Ts')
ylabel('Iin')
title('Input Current @ 25% Load')
grid on

%Diode current
subplot(6,1,4)
plot([0 D], [0 0], 'b')
hold on
plot([D D], [0 Ipk], 'b')
hold on
plot([D 1], [Ipk 0], 'b')
text(D, 0, '\leftarrow DTs')
xlabel('Ts')
ylabel('Idiode')
title('Diode Current @ 25% Load')
grid on

%MOSFET current
subplot(6,1,5)
plot([0 D], [0 Ipk], 'b')
hold on
plot([D D], [Ipk 0], 'b')
hold on
plot([D 1], [0 0], 'b')
text(D, 0, '\leftarrow DTs')
xlabel('Ts')
ylabel('Imos')
title('MOSFET Current @ 25% Load')
grid on

%Capacitor current
subplot(6,1,6)
plot([0 D], [-IAvg25 -IAvg25], 'b')
hold on
plot([D D], [0-IAvg25 Ipk-IAvg25], 'b')
hold on
plot([D 1], [Ipk-IAvg25 0-IAvg25], 'b')
text(D, 0, '\leftarrow DTs')
xlabel('Ts')
ylabel('Ic')
title('Capacitor Current @ 25% Load')
grid on


%Diode current @ 100% load
figure
subplot(2,1,1)
plot([0 D], [0 0], 'b')
hold on
plot([D D], [0 I1], 'b')
hold on
plot([D 1], [I1 I2], 'b')
text(D, 0, '\leftarrow DTs')
xlabel('Ts')
ylabel('Ic')
title('Capacitor Current @ 100% Load')
grid on

%Capacitor current @ 100% load
subplot(2,1,2)
plot([0 D], [-Io -Io], 'b')
hold on
plot([D D], [-Io I1-Io], 'b')
hold on
plot([D 1], [I1-Io I2-Io], 'b')
text(D, 0, '\leftarrow DTs')
xlabel('Ts')
ylabel('Ic')
title('Diode Current @ 100% Load')
grid on







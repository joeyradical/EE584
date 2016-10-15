close all
clear
Vin = 10
D = 0.333
P = 50
Iin = P/Vin
fs = 200000
Vout = D * Vin / (1-D)
Iout = P/Vout


% Inductor voltage of L1a
subplot(4,1,1)
plot([0 D], [Vin Vin], 'b')
hold on
plot([D D], [Vin -Vout], 'b')
hold on
plot([D 1], [-Vout -Vout])
ylabel('Vl1a')
xlabel('Ts')
text(D/2, Vin+2, '\downarrow Vin')
text(D*2, -Vout-2, '\uparrow -Vout')
title('Inductor voltage of L1a')
ylim([-Vout-5 Vin+5])
grid on

% Inductor voltage of L1b
subplot(4,1,2)
plot([0 D], [Vin Vin], 'b')
hold on
plot([D D], [Vin -Vout], 'b')
hold on
plot([D 1], [-Vout -Vout])
ylabel('Vl1b')
xlabel('Ts')
text(D/2, Vin+2, '\downarrow Vin')
text(D*2, -Vout-2, '\uparrow -Vout')
title('Inductor voltage of L1b')
ylim([-Vout-5 Vin+5])
grid on

% Inductor current of L1a
subplot(4,1,3)
plot([0 1], [Iin Iin], 'k')
ylabel('Il1a')
xlabel('Ts')
text(D/2, Iin+2, '\downarrow Iin')
title('Inductor current of L1a')
ylim([Iin-5 Iin+5])
grid on

% Inductor current of L1b
subplot(4,1,4)
plot([0 1], [Iout Iout], 'k')
ylabel('Il1b')
xlabel('Ts')
text(D/2, Iout+2, '\downarrow Iout')
title('Inductor current of L1b')
ylim([Vout-5 Vin+5])
grid on

% Capacitor current
figure
subplot(4,1,1)
plot([0 D], [-Iout -Iout], 'k')
hold on
plot([D D], [-Iout Iin], 'k')
hold on
plot([D 1], [Iin Iin], 'k')
ylabel('Ic')
xlabel('Ts')
text(D/2, -Iout+5, '\downarrow -Iout')
text(D*2, Iin-5, '\uparrow Iin')
title('Capacitor current')
ylim([-Iout-5 Iin+5])
grid on

% Capacitor voltage
subplot(4,1,2)
plot([0 1], [Vout+Vin Vout+Vin], 'k')
xlabel('Ts')
ylabel('Id')
text(D/2, Vout+Vin+5, '\downarrow Vout + Vin')
title('Capacitor voltage')
ylim([Vout+Vin-2 Vout+Vin+2])
grid on

% Diode current
subplot(4,1,3)
plot([0 D], [0 0], 'k')
hold on
plot([D D], [0 Iout+Iin], 'k')
hold on
plot([D 1], [Iout+Iin Iout+Iin],'k')
xlabel('Ts')
ylabel('Id')
text(D/2, 0+5, '\downarrow 0')
text(D*2, Iout+Iin-5, '\uparrow Iout+Iin')
title('Diode current')
ylim([0-5 Iin+Iout+5])
grid on

% MOSFET current
subplot(4,1,4)
plot([0 D], [Iout + Iin Iout + Iin], 'k')
hold on
plot([D D], [Iout+Iin 0], 'k')
hold on
plot([D 1], [0 0],'k')
xlabel('Ts')
ylabel('Id')
text(D/2, Iout+Iin+ 2, '\downarrow Iout + Iin')
text(D*2, 0-2, '\uparrow 0')
title('MOSFET current')
ylim([0-5 Iin+Iout+5])
grid on

figure
% Load Capacitor voltage
subplot(2,1,1)
plot([0 1], [Vout Vout])
ylabel('VC2')
xlabel('Ts')
text(D/2, Vout+2, '\downarrow Vout')
title('Capacitor voltage of C2')
ylim([Vout-5 Vin+5])
grid on
% Load capacitor current
subplot(2,1,2)
plot([0 1], [Iout Iout], 'k')
ylabel('IC2')
xlabel('Ts')
text(D/2, Iout+2, '\downarrow Iout')
title('Load capacitor current')
ylim([Vout-5 Vin+5])
grid on





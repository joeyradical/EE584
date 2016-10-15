clear
close all
L = 25*10^-6
Vin = 40
Fs = 200000
Ts = 1/Fs
D = 0.3
P = 48
Vo = Vin*D
Io = P/Vo
deltaIl = (Vin-Vo)/L*D*Ts
timevec=[0 D D 1 1 1+D 1+D 2]

subplot(2,1,1)
plot(timevec, [Io/2-deltaIl/2 Io/2 + deltaIl/2 Io/2+deltaIl/2 Io/2 - deltaIl/2 Io/2-deltaIl/2 Io/2 + deltaIl/2 Io/2+deltaIl/2 Io/2 - deltaIl/2])
xlabel('Il2')
ylabel('Ts')
title('Inductor current of Buck #1')
xlim([0 1])
subplot(2,1,2)
plot(timevec-0.5, [Io/2-deltaIl/2 Io/2 + deltaIl/2 Io/2+deltaIl/2 Io/2 - deltaIl/2 Io/2-deltaIl/2 Io/2 + deltaIl/2 Io/2+deltaIl/2 Io/2 - deltaIl/2])
xlabel('Il1')
ylabel('Ts')
title('Inductor current of Buck #2')
xlim([0 1])

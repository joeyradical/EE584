clear
fc = 2000;
GPS_phase = -140.447;
GPS_gain = 14.1384
Kfb = 0.2;
PWM_gain = 0.556;
PM = 60;
Pboost = -90 + PM - GPS_phase;
Kboost = tan(pi/4+deg2rad(Pboost)/4);
fz = fc/Kboost;
fp = fc * Kboost;
wz = 2*pi*fz;
wp = 2*pi*fp;
GCfc = 1/(GPS_gain * PWM_gain * Kfb)
kc = wz/Kboost*GCfc;
fs = 100
Pzoh = -pi * fc/fs
R1 = 100000;
C2 = wz/(kc*wp*R1);
C1 = C2*(wp/wz-1);
R2 = 1/(wz*C1);
R3 = R1/(wp/wz-1)
C3 = 1/(wp*R3)
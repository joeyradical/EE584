clear
fc = 10000;
GPS_phase = -80;
GPS_gain = 0.1;
Kfb = 0.6;
PM = 60;
Pboost = -90 + PM - GPS_phase;
Kboost = tan(pi/4+deg2rad(Pboost)/2);
fz = fc/Kboost;
fp = fc * Kboost;
wz = 2*pi*fz;
wp = 2*pi*fc;
GCfc = 1/(GPS_gain);
kc = wz/Kboost*GCfc;
R1 = 100000;
C2 = wz/(kc*wp*R1);
C1 = C2*(wp/wz-1);
R2 = 1/(wz*C1);
R3 = R1/(wp/wz-1)
C3 = 1/(wp*R3)


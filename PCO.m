clear
fc = 10000;
GPS_phase = -89.9981;j
GPS_gain = 0.3386;
PM = 60;
Pboost = -90 + PM - GPS_phase;
Kboost = tan(pi/4+deg2rad(Pboost)/2);
fz = fc/Kboost;
fp = fc * Kboost;
wz = 2*pi*fz;
wp = 2*pi*fp;
GCfc = 1/(GPS_gain);
kc = wz/Kboost*GCfc;



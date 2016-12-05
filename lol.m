clear
R = 10000
C = 47*10^-6
fc = 10000
wc = 2*pi*10000
Gps = R/(R*C*j*wc +1)
Gpsabs = abs(Gps)
Gpsang = rad2deg(angle(Gps))
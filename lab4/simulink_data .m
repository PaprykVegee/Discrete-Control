L = [1]
M = [8 1] 
Gc=tf(L, M);
Ti=1.66;
Kp=7.21;

%Kkr=16.021
%Tosc=2s

gzoh=c2d(Gc, 1, 'zoh')
[L1 M1] = tfdata(gzoh, 'v')
Ti1=9.96;
Kp1=1.9125;

%Kkr=4.25
%Tosc=12s
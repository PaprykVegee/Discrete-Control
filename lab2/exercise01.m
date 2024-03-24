Gc=tf([1], [1 0]);
gzoh=c2d(Gc,0.1)
gzam=feedback(gzoh,1)

%[Ld, Md] = c2dm(Lc, Mc, Tp, 'method')
%[L,M]=c2dm(Gc,0.1)

[L1, M1] = tfdata(gzoh,'v')

Gu=tf(M1, [L1+M1], 0.1)

subplot(2, 2, 1)
step(gzam, Gu);
legend('gzam', 'Gu');
grid; hold on;

subplot(2, 2, 2)
pzmap(gzam, Gu); 
legend('gzam', 'Gu');
grid; hold on;

subplot(2, 2, 3)
bode(gzam, Gu); 
legend('gzam', 'Gu');
grid; hold on;

subplot(2, 2, 4)
nyquist(gzam, Gu); 
legend('gzam', 'Gu');
grid; hold on;
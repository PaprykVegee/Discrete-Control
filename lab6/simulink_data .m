clear;














%2 rzedu

L=[2];
M=[3 4 1];
Gc=tf(L,M);
[Ld,Md]=c2dm(L,M,1);
Gd=filt(Ld,Md,1)













Bd=tf(Gd).num{:};
Ad=tf(Gd).den{:};

q0=1/(sum(Bd))

q1=Ad(2)*q0;
q2=Ad(3)*q0;

p1=Bd(2)*q0;
p2=Bd(3)*q0;

Lr=[q0 q1 q2];
Mr=[1 -p1 -p2];

Gr=tf(Lr,Mr,0.1)

% 3 rzedu 

L4=[3];
M4=[1 7 8 1];
Gc4=tf(L4,M4);
[Ld4,Md4]=c2dm(L4,M4,0.1);
Gd4=filt(Ld4,Md4,0.1)

Bd4=tf(Gd4).num{:};
Ad4=tf(Gd4).den{:};

q04=1/(sum(Bd4))

q14=Ad4(2)*q04;
q24=Ad4(3)*q04;
q34=Ad4(4)*q04;

p14=Bd4(2)*q04;
p24=Bd4(3)*q04;
p34=Bd4(4)*q04;

Lr4=[q04 q14 q24 q34];
Mr4=[1 -p14 -p24 -p34];

Gr4=tf(Lr4,Mr4,0.1)
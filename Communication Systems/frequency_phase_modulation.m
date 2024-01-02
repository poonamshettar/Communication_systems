fs=1000;
fc=30;
fm=3;
kf=1;
kp=1;
Ac=50;
t=0:1/fs:1;
m=10*cos(2*pi*fm*t);
md=10*sin(2*pi*fm*t)/(fm);
y = Ac * cos((2*pi*fc*t) + kf*md);%frequency modulation
x=Ac*cos((2*pi*fc*t)+kp*m);%phase modulation
subplot(4,1,1);
plot(t,m);
subplot(4,1,2);
plot(t,cos(2*pi*fc*t))
subplot(4,1,3);
plot(t,y);
title('frequency modulation')
subplot(4,1,4)
plot(t,x);
title('phase modulation')




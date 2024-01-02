fs=1000;
fc=100;
fm=10;
kf=1;
Ac=1;
t=0:1/fs:1;
m1=sin(2*pi*fm*t);
m=sin(2*pi*fm*t);
y = Ac * cos(2*pi*fc*t + 2*pi*kf*cumsum(m)/fs);
subplot(2,1,1);
plot(t,m);
subplot(2,1,2);
plot(t,c);




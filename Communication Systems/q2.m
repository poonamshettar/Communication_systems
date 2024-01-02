fc=100;
fm=10;
fs=1000;
t=0:1/fs:1;
Ac=4;
m=2*sin(2*pi*fm*t);
c=Ac*sin(2*pi*fc*t);
a1=m.*c;
subplot(3,1,1)
plot(t,m);
subplot(3,1,2);
plot(t,c);
subplot(3,1,3);
plot(t,a1);


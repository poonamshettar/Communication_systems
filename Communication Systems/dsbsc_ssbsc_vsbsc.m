%declare
fs=1000;
t=0:1/fs:1;
fm=10;
fc=100;
%message signal
m=sin(2*pi*fm*t);
dsbsc=m.*cos(2*pi*fc*t);
ssbsc=hilbert(m).*exp(-1i*2*pi*fc*t);
vsbsc=dsbsc+imag(hilbert(m).*sin(2*pi*fc*t));
%plots
subplot(4,1,1);
plot(t,m);
title('message signal')
subplot(4,1,2);
plot(t,dsbsc);
title('dsbsc')
subplot(4,1,3);
plot(t,real(ssbsc));
title('ssbsc')
subplot(4,1,4);
plot(t,vsbsc);
title('vsbsc')
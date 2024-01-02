fs=5000;
t=0:1/fs:1;
fm=10;
x=sin(2*pi*fm*t);
subplot(3,1,1);
plot(t,x);
fc=1000;
y=5.*square(2*pi*(fc)*t);
subplot(3,1,2);
plot(t,y);
a=x.*y;
subplot(3,1,3);
plot(t,a);
freq=fc+[-3 -1 1 3]*fm
disp(freq)
x=fft(a);

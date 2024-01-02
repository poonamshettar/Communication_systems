fs=1000;
fc=100;
fm=10;
t=0:1/fs:1;
m=10*sin(2*pi*fm*t);
c=50*sin(2*pi*fc*t);
v1=m+c;
v2=v1+v1.*v1;%without filter
v3=(1+2.*m).*c;%with filter
subplot(4,1,1);
plot(t,m);
subplot(4,1,2);
plot(t,v2)
subplot(4,1,3)
plot(t,v3);
v4=v3.*c;
subplot(4,1,4);
plot(t,v4)

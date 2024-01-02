fs=1000;
t=0:1/fs:1;
y=max(15000*pi*cos(2000*pi*t));
disp("y")
disp(y)
fm=10*cos((2*pi*(10^5)*t)+5*sin(2*pi*1500*t)+7.5*sin(2*pi*1000*t));
syms t
disp('fc')
fc=2*pi*(10^5);
x=(2*pi*(10^5)*t)+5*sin(2*pi*1500*t)+7.5*sin(2*pi*1000*t);
y=diff(x);
disp(y)
%v=vpa(y);
%z=abs(v);
%disp(z)
z=y-fc;
disp(z)
w=15000*pi;
f=w/(2*pi);
fm=max(1500)
u=f/fm;


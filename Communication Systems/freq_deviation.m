fs=1000;
t=0:1/fs:1;
y=max(10000*pi*cos(2000*pi*t));
disp("y")
disp(y)
s=10*cos((2*pi*(10^6)*t)+5*sin(2000*pi*t)+10*sin(3000*pi*t));
syms t;
theta=(2*pi*(10^6)*t)+5*sin(2000*pi*t)+10*sin(3000*pi*t);
wi=diff(theta);
clear t;
t=0:1/fs:1;
wc=2*pi*(10^6);
del_w_=wi-wc;
disp(wi);
disp(wc);
disp(del_w_);
del_w1=max(10000*pi*cos(2000*pi*t));
del_w2=max(30000*pi*cos(3000*pi*t));
del_w=del_w1+del_w2;
disp(del_w)
del_f=del_w/(2*pi);
fm=1500;
u=del_f/fm;
disp(u);

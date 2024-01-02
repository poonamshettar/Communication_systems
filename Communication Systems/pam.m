fs=1000;
T=1/fs;
t=0:T:1;
t_=length(t)
x=sin(2*pi*5*t)
subplot(3,1,1);
plot(t,x);
a=0.5*(square((2*pi*50*t))+1)
subplot(3,1,2);
ylim([0 1])
plot(t,a)
for i=1:t_
    if a(i)~=0
       a(i)=x(i);
    end
end
subplot(3,1,3);
plot(t,a)
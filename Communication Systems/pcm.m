fs=100;
T=1/fs;
t=0:T:1;
x=10*sin(2*pi*4*t);
bit_depth=6;
mini=min(x);
maxi=max(x);
quantized=round((x+mini)/(maxi-mini)*(2^bit_depth-1));
decoded=quantized/(maxi-mini)*(2^bit_depth-1)+mini
subplot(3,1,1);
stem(t,x);
subplot(3,1,2);
stairs(t,quantized)
subplot(3,1,3);
plot(t,decoded)
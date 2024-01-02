fs=8000;
t_sampled=0:1/fs:1;
sampled=sin(2*pi*5*t_sampled);

fs=100;
T=1/fs;
t=0:T:1;
x=10*sin(2*pi*4*t);
bit_depth=4;
mini=min(x);
maxi=max(x);
quantized=round((x+mini)/(maxi-mini)*(2^bit_depth-1));



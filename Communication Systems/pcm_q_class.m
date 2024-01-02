%A PCM sysytem uses a uniform quantizer followed by a 7 bit encoder.The bit rate of the sysytem is 50Mbits/sec
%1.what is message bandwidth(use nyquist interval)
%2.Determine output signal to noise quantization ratio when a sinusoidal
%modulating wave of frequency 1Mhz is applied to the input



fs=1000;
bits=7;
bit_rate=50*10^6;

t=0:1/fs:1;
x=sin(2*pi*5*t);
subplot(3,1,1);
plot(t,x);
bit_depth=4;
mini=min(x);
maxi=max(x);
quantized=round((x+mini)/(maxi-mini)*(2^bit_depth-1));
subplot(3,1,2);
stairs(t,quantized);
N=
%decoded=quantized/(maxi-mini)*(2^bit_depth-1)+mini

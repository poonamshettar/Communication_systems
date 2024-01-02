min=300;
max=1.8*10^3;
fs=2*1.8*10^3;
fm=1.8*10^3;
t_sampled=min:1/fs:max;
t_cont=min:1/fm:max;
cont=sin(2*pi*0.01*t_cont);
sampled=sin(2*pi*0.001*t_sampled);
subplot(2,1,1);
reconstructed=zeros(1,length(t_cont));
for i=1:length(t_sampled)
    index=find(t_cont>=t_sampled(i),1,"first");
    reconstructed(index)=sampled(i);
end
reconstructed=interp1(t_sampled,sampled,t_cont,"linear");
subplot(3,1,1)
plot(t_cont,cont);
subplot(3,1,2)
stem(t_sampled,sampled);
subplot(3,1,3)
plot(t_cont,reconstructed)

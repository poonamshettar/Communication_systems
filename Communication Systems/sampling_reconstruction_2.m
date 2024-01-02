fs=300;
fm=100;
t_cont=0:1/fm:1;
t_sampled=0:1/fs:1;
cont=sin(2*pi*5*t_cont);
sampled=sin(2*pi*5*t_sampled);
reconstructed=zeros(1,length(t_cont));
for i=1:length(t_sampled)
    index=find(t_cont>=t_sampled(i),1,'first');
    reconstructed(index)=sample(i);
end
reconstructed=interp1(t_sampled,sampled,t_cont,'linear');
subplot(3,1,1)
plot(t_cont,cont);
subplot(3,1,2)
stem(t_sampled,sampled);
subplot(3,1,3)
plot(t_cont,reconstructed)

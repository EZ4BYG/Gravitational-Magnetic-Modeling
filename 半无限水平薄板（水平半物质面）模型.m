%% ������ˮƽ���壨ˮƽ�������棩

f=6;miu=2;%%����������ʣ���ܶ�
x0=30;h=5;dh=2;%%ͼ����ز���
c=pi/2 %������Ҫ�������c
z=0;

for x=0:0.01:60
    %w=(x-x0)/(h-x);
    %fai=acot(w)+c;
    %Vz=2*f*miu*fai;
    m=(h-z)^2+(x-x0)^2;%%ʡ�²���
    %Vxz=2*f*miu*(h-z)/m;
    %Vzz=2*f*miu*(x-x0)/m
    %subplot(2,1,1)
    %plot(x,Vxz,'r');hold on
    %subplot(2,1,2)
    Vzzz=4*f*miu*(x-x0)*(h-z)/m^2
    plot(x,Vzzz,'r');hold on 
end

%% 半无限水平薄板（水平半物质面）

f=6;miu=2;%%引力常数与剩余密度
x0=30;h=5;dh=2;%%图中相关参数
c=pi/2 %后面需要这个常数c
z=0;

for x=0:0.01:60
    %w=(x-x0)/(h-x);
    %fai=acot(w)+c;
    %Vz=2*f*miu*fai;
    m=(h-z)^2+(x-x0)^2;%%省事参数
    %Vxz=2*f*miu*(h-z)/m;
    %Vzz=2*f*miu*(x-x0)/m
    %subplot(2,1,1)
    %plot(x,Vxz,'r');hold on
    %subplot(2,1,2)
    Vzzz=4*f*miu*(x-x0)*(h-z)/m^2
    plot(x,Vzzz,'r');hold on 
end

%% 无限延深的垂直薄板（垂直半物质面）
f=6;miu=2; %引力常数与剩余密度
x0=25;h=5;z=0;b=2; %图中相关参数
for x=0:0.1:50
    if x>x0
        c=pi/2;
    else
        c=-pi/2;
    end
    if x==x0
        fai=0;
    else 
        fai=-(acot((h-z)/(x-x0))-c);
    end
    %Vx=-2*f*miu*fai;
    m=(h-z)^2+(x-x0)^2;
    %Vxz=-2*f*miu*(x-x0)/m;
    %Vzz=2*f*miu*(h-z)/m;
    Vzzz=2*f*miu*((h-z)^2-(x-x0)^2)/m^2;
    %grid on 
    %subplot(2,1,1)
    %plot(x,Vxz,'r');hold on
    %grid on
    %subplot(2,1,2)
    plot(x,Vzzz,'r');hold on 
end

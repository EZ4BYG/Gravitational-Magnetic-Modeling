%%水平圆柱体
f=6;miu=0.1; %%miu为单位长度内的质量
R=1;h=5;x0=30;%%半径很深度
y=0;z=0;%%剖面的参数

for x=0:0.1:60
    m=(x-x0)^2+(h-z)^2;
    Vz=2*f*miu*(h-z)/m;
    Vx=-2*f*miu*(x-x0)/m;
    Vxz=-4*f*miu*(x-x0)*(h-z)/m^2;
    Vzz=2*f*miu*((h-z)^2-(x-x0)^2)/m^2;
    Vzzz=4*f*miu*(h-z)*((h-z)^2-3*(x-x0)^2)/m^3
    subplot(2,3,1)
    grid on 
    plot(x,Vz,'r');hold on
    subplot(2,3,2)
    grid on
    plot(x,Vx,'r');hold on
    subplot(2,3,3)
    grid on 
    plot(x,Vxz,'r');hold on
    subplot(2,3,4)
    grid on
    plot(x,Vzz,'r');hold on 
    subplot(2,3,5)
    grid on
    plot(x,Vzzz,'r');hold on 
end


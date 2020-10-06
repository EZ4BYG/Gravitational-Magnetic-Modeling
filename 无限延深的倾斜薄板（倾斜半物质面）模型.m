%%无限延深的倾斜薄板（倾斜半物质面）
f=6;miu=2;z=0;
x0=25;b=2;h=5;arf=pi/3; %%相关参数

for x=0:0.1:50
    %m1=2*(x-x0)*sin(arf)^2-(h-z)*sin(2*arf);
    n=(h-z)^2+(x-x0)^2; %%m,n为参数替代
    %Vxz=-f*miu*m1/n;
    %m2=(x-x0)*sin(2*arf)+2*(h-z)*sin(arf)^2;
    %Vzz=f*miu*m2/n;
    Vzzz=2*f*miu*((x-x0)*(h-z)*sin(2*arf)+((h-z)^2-(x-x0)^2)*sin(arf)^2)/n^2
    %subplot(2,1,1)
    %grid on 
    %plot(x,Vxz,'r');hold on 
    %subplot(2,1,2)
    grid on 
    plot(x,Vzzz,'r');hold on
end

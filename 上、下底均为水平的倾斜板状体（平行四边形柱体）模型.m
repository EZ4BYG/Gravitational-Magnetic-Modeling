
%% 上，下底均为水平的倾斜板状体（上，下底均为水平的平行四边形柱体）
f=0.6;p=0.2;z=0;
arf=pi/3;b=10;h1=5;h2=20;x0=50;
for x=0:0.1:100
    %%不重要参数设置：
    r1=(h1-z)^2+(x-x0+b)^2; r2=(h2-z)^2+(x-x0+b-(h2-h1)*cot(arf))^2;
    r3=(h1-z)^2+(x-x0-b)^2; r4=(h2-z)^2+(x-x0-b-(h2-h1)*cot(arf))^2;
    D=x-x0+b+(h1-z)*cot(arf);
    Dp=x-x0-b+(h1-z)*cot(arf);
    c1=pi/2;c2=pi/2;%%不重要参数设置完毕
    
    
    %%开始主要参数设置：
    %%%%%%111111:(不用修改)
    dc1=(x-x0+b)/(h1-z)
    dc11=(x-x0-b)/(h1-z)
    dfai1=acot(dc1)-acot(dc11)
    %%%%%%222222:（不用修改）
    dc2=(x-x0+b-(h2-h1)*cot(arf))/(h2-z) 
    dc22=(x-x0-b-(h2-h1)*cot(arf))/(h2-z)
    dfai2=acot(dc2)-acot(dc22)
    %%%%%%333333：没问题
    dc3=(x-x0+b)/(h1-z)
    dfai3=acot(dc3)+c1;
    %%%%%%3333没问题
    dc4=(x-x0+b-(h2-h1)*cot(arf))/(h2-z);
    dfai4=acot(dc4)+c2;
    %%%%%%没问题
    dc5=(x-x0-b)/(h1-z);
    dfai5=acot(dc5)+c1;
    %%%%%%没问题
    dc6=(x-x0-b-(h2-h1)*cot(arf))/(h2-z);
    dfai6=acot(dc6)+c2;
    
    
    %%另一个主要参数开始设置：
    if x>x0
        xfai1=dfai3-dfai4+2*pi;
        xfai2=dfai5-dfai6+2*pi;
    else xfai1=dfai3-dfai4;
         xfai2=dfai5-dfai6;
    end
    %%主要参数设置完毕,开始计算和绘图
    %m=D*log(r2/r1)-Dp*log(r4/r3);  %%为了方便而设置的参数公式
    %n=D*xfai1-Dp*xfai2;
    %Vz=f*p*(sin(arf)^2*m-2*(h1-z)*dfai1+2*(h2-z)*dfai2+sin(2*arf)*n)
    %m1=(h2-z)-Dp/2*sin(2*arf);
    %n1=(h1-z)-Dp/2*sin(2*arf); 
    %w1=(h2-z)-D/2*sin(2*arf); 
    %o1=(h1-z)-D/2*sin(2*arf); 
    %q1=(D*xfai1-Dp*xfai2);
    %l1=log(r4^2); 
    %l2=log(r3^2); 
    %l3=log(r2^2); 
    %l4=log(r1^2);
    %Vx=f*p*(m1*l1-n1*l2-w1*l3+o1*l4-2*sin(arf)^2*q1)
    %grid on
    %plot(x,Vz,'r');
    %plot(x,Vx,'r');
    %m2=r2^2*r3^2/(r1^2*r4^2);
    %Vxz=f*p*(sin(arf)^2*log(m2)+sin(2*arf)*(xfai1-xfai2));
    %Vzz=-f*p*(0.5*sin(2*arf)*log(m2)-2*sin(arf)^2*(xfai1-xfai2))
    %subplot(2,1,1)
    %grid on 
    %plot(x,Vxz,'r');hold on 
    %subplot(2,1,2)
    %grid on
    m3=(h1-z)/r1-(h2-z)/r2-(h1-z)/r3+(h2-z)/r4;
    n3=(x-x0+b)/r1-(x-x0+b-(h2-h1)*cot(arf))/r2-(x-x0-b)/r3+(x-x0-b-(h2-h1)*cot(arf))/r4;
    Vzzz=-f*p*(sin(2*arf)*m3-2*sin(arf)^2*n3)
    plot(x,Vzzz,'r');hold on  
end
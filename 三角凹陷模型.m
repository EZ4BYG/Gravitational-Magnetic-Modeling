%%断层模型，平行的
f=6;miu=2;z=0;
x0=30;x00=30+30*tand(30);h1=5;h2=20;arf=2*pi/3;bt=2*pi/3;%%相关参数
for x=0:0.1:100
    %%%%%%%%%%%%%%%先进行左侧无限“参数与计算”设置
    r1=(x-x0)^2+(h1-z)^2;
    r2=(x-x0+(h2-h1)*acot(bt))^2+(h2-z)^2;
    c1=pi/2;c2=pi/2;
    st1=acot((x-x0)/(h1-z))-c1;
    st2=acot((x-x0+(h2-h1)*cot(bt))/(h2-z))+c2;
    fai=st1-st2;
    %%相关参数设置完毕
    m=x-x0-(h1-z)*cot(bt); 
    n=(h2-z)*st2-(h1-z)*st1;%%不变的参数形式
    w=x-x0-(h1-z)*cot(bt);
    q=(h1-z)/r1-(h2-z)/r2;
    y=(x-x0)/r1-(x-x0+((h2-h1)*cot(bt))/r2);
    %%省事参数设置完毕
    Vz=f*miu*(m*sin(bt)^2*log(r2/r1)+2*n-w*sin(2*bt)*fai);
    Vzz=-f*miu*(0.5*sin(2*bt)*log(r2/r1)+2*sin(bt)^2*fai);
    Vxz=-f*miu*(sin(bt)^2*log(r2/r1)-sin(2*bt)*fai);
    Vzzz=-f*miu*(sin(2*bt)*q+2*sin(bt)^2*y);
    
    %%%%%%%%%%%%%%%再进行右侧无限“参数与计算”设置
    r11=(x-x00)^2+(h1-z)^2;
    r22=(x-x00-(h2-h1)*acot(arf))^2+(h2-z)^2;
    st11=acot((x-x00)/(h1-z))+c1;
    st22=acot((x-x00-(h2-h1)*cot(arf))/(h2-z))+c2;
    fai1=st11-st22;
    %%相关参数设置完毕
    m1=x-x00+(h1-z)*cot(arf);
    n1=(h2-z)*st22-(h1-z)*st11;
    w1=x-x00+(h1-z)*cot(arf);
    q1=(h1-z)/r11-(h2-z)/r22;
    %%省事参数设置完毕
    y1=(x-x00)/r11-(x-x00-((h2-h1)*cot(arf))/r22);
    Vz1=f*miu*(m1*sin(arf)^2*log(r22/r11)+2*n1+w1*sin(2*arf)*fai1);
    Vzz1=-f*miu*(0.5*sin(2*arf)*log(r22/r11)-2*sin(arf)^2*fai1);
    Vxz1=f*miu*(sin(arf)^2*log(r22/r11)+sin(2*arf)*fai1);
    Vzzz1=-f*miu*(sin(2*arf)*q1-2*sin(arf)^2*y1);
    %VZ=Vz+Vz1;
    %VZZ=Vzz+Vzz1;
    %VXZ=Vxz+Vxz1;
    VZZZ=Vzzz+Vzzz1;
    %subplot(2,2,1)
    %plot(x,VZ,'r');hold on
    %subplot(2,2,2)
    %plot(x,VZZ);hold on
    %subplot(2,2,3)
    %plot(x,VXZ);hold on 
    %subplot(2,2,4)
    plot(x,VZZZ,'r');hold on
    %subplot(2,1,1)
    %plot(x,VXZ,'r');hold on
    %subplot(2,1,1)
    %plot(x,VXZ,'r');hold on
    %subplot(2,1,2)
    %plot(x,VZZ,'r');hold on 
end
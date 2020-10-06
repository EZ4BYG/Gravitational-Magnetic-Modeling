%%左侧无限延伸密度层的解析式
f=6;miu=2;z=0;
x0=60;h1=5;h2=15;bt=pi/3;%%相关参数
for x=0:0.1:100
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
    y=(x-x0)/r1-(x-x0+((h2-h1)*cot(bt)))/r2;
    %%省事参数设置完毕
    %Vz=f*miu*(m*sin(bt)^2*log(r2/r1)+2*n-w*sin(2*bt)*fai);
    %Vzz=-f*miu*(0.5*sin(2*bt)*log(r2/r1)+2*sin(bt)^2*fai);
    %Vxz=-f*miu*(sin(bt)^2*log(r2/r1)-sin(2*bt)*fai);
    Vzzz=-f*miu*(sin(2*bt)*q+2*sin(bt)^2*y)
    %%计算项设置完毕
    %subplot(2,2,1)
    %plot(x,Vz,'r');hold on
    %subplot(2,2,2)
    %plot(x,Vzz);hold on 
    %subplot(2,2,3)
    %plot(x,Vxz);hold on 
    %subplot(2,2,4)
    plot(x,Vzzz,'r');hold on 
    %subplot(2,1,1)
    %plot(x,Vxz,'r');hold on
    %subplot(2,1,2)
    %plot(x,Vzz,'r');hold on 
end
    
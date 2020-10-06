%%下底<上底的梯形柱体
f=6;miu=0.2;z=0;
h1=10;h2=15;x0=50;b=10;arf=pi/4;bt=pi/3; %%相关参数
for x=0:0.1:100
    A=x-x0-b; Ap=x-x0+b;
    B=x-x0-b+(h2-h1)*cot(arf);Bp=x-x0+b-(h2-h1)*cot(bt);
    D=x-x0-b-(h1-z)*cot(arf);Dp=x-x0+b+(h1-z)*cot(bt);
    c1=pi/2;c2=pi/2;
    r1=(h1-z)^2+Ap^2;
    r2=(h2-z)^2+Bp^2;
    r3=(h1-z)^2+A^2;
    r4=(h2-z)^2+B^2;%%%参变量设置完毕
    
    dfai1=acot(A/(h1-z))+c1;
    dfai2=acot(B/(h2-z))+c2;
    dfai3=acot(Ap/(h1-z))+c1;
    dfai4=acot(Bp/(h2-z))+c2;
    
    xfai3=acot(Bp/(h2-z))-acot(B/(h2-z));
    xfai4=acot(Ap/(h1-z))-acot(A/(h1-z));
    if x>x0
        xfai1=dfai1-dfai2+2*pi;
        xfai2=dfai3-dfai4+2*pi;
    else
        xfai1=dfai1-dfai2;
        xfai2=dfai3-dfai4;
    end
    
    %%%%%开始计算
    %m1=h2-z+D/2*sin(2*arf);n1=h1-z+D/2*sin(2*arf);o1=h2-z-Dp/2*sin(2*bt);q1=h1-z-Dp/2*sin(2*bt);w1=2*(D*sin(arf)^2*xfai1-Dp*sin(bt)^2*xfai2);
    %Vx=f*miu*(m1*log(r4)-n1*log(r3)-o1*log(r2)+q1*log(r1)+w1);
    
    %m2=Dp*sin(bt)^2*log(r2/r1);n2=D*sin(arf)^2*log(r4/r3);o2=((h2-z)*xfai3-(h1-z)*xfai4)*2;q2=D*sin(2*arf)*xfai1+Dp*sin(2*bt)*xfai2;
    %Vz=f*miu*(m2-n2+o2+q2);
    
    %m3=sin(2*bt)*log(r2/r1)+sin(2*arf)*log(r4/r3);n3=sin(arf)^2*xfai1-sin(bt)^2*xfai2;
    %Vzz=-f*miu*(0.5*m3+2*n3);
    
    %Vxz=f*miu*(sin(bt)^2*log(r2/r1)-sin(arf)^2*log(r4/r3)+2*sin(2*arf)*xfai1+2*sin(2*bt)*xfai2);
    
    m5=(h2-z)*sin(2*bt)-2*Bp*sin(bt)^2;n5=(h1-z)*sin(2*bt)-2*Ap*sin(bt)^2;o5=(h2-z)*sin(2*arf)+2*B*sin(arf)^2;q5=(h1-z)*sin(2*arf)+2*A*sin(arf)^2;
    Vzzz=f*miu*(m5/r1-n5/r2+o5/r3-q5/r4);%%计算公式已结束
    %%%开始画图
    
    %subplot(2,3,1)
    %grid on
    %plot(x,Vx);hold on 
    %subplot(2,3,2)
    %grid on 
    %plot(x,Vz);hold on 
    %subplot(2,3,3)
    %grid on 
    %plot(x,Vzz);hold on
    %subplot(2,3,4)
    %grid on 
    %plot(x,Vxz);hold on 
    %subplot(2,3,5)
    %grid on
    plot(x,Vzzz,'r');hold on 
   %subplot(2,1,1)
   %plot(x,Vxz,'r');hold on
   %subplot(2,1,2)
   %plot(x,Vzz,'r');hold on 
end
%%具下水平边的三角形柱体

f=6; p=0.1; %%引力常数，π，剩余密度
h1=10;h2=15;Ja=pi/3;Jb=pi/6; x0=30; %%物体的5大参数设置
z=0;y=0; %%剖面参数设置
c1=pi/2;c2=pi/2; %%后面会用到的“不变参数”
%%%%%开始正文：

for x=10:0.1:50
    %%%开始设置大参数：
    r1=((h1-z)^2+(x-x0)^2)^(0.5);
    D=x-x0+(h2-h1)*cot(Ja);
    r2=((h2-z)^2+D^2)^(0.5);
    E=x-x0-(h2-h1)*cot(Jb);
    r3=((h2-z)^2+E^2)^2;
    A=x-x0-(h1-z)*cot(Ja);B=x-x0+(h1-z)*cot(Jb); %% “大参数”设置完毕
    %%%开始设置小参数：
    
    dfai1=acot((x-x0)/(h1-z))+c1;
    dfai2=acot(D/(h2-z))+c2;
    dfai3=acot(E/(h2-z))+c2;
   
    xfai1=acot(D/(h2-z))-acot(E/(h2-z));
    if x>x0
        xfai2=dfai1-dfai2+2*pi;
        xfai3=dfai1-dfai3+2*pi;
    else
        xfai2=dfai1-dfai2;
        xfai3=dfai1-dfai3;
    end    
    %%%开始正规运算作图：
    %Vz=f*p*(A*sin(Ja)^2*log(r2^2/(r1*2))-B*sin(Jb)^2*log(r3^2/(r1^2))+2*(h2-z)*xfai1-A*sin(2*Ja)*xfai2-B*sin(2*Jb)*xfai3);
    %Vx=f*p*(0.5*(A*sin(2*Ja)+B*sin(2*Jb))*log(r1^2)-((h2-z)+A/2*sin(2*Ja))*log(r2^2)+((h2-z)-B/2*sin(2*Jb))*log(r3^2)-2*(A*sin(Jb)^2*xfai2-B*sin(Jb)^2*xfai3));
    %Vzz=f*p*(0.5*(sin(2*Ja)*log(r2^2/(r1*2))+sin(2*Jb)*log(r3^2/(r1^2)))+2*(sin(Ja)^2*xfai2-sin(Jb)^2*xfai3));
    %Vxz=f*p*(sin(Ja)^2*log(r2^2/(r1*2))-sin(Jb)^2*log(r3^2/(r1^2))-sin(2*Ja)*xfai2-sin(2*Jb)*xfai3);
    m=(h1-z)*(sin(2*Ja)+sin(2*Jb));n=2*(x-x0)*(sin(Ja)^2-sin(Jb)^2);o=(h2-z)*sin(2*Ja)+2*D*sin(Ja)^2;q=(h2-z)*sin(2*Jb)-2*E*sin(Jb)^2;%%无关参数设置
    Vzzz=f*p*((m+n)/r1^2-o/r2^2-q/r3^2);
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
    %plot(x,Vxx);hold on 
    %subplot(2,3,5)
    %grid on
    plot(x,Vzzz,'r');hold on 
    %subplot(2,1,1)
    %plot(x,Vxz,'r');hold on 
    %subplot(2,1,2)
    %plot(x,Vzz,'r');hold on
end



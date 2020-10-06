%%上顶为倾斜的无限延深垂直板状体
f=6;miu=2;z=0;
d1=5;d2=20;h=5;arf=pi/6;
for x=0:0.01:50
    r1=(h-z)^2+(x-d1)^2;
    r2=(h+(d2-d1)*tan(arf)-z)^2+(x-d2)^2;
    E=h+(x-d1)*tan(arf)-z;
    if x>d1
        c1=pi/2;
    else 
        c1=-pi/2;
    end
    if x>d2
        c2=pi/2;
    else 
        c2=-pi/2;
    end
    if x==d1
        st1=0;
    else
        st1=acot((h-z)/(x-d1))+c1;
    end
    if x==d2
        st2=0;
    else
       st2=acot((h+(d2-d1)*tan(arf)-z)/(x-d2))+c2;
    end
    fai=st1-st2;
    %Vx=-f*miu*(E*cos(arf)^2*log(r2/r1)-2*(x-d1)*st1+2*(x-d2)*st2+E*sin(2*arf)*fai);
    %Vxz=f*miu*(0.5*sin(2*arf)*log(r2/r1)-2*cos(arf)^2*fai);
    %Vzz=f*miu*(cos(arf)^2*log(r2/r1)+sin(2*arf)*fai);
    w1=(x-d1)/r1-(x-d2)/r2;w2=(h-z)/r1-(h+(d2-d1)*tan(arf)-z)/r2;
    Vzzz=f*miu*(2*cos(arf)^2*w1+sin(2*arf)*w2);
    %plot(x,Vx,'r');
    %subplot(2,1,1)
    %grid on 
    %plot(x,Vxz,'r');hold on
    %subplot(2,1,2)
    %grid on 
    %plot(x,Vzz,'r');hold on  
    plot(x,Vzzz,'r');
    hold on
end

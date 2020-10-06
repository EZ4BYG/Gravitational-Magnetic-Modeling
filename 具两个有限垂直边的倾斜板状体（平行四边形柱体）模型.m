%% 具两个垂直边的平行四边形柱体
f=6;miu=2;z=0;
h1=5;h2=10;d1=5;d2=20;arf=pi/6; %相关参数

for x=0:0.1:50
    r1=(h1-z)^2+(x-d1)^2;
    r2=(h1+(d2-d1)*tan(arf)-z)^2+(x-d2)^2;
    r3=(h2-z)^2+(x-d1)^2;
    r4=(h2+(d2-d1)*tan(arf)-z)^2+(x-d2)^2;
    E=h1+(x-d1)*tan(arf)-z; Ep=h2-(x-d1)*tan(arf)-z;
    m1=(x-d2)/(h1+(d2-d1)*tan(arf)-z); n1=(x-d1)/(h1-z);%%省事参数
    fai1=acot(m1)-acot(n1);
    m2=(x-d2)/(h2+(d2-d1)*tan(arf)-z); n2=(x-d1)/(h2-z);%%省事参数
    fai2=acot(m2)-acot(n2);
    n1=h1+(d2-d1)*tan(arf)-z;n2=h2+(d2-d1)*tan(arf)-z;
    if x==d2
        dfai2=0;
    else
        dfai2=acot(n1/(x-d2))-acot(n2/(x-d2));
    end
    if x==d1
        dfai1=0;
    else
        dfai1=acot((h1-z)/(x-d1))-acot((h2-z)/(x-d1));
    end
    
    %%%参数已设置完毕，开始计算;
    %c1=x-d2-Ep/2*sin(2*arf); c2=x-d1-Ep/2*sin(2*arf);
    %c3=x-d2-E/2*sin(2*arf);  c4=x-d1-E/2*sin(2*arf);
    %c5=E*fai1-Ep*fai2;
    %Vz=-f*miu*(c1*log(r4^2)-c2*log(r3^2)-c3*log(r2^2)+c4*log(r1^2)-2*cos(arf)^2*c5);
    %%
    %w1=Ep*log(r4/r3)-E*log(r2/r1);w2=E*fai1-Ep*fai2;
    %Vx=f*miu*(cos(arf)^2*w1+2*(x-d1)*dfai1-2*(x-d2)*dfai2-sin(2*arf)*w2)
    %%
    %subplot(2,1,1)
    %plot(x,Vx,'r');hold on 
    %subplot(2,1,2)
    %plot(x,Vz,'r');hold on
    %o1=r2^2*r3^2/(r1^2*r4^2);
    %Vxz=f*miu*(0.5*sin(2*arf)*log(o1)-2*cos(arf)^2*(fai1-fai2));
    %Vzz=f*miu*(cos(arf)^2*log(o1)+sin(2*arf)*(fai1-fai2))
    %subplot(2,1,1)
    %plot(x,Vxz,'r');hold on 
    %subplot(2,1,2)
    %plot(x,Vzz,'r');hold on
    q1=(x-d1)/r1-(x-d2)/r2-(x-d1)/r3+(x-d2)/r4;
    q2=(h1-z)/r1-(h1+(d2-d1)*tan(arf)-z)/r2;
    q3=(h2-z+(d2-d1)*tan(arf)-z)/r4;
    Vzzz=f*miu*(2*cos(arf)^2*q1+sin(2*arf)*(q2-(h2-z)/r3+q3))
    plot(x,Vzzz,'r');
    hold on
end

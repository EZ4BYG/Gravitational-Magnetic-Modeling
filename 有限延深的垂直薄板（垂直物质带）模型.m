%%有限延深的垂直薄板（垂直物质带）
f=6;miu=2; 
x0=25;h1=5;h2=15;b=2;z=0;%相关参数
for x=0:0.1:50
    if x==x0
        fai=0;
    else fai=acot((h1-z)/(x-x0))-acot((h2-z)/(x-x0)); %%求Vx有用
    end
    %m=((h2-z)^2+(x-x0)^2)/((h1-z)^2+(x-x0)^2); %%求Vz有用
    %Vz=f*miu*m;
    %Vx=2*f*miu*fai;
    m=(h1-z)^2+(x-x0)^2;
    n=(h2-z)^2+(x-x0)^2;
    %Vxz=-2*f*miu*((x-x0)/m-(x-x0)/n);
    %Vzz=2*f*miu*((h1-z)/m-(h2-z)/n);
    m1=(h1-z)^2-(x-x0)^2;n1=(h2-z)^2-(x-x0)^2;
    Vzzz=2*f*miu*(m1/m-n1/n);
    %subplot(2,1,1)
    %plot(x,Vxz,'r'); 
    %hold on
    %subplot(2,1,2)
    %plot(x,Vzz,'r');
    %hold on
    plot(x,Vzzz,'r');
    hold on 
end

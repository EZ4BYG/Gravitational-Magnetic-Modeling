%%有限宽度的水平薄板（水平物质带） 
f=6;miu=2; %%miu为剩余面质量
b=5;h=5;x0=25;dh=2;z=0; %%各种相关参数

for x=0:0.1:50
    fai=acot((x-x0+b)/(h-z))-acot((x-x0-b)/(h-z)); %%Vz会用到的参数
    %Vz=2*f*miu*fai;
    n=(h-z)^2+(x-x0-b)^2;m=(h-z)^2+(x-x0+b)^2; %%省事参数
    %Vx=f*miu*log(n/m);
    
    %Vzx=2*f*miu*((h-z)/m-(h-z)/n);
    %Vzz=2*f*miu*((x-x0+b)/m-(x-x0-b)/n);
    Vzzz=4*f*miu*((h-z)*(x-x0+b)/m^2-(h-z)*(x-x0-b)/n^2);
    %subplot(2,1,1)
    %grid on 
    %plot(x,Vzx,'r');
    %hold on 
    %subplot(2,1,2)
    grid on 
    plot(x,Vzzz,'r');
    hold on
end
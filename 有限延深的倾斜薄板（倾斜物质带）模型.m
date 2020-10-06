%%有限延深的“倾斜”薄板（倾斜物质带）
f=6;miu=2;z=0;%%引力常数与剩余密度
x0=25;h1=5;h2=25;b=2;arf=pi/3; %%相关参数

for x=0:0.1:50
    r1=((h1-z)^2+(x-x0)^2);
    r2=((h2-z)^2+(x-x0-(h2-h1)*cot(arf)))^2;
    m=x-x0-(h2-h1)*cot(arf);
    n=x-x0;
    if m==0
        st1=pi/2;
    end
    n=x-x0;
    if n==0
        st2=pi/2;
    end
    if m==0&n==0
        fai=st1-st2;
    else if m==0&n~=0
            fai=st1-acot((h1-z)/n);
        else if n==0&m~=0
                fai=acot((h2-z)/m)-st2;
            else fai=acot((h2-z)/m)-acot((h1-z)/n);
            end
        end
    end
    %cs=log(r2/r1); %%为了省事儿的参数（cs），下面会用到
    %Vx=f*miu*(0.5*sin(2*arf)*cs-2*(sin(arf))^2*fai);
    %Vz=f*miu*((sin(arf))^2*cs+sin(2*arf)*fai)
    %w1=(x-x0)/r1-m/r2;  w2=(h1-z)/r1-(h2-z)/r2;
    %Vxz=-2*f*miu*(sin(arf)^2*w1-0.5*sin(2*arf)*w2);
    %Vzz=2*f*miu*(0.5*sin(2*arf)*w1+sin(arf)^2*w2);
    o1=(h1-z)*(x-x0)/r1^2-(h2-z)*m/r2^2;
    o2=((h1-z)^2-(x-x0)^2)/r1^2-((h2-z)^2-m^2)/r2^2;
    Vzzz=2*f*miu*(sin(2*arf)*o1+sin(arf)^2*o2);
    %subplot(2,1,1)
    %plot(x,Vxz,'r');
    %hold on
    %subplot(2,1,2)
    plot(x,Vzzz,'r');
    hold on 
end

    
    
%%上顶为水平的无限延深倾斜板状体
f=6;p=2;z=0;
h=5;x0=50;b=10;arf=pi/3;
for x=0:0.1:100
    r1=(h-z)^2+(x-x0+b)^2;
    r2=(h-z)^2+(x-x0-b)^2;
    st1=acot((x-x0+b)/(h-z));
    st2=acot((x-x0-b)/(h-z));
    fai=st1-st2;
    %%
    %Vzz=f*p*(-0.5*sin(2*arf)*log(r2/r1)+2*sin(arf)^2*fai);
    %Vxz=f*p*(sin(arf)^2*log(r2/r1)+sin(2*arf)*fai)
    %subplot(2,1,1)
    %grid on 
    %plot(x,Vxz,'r');hold on 
    %subplot(2,1,2)
    %grid on 
    %plot(x,Vzz,'r');hold on 
    m1=(h-z)/r2-(h-z)/r1;
    n1=(x-x0-b)/r2-(x-x0+b)/r1;
    Vzzz=f*p*(sin(2*arf)*m1-2*sin(arf)^2*n1);
    plot(x,Vzzz,'r');
    hold on 
end

    
    
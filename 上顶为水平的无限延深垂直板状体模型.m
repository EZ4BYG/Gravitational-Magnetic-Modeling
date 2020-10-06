%% 上顶为水平的无限延深垂直板状体 %%

f=6; p=0.1;%%p为剩余密度
h=5;b=4; %%图中相关参数
x0=25;z=0; %%参数设置完毕

for x=0:0.1:50
    r1=(h-z)^2+(x-x0+b)^2;
    r2=(h-z)^2+(x-x0-b)^2;
    st1=acot((x-x0+b)/(h-z));
    st2=acot((x-x0-b)/(h-z));
    fai=st1-st2;
    
    m=(h-z)*log(r2^2/r1^2) ;
    n=2*(x-x0+b)*st1 
    w=-2*(x-x0-b)*st2; %%m,n,w为省事参数
    
    %Vx=-f*p*(m+n+w);
    %Vxz=f*p*log(r2/r1);
    %Vzz=2*f*p*fai;
    Vzzz=-2*f*p*((x-x0-b)/r2-(x-x0+b)/r1);
    grid on
    plot(x,Vzzz,'r','markersize',100);
    hold on 
end
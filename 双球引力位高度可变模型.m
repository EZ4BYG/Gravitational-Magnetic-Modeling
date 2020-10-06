%%同双球模型：y向100m，一个在30，一个在60 其他参数都一样：
pi=3.14;
R=1; h=5;%球半径为1米，深为5米
R1=10;h1=50;
p=0.1; %剩余密度
m=4/3*pi*R^3*p; %剩余质量
f=6; %引力常数 
%%半径r的相关参数:
x0=0; y0=30;y1=60;y2=45; % 唯独这里y0与y1是有变化的
x=0; %% h与z两个球都是一样的
%%
z=input('请输入观测高度z=')
for y=0:0.1:100
    r1=((x-x0)^2+(y-y0)^2+(h-z)^2)^(0.5);
    r2=((x-x0)^2+(y-y1)^2+(h-z)^2)^(0.5);
    r3=((x-x0)^2+(y-y1)^2+(h1-z)^2)^(0.5);
    Vz=f*m*(h-z)/(r1^3)+f*m*(h-z)/(r2^3)+f*m*(h1-z)/(r3^3);
    plot(y,Vz);
    hold on 
end
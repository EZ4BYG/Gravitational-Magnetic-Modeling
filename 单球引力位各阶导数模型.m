%%%单球模型
R=1; h=5; %球半径为1米，深为5米
p=0.1; %剩余密度
m=4/3*pi*R^3*p; %剩余质量
f=6; %引力常数，仅仅是正演，就随便给一个数值
%%半径r的相关参数:
x0=0; y0=30; y1=60;% 唯独这里y0与y1是有变化的，球心投影位置为(x0,y0)=(0,30)处
x=0;z=0; %% h与z两个球都是一样的
%%开始计算：
for y=0:0.1:90
    r0=((x-x0)^2+(y-y0)^2+(h-z)^2)^(0.5);
    r1=((x-x0)^2+(y-y1)^2+(h-z)^2)^(0.5);
    n=2*(h-z)^2-3*(x-x0)^2-3*(y-y0)^2;
    n1=2*(h-z)^2-3*(x-x0)^2-3*(y-y1)^2;
    Vzzz=3*f*m*n*(h-z)/r0^7+3*f*m*n1*(h-z)/r1^7;
    plot(y,Vzzz,'r');
    hold on 
end
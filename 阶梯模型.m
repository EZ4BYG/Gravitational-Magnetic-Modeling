%%����ģ�ͣ�ƽ�е�
f=6;miu=0.2;z=0;
x0=38.5;h1=20;h2=35;
x00=30;h11=5;h22=20;arf=pi/3;bt=2*pi/3;%%��ز���
for x=0:0.1:70
    %%%%%%%%%%%%%%%�Ƚ�����ࡰ��������㡱����
    r1=(x-x0)^2+(h1-z)^2;
    r2=(x-x0+(h2-h1)*acot(bt))^2+(h2-z)^2;
    c1=pi/2;c2=pi/2;
    st1=acot((x-x0)/(h1-z))-c1;
    st2=acot((x-x0+(h2-h1)*cot(bt))/(h2-z))+c2;
    fai=st1-st2;
    %%��ز����������
    m=x-x0-(h1-z)*cot(bt); 
    n=(h2-z)*st2-(h1-z)*st1;%%����Ĳ�����ʽ
    w=x-x0-(h1-z)*cot(bt);
    q=(h1-z)/r1-(h2-z)/r2;
    y=(x-x0)/r1-(x-x0+((h2-h1)*cot(bt))/r2);
    %%ʡ�²����������
    Vz=f*miu*(m*sin(bt)^2*log(r2/r1)+2*n-w*sin(2*bt)*fai);
    Vzz=-f*miu*(0.5*sin(2*bt)*log(r2/r1)+2*sin(bt)^2*fai);
    Vxz=-f*miu*(sin(bt)^2*log(r2/r1)-sin(2*bt)*fai);
    Vzzz=-f*miu*(sin(2*bt)*q+2*sin(bt)^2*y);
    %%%%%%%%%%%%%%%�ٽ����Ҳࡰ��������㡱����
    r11=(x-x00)^2+(h11-z)^2;
    r22=(x-x00-(h22-h11)*acot(arf))^2+(h22-z)^2;
    st11=acot((x-x00)/(h11-z))+c1;
    st22=acot((x-x00-(h22-h11)*cot(arf))/(h22-z))+c2;
    fai1=st11-st22;
    %%��ز����������
    m1=x-x00+(h11-z)*cot(arf);
    n1=(h22-z)*st22-(h11-z)*st11;
    w1=x-x00+(h11-z)*cot(arf);
    q1=(h11-z)/r11-(h22-z)/r22;
    %%ʡ�²����������
    y1=(x-x00)/r11-(x-x00-((h22-h11)*cot(arf))/r22);
    Vz1=f*miu*(m1*sin(arf)^2*log(r22/r11)+2*n1+w1*sin(2*arf)*fai1);
    Vzz1=-f*miu*(0.5*sin(2*arf)*log(r22/r11)-2*sin(arf)^2*fai1);
    Vxz1=f*miu*(sin(arf)^2*log(r22/r11)+sin(2*arf)*fai1);
    Vzzz1=-f*miu*(sin(2*arf)*q1-2*sin(arf)^2*y1)
    %VZ=Vz+Vz1;
    %VZZ=Vzz+Vzz1;
    %VXZ=Vxz+Vxz1;
    VZZZ=Vzzz+Vzzz1;
    %subplot(2,2,1)
    %plot(x,VZ,'r');hold on
    %subplot(2,2,2)
    %plot(x,VZZ,'5');hold on
    %subplot(2,2,3)
    %plot(x,VXZ,'r');hold on 
    %subplot(2,2,4)
    plot(x,VZZZ,'r');hold on
    %subplot(2,1,1)
    %plot(x,VXZ,'r');hold on
    %subplot(2,1,2)
    %plot(x,VZZ,'r');hold on 
end
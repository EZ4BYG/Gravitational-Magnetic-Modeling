%% �϶�Ϊˮƽ���������ֱ��״�� %%

f=6; p=0.1;%%pΪʣ���ܶ�
h=5;b=4; %%ͼ����ز���
x0=25;z=0; %%�����������

for x=0:0.1:50
    r1=(h-z)^2+(x-x0+b)^2;
    r2=(h-z)^2+(x-x0-b)^2;
    st1=acot((x-x0+b)/(h-z));
    st2=acot((x-x0-b)/(h-z));
    fai=st1-st2;
    
    m=(h-z)*log(r2^2/r1^2) ;
    n=2*(x-x0+b)*st1 
    w=-2*(x-x0-b)*st2; %%m,n,wΪʡ�²���
    
    %Vx=-f*p*(m+n+w);
    %Vxz=f*p*log(r2/r1);
    %Vzz=2*f*p*fai;
    Vzzz=-2*f*p*((x-x0-b)/r2-(x-x0+b)/r1);
    grid on
    plot(x,Vzzz,'r','markersize',100);
    hold on 
end
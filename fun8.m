function [c,ceq,k1,k2,s]=fun8(x,s)
c=[];ceq=[];
if isnan(s(1,1))
s=[0.2,0;0.2 0];
end
% ȡ��ֵ
w1=1:s(1,1):100;
w2=1:s(2,1):100;
% ������Լ��
k1=sin(w1*x(1)).*cos(w1*x(2))-1/1000*(w1-50).^2-sin(w1*x(3))-x(3)-1;
k2=sin(w2*x(2)).*cos(w2*x(1))-1/1000*(w2-50).^2-sin(w2*x(3))-x(3)-1;
% ����������Լ����ͼ��
plot(w1,k1,'-',w2,k2,'+');
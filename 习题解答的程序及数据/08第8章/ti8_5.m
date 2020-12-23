clc, clear
a=textread('data84.txt'); %把原始数据保存到纯文本文件data84.txt
a=a'; a=nonzeros(a); n=length(a);
plot(a,'.-')
for i=11:n
    b(i-10)=a(i)-a(i-10); %进行季节差分变换
end
b=b'; figure,plot(b,'.-')
figure, subplot(121), autocorr(b)
subplot(122), parcorr(b)
cs=armax(b,[1,10]) %拟合模型
figure, myres=resid(cs,b); %计算残差向量并画出残差的自相关函数图
[h,p,st]=lbqtest(myres,'lags',[6,12,18]) %进行LBQ检验
bhat=forecast(cs,b,2); %计算b的2期预测值
ahat=a(end-9:end-8)+bhat %求原始序列的2期预测值


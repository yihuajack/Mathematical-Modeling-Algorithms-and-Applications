clc, clear
x0=[1050  1100  1120  1250  1280]; x0=x0(:);
n=length(x0); alpha=0.1; T= tinv(1-alpha/2,n-1) %计算阈值
mu=mean(x0), sig=std(x0)
t=[mu-sig/sqrt(n)*T, mu+sig/sqrt(n)*T]
%以下命令ttest的返回值ci就直接给出了置信区间估计
[h,p,ci]=ttest(x0,mu,alpha)

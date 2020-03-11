clc,clear
x0=[15.0  15.8  15.2  15.1  15.9  14.7  14.8  15.5  15.6  15.3
15.1  15.3  15.0  15.6  15.7  14.8  14.5  14.2  14.9  14.9
15.2  15.0  15.3  15.6  15.1  14.9  14.2  14.6  15.8  15.2
15.9  15.2  15.0  14.9  14.8  14.5  15.1  15.5  15.5  15.1
15.1  15.0  15.3  14.7  14.5  15.5  15.0  14.7  14.6  14.2];
x0=x0(:);n=length(x0),xb=mean(x0),sig=std(x0) 
xmax=max(x0),xmin=min(x0)
[h,p,st]=chi2gof(x0,'cdf',@(z)normcdf(z,mean(x0),std(x0)),'nparam',2)
% 以下程序不需要，是为了作检验
val=chi2inv(0.95,4) % 计算上alpha分位数
fi=st.O % 提出在每个区间的观测频数
edg=st.edges % 提出分点数据
p=normcdf(edg,mean(x0),std(x0));pi=[p(2),diff(p(2:end-1)),1-p(end-1)]
npi=n*pi % 计算在每个区间的期望频数
tongji=sum((fi-npi).^2./npi) % 计算卡方统计量
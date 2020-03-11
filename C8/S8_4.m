clc,clear
a=textread('data83.txt');
xt=a(:,[2:2:end]);xt=nonzeros(xt); % 把原始数据按照时间先后次序展成列向量
yt=diff(xt); % 对原始数据进行差分变换
m=armax(yt,[2,1]) % 拟合arma模型
ythat=forecast(m,yt,10) % 计算yt的10期预测值
xthat=xt(end)+cumsum(ythat) % 计算原始数据的预测值
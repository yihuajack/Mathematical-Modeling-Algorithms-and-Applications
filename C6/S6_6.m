clc,clear
d=100;v1=1;v2=2;k=v1/v2;
y=@(x)d/2*((x/d).^(1-k)-(x/d).^(1+k)); % 定义解析解的匿名函数
ezplot(y,[100,0]) % 画解析解的曲线
dxy=@(t,xy)[-2*xy(1)/sqrt(xy(1)^2+xy(2)^2); 1-2*xy(2)/sqrt(xy(1)^2+xy(2)^2)]; % 定义微分方程的右端项
[t,xy]=ode45(dxy,[0,66.65],[100;0]); % 求数值解，求解的时间区间要逐步试验给出
solu=[t,xy] % 显示数值解
hold on % 图形保持
plot(xy(:,1),xy(:,2),'*r') % 画数值解
legend('解析解','数值解')
xlabel('\it x'),ylabel('\it y','Rotation',0)
title('') % 不显示标题
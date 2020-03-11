clc,clear
syms y(x)
Dy=diff(y); % 为了赋初值，定义一阶导数
y=dsolve(x^2*diff(y,2)+x*diff(y)+(x^2-1/4)*y,y(pi/2)==2,Dy(pi/2)==-2/pi);
y=simplify(y) % 化简符号解
pretty(y) % 分数线居中的显示格式
ezplot(y) % 画符号函数的图形
hold on % 图形保持命令
dy=@(x,y)[y(2); (1/4/x^2-1)*y(1)-y(2)/x]; % 定义微分方程组的右端项
[x,y]=ode45(dy,[pi/2,8],[2,-2/pi]); % 调用求数值解的命令
plot(x,y(:,1),'*') % 画数值解的图形
legend('符号解','数值解') % 对图形进行标注
title('') % 符号函数画图不显示标题
clc,clear
syms y(x)
Dy=diff(y); % 为了赋初值，定义一阶导数
y=dsolve(diff(y,2)==sqrt(1+diff(y)^2)/5/(1-x),y(0)==0,Dy(0)==0)
ezplot(y(2),[0,0.9999]) % 符号求解时，得到两个分支，这里画出一个分支
yy=subs(y(2),x,1) % 求击中时乙舰行驶的距离
yy=double(yy) % 把符号型数据化成浮点型数据
title('') % 不显示图形的标题
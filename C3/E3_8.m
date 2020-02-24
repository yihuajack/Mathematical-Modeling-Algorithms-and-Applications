syms x y
[x,y]=solve(x^2+y-6,y^2+x-6)
f=@(x)[x(1)^2+x(2)-6;x(2)^2+x(1)-6];
xy=fsolve(y,rand(2,1)) % 只能求给定初始值附近的一个零点
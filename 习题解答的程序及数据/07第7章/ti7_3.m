clc, clear
x0=[1050  1100  1120  1250  1280];
mu=bootci(10000,{@(x)mean(x),x0},'alpha',0.1) %计算均值的置信区间


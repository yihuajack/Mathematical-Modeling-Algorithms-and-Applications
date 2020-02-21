clc,clear
a=zeros(7);
a(1,2)=4;a(1,3)=2;
a(2,3)=3;a(2,4)=2;a(2,5)=6;
a(3,4)=5;a(3,6)=4;
a(4,5)=2;a(4,6)=7;
a(5,6)=4;a(5,7)=8;
a(6,7)=3;
b=sparse(a); % 构造稀疏矩阵，这里给出构造稀疏矩阵的另一种方法
[x,y,z]=graphshortestpath(b,1,7,'Directed',1,'Method','Bellman-Ford')
% 有向图，Directed属性值为真或1，方法(Method)属性的默认值是Dijkstra
view(biograph(b,[]))
clc, clear
x=[0.9501 0.2311 0.6068 0.4860 0.8913 0.7621 0.4565 0.0185 0.8214 0.4447];
y=[0.9528 0.7041 0.9539 0.5982 0.8407 0.4428 0.8368 0.5187 0.0222 0.3759];
subplot(131),voronoi(x,y); %直接画Voronoi图
title('Voronoi图')
subplot(132), plot(x,y,'.'), hold on 
tri=delaunay(x,y) %生成delaunay三角剖分，每行是一个三角形的顶点序号索引
triplot(tri,x,y,'k-'); %画delaunay三角形
title('delaunay三角形')
[vx,vy]=voronoi(x,y); %生成Voronoi图顶点的横坐标和纵坐标
subplot(133),plot(x,y,'kP',vx,vy,'k--'); %根据顶点坐标画Voronoi图
xlim([0 1]), ylim([0 1]) %限制x轴和y轴的范围
hold on, triplot(tri,x,y,'k-'); %画delaunay三角形
title('对比图')


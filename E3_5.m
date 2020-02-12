options=optimset('GradObj','on');
[x,y]=fminunc('fun3',rand(1,2),options)
options=optimset('GradObj','on','Hessian','on');
[x,y]=fminunc('fun4',rand(1,2),options)
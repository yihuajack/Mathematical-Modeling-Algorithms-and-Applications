clc,clear
a=zeros(5); % ���������ʼ��
a(1,[2 3])=[10 8]; % ��������ϵ�����
a(2,[4 5])=[2 7];
a(3,[2 4])=[5,10];
a(4,5)=4;
a=sparse(a); % ���칤������Ҫ��ϡ�����
[b,c]=graphmaxflow(a,1,5) % ���ù������������������
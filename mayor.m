f=[310,820,1740,840,1600,2560,2560,3620,1050,600,980,580,1170,430,300,500,610,900,1810,530,1060,890,950,1150,2240,1750,1050,280,420,zeros(1,30)];
f=-f';
a1=[zeros(1,28),1,1,1,1,1,1,zeros(1,25)];
a2=[zeros(1,34),1,1,1,1,1,1,zeros(1,19)];
a3=[zeros(1,27),1,zeros(1,12),1,1,1,1,1,1,zeros(1,13)];
a4=[1,1,1,1,1,zeros(1,41),1,zeros(1,12)];
a5=[zeros(1,5),1,1,1,1,zeros(1,50)];
a6=[zeros(1,9),1,1,1,1,1,zeros(1,45)];
a7=[zeros(1,14),1,1,1,1,1,zeros(1,40)];
a8=[zeros(1,19),1,1,1,zeros(1,37)];
a9=[zeros(1,22),1,1,1,1,1,zeros(1,20),1,zeros(1,11)];
a10=[zeros(1,48),ones(1,11)];
A=[a1;a2;a3;a4;a5;a6;a7;a8;a9;a10];
B=[5;5;5;5;3;6;4;4;5;45];
Be=[zeros(30,1)];
Ae=[zeros(30,59)];

zy=[0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
;0, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
;0, 0, 1, 0, 0, 0, 0, 2, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
;0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0
;0, 0, 0, 0, 0, 0, 0, 0, 2, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0
;0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 2, 0, 0, 0, 1
;0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 1, 1, 0, 0
;0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 1, 0, 1, 0, 1
;0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0
;0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
;0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0
;0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
;0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0
;0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
;1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
;1, 0, 0, 0, 0, 2, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
;0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
;0, 0, 0, 0, 0, 0, 2, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0
;0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0
;0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
;0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
;0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
;0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0
;0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 1, 0
;0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 1, 0, 1, 0
;0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 1, 0
;0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0
;0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
;0, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0];
yx=[1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0
;1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0
;1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0
;2, 2, 2, 0, 0, 0, 0, 0, 0, 0, 0
;2, 0, 2, 0, 0, 0, 0, 0, 0, 0, 2
;2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
;0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0
;0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0
;0, 0, 0, 0, 2, 1, 0, 0, 0, 0, 0
;0, 0, 1, 0, 0, 2, 0, 0, 0, 0, 0
;2, 0, 0, 0, 1, 2, 0, 0, 0, 0, 0
;0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0
;0, 0, 0, 2, 0, 0, 2, 0, 0, 0, 0
;1, 1, 1, 4, 0, 0, 0, 0, 0, 0, 0
;0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0
;0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0
;0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 0
;1, 1, 1, 2, 0, 0, 0, 0, 0, 0, 0
;0, 0, 0, 4, 0, 0, 4, 0, 0, 1, 0];
zx1=zy*yx;
zx2=[0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0
;0, 0, 2, 0, 0, 0, 2, 0, 0, 0, 0
;0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
;3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1
;0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
;0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
;0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
;0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
;0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
;0, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0
;0, 0, 1, 0, 0, 0, 2, 0, 0, 0, 0
;0, 0, 2, 0, 0, 1, 0, 0, 1, 0, 0
;0, 0, 0, 0, 0, 0, 3, 0, 0, 0, 0
;0, 0, 2, 0, 0, 0, 2, 0, 0, 0, 0
;0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0
;0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
;0, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0
;0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 0
;0, 0, 0, 0, 0, 0, 3, 0, 0, 0, 0
;3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
;0, 0, 2, 0, 0, 2, 0, 0, 0, 0, 2
;0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 1
;0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0
;0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
;0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
;0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0
;0, 0, 0, 2, 0, 0, 0, 1, 0, 0, 0
;0, 0, 0, 4, 1, 0, 0, 0, 0, 0, 0
;2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0];
zx=zx1+zx2;
%Ae(1)=[zy(:,1)',-1,zeros(1,29)];
%Ae(2)=[zy(:,2)',zeros(1,1),-1,zeros(1,28)];
%...
%Ae(19)=[zy(:,3)',zeros(1,18),-1,zeros(1,11)];

for i=1:19
	Ae(i,:)=[zy(:,i)',zeros(1,i-1),-1,zeros(1,30-i)];
end
for i=20:30
	Ae(i,:)=[zx(:,i-19)',zeros(1,i-1),-1,zeros(1,30-i)];
end

xm=[zeros(1,59)];
xM=[ones(1,59)]*45;
x0=[ones(1,59)];
const=[zeros(1,59)];
for i=1:59
    const(i)=i;
end
ff=optimset;
ff.LargeScale='off';
ff.TolX=1e-5;
ff.TolFun=1e-5;
ff.TolCon=1e-5;
ff.Display='iter';
[x,f_opt,key,C]=intlinprog(f,const,A,B,Ae,Be,xm,xM,x0)
% [x,f]=IntLp(f,A,B,Ae,Be,xm,xM)
function [x,y]=IntLp(f,G,h,Geq,heq,lb,ub,x,id,options)
global upper opt c x0 A b Aeq beq ID options;
if nargin<10,
	options=optimset({});
	options.Display='off';
	options.LargeScale='off';
end;
if nargin<9,
	id=ones(size(f));
end
if nargin<8,
	x=[];
end 
if nargin<7|isempty(ub),
	ub=inf*ones(size(f));
end
if nargin<6|isempty(lb),
	lb=zeros(size(f));
end
if nargin<5,
	heq=[];
end
if nargin<4,
	Geq=[];
end;
upper=inf;c=f;x0=x;
A=G;b=h;Aeq=Geq;
beq=heq;ID=id;ftemp=IntL_P(lb(:),ub(:));

function ftemp=IntL_P(vlb,vub)
global upper opt c x0 A b Aeq beq ID options;
if how<=0
	return;
end;
if ftemp-upper>0.00005;
	return;
end;
if max(abs(x.*ID-round(x.*ID)))<0.00005
	if upper-ftemp>0.00005
		opt=x';
		upper=ftemp;
		return;
	else
		opt=[opt;x'];
		return;
	end
end
notintx=find(abs(x-round(x))>=0.00005);
intx=fix(x);
tempvlb=vlb;tempvub=vub;
if vub(notintx(1,1),1)>=int(notintx(1,1),1)+1
	tempvlb(notintx(1,1),1)=intx(notintx(1,1),1)+1;
	ftemp=IntLP(tempvlb,vub);
end
if vlb(notintx(1,1),1)<=intx(notintx(1,1),1)
	tempvub(notintx(1,1),1)=intx(notintx(1,1),1);
	ftemp=IntL_P(vlb,tempvub);
end
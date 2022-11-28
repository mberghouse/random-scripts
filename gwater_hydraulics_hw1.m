% x=linspace(1,10,10);
% y=linspace(1,10,10);
% dir=[];
% mag=[];
% for i=x
%     for j=y
%         mag(round(i*1),round(j*1))=sqrt((2*i^2)^2+j^2);
%         dir(round(i*1),round(j*1))=atan2(i,j);
%     end
% end
% Xvec=mag.*cos(dir);
% Yvec=mag.*sin(dir);
% quiver(x,y,Yvec,Xvec)
[X,Y] = meshgrid(-4:4,-4:4);
U = Y.*Y;
V = X;
quiver(X,Y,U,V)
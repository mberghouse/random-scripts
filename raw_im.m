x = 1:2048;
y = 1:2048;
[xx yy] = meshgrid(x,y);
u = zeros(size(xx));
u(((xx-1024).^2+(yy-1024).^2)<200^2)=255;   % radius 100, center at the origin
% hard boundary

% weight the points: point itself; average of nearest neighbors;
% averaged of diagonal neighbors.  These must add up to 1.
% wp = .4;  wn = .4;  wd = .2;
% ind = 2:length(x)-1;
% u(ind,ind) = wp*u(ind,ind) ...
%   + (wn/4)*(u(ind-1,ind  ) + u(ind+1,ind  ) + u(ind  ,ind-1) + u(ind  ,ind+1) ) ...
%   + (wd/4)*(u(ind-1,ind-1) + u(ind-1,ind+1) + u(ind+1,ind-1) + u(ind+1,ind+1) );
% % extended boundary
% figure(2)
% imagesc(u)

% cmodel=imread('C:\Users\marcb\Desktop\masks\GS40PL10Z20_FR_1ulh_20X_25fps_1x1y_5min_002.jpg');
fid=fopen('testgeo_box.raw','w+');
cmodel=u;
cmodel(cmodel<12)=0;
cmodel(cmodel>12.5)=255;
imshow(cmodel)
%cmodel=imcomplement(cmodel);
% cmodel2=cmodel(1:1024,1:1024);
% cmodel3d=repmat(cmodel, [1 1 10]);
% B = permute(cmodel3d,[1 3 2]);
cnt=fwrite(fid,cmodel);
imwrite(cmodel,'testgeo_box.jpg');
% %imshow(cmodel)
% fclose(fid);

%for i=1:length(xc_)

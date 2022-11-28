script;clc;
clear all;warning off;
fh = findall(0,'type','figure');
for k=1:length(fh)
  clf(fh(k));
end
pause(0);

pore_space = [190,190,170]./255;
nn = 600;
cm1 = redblue(nn);
cm1 = [pore_space;cm1(end:-1:1,:)];
cm2 = hot(nn);
cm2 = [pore_space;cm2(end:-1:1,:)];
cm3 = [pore_space;[1,1,1];[0,0,0]];

% 1 - physical parameters
M = 4*1.5;                   % Scope magnification
px_size = .0000065;
level = 2^8-1 ;             % [bit]

% 2 - Particle tracking parameters
N = 12000;
visu = 1;
lobj = 15;                        % mean particle size in pixel (estimated by just looking at one picture)
max_dist0 = 30;                   % Max distance for single "jump" in pixels

folder = 'C:\Users\marcb\Desktop\PT Simulation\PTSimFrames_multi_grain_51particles\';
prefix = 'Fig_resize';

back = double(imread([folder,'background.jpg'])) ./level;
%time = load('E:\Flow\Acidovorax\GS80PL20Z20\FR_1ulh_20X_25fps_1x1y_5min_001.xlsx');
[ny,nx] = size(back);

j1 = 1;
j2 = ceil(nx);
i1 = 1;
i2 = ceil(ny);

back = back(i1:i2,j1:j2);

mask_on = 0;                      % the use of the mask depends on the resolution of the solid boundaries (grains)

if(mask_on)
 mask = double(imread([folder_mask,'mask_pos1.png'])) ./ level;
 mask = 1- mask;
 mask = mask(i1:i2,j1:j2);
 mask_N = mask;
 mask_N(mask == 0) = NaN;
end

pos_lst1=[];
pos_lst2=[];
%% img analysis

for k= 1:N
  im = double(imread([folder,prefix,sprintf('%06d.jpg',k)])) ./ level;
  %im=rgb2gray(im);
  im = im(i1:i2,j1:j2);            %

%%% method 1

%if(mask_on)
%  im2 = (im -back).* mask;  
%else
  im2 = im-back;
  %Use the code below if you want to save background subtracted images
%   baseFileName = sprintf('corrected_image#%d.jpg', k);
%   fullFileName = fullfile(folder, baseFileName);
%   imwrite(im2, fullFileName); 
  im2(im2 >= 0) = 0;
  im2 = -im2;
    
  im2_pk = im2;
  im2_wt = im2;
 
  im2_pk(im2_pk <= 0.02) = 0;   % the treshold values is around 3.5-4.0 times the mean value of the cleaned image
  im2_wt(im2_wt <= 0.07) = 0;
  
   
  im3_pk = bwareaopen(im2_pk,7,4);
  b1 = bpass(im3_pk,0,lobj);    
  b1 = b1 ./ max(max(b1));
 
%   baseFileName = sprintf('corrected_image#%d.jpg', k);
%   fullFileName = fullfile(folder, baseFileName);
%   imwrite(b1, fullFileName);
end

 


   
 pk = pkfnd(b1,0.27,lobj);   
 cnt = cntrd(b1,pk,lobj);
      
 im3_wt = bwareaopen(im2_wt,7,4);
 b2 = bpass(im3_wt,0,lobj);    
 b2 = b2 ./ max(max(b2));

 % Watershed option. In this case i better to at least double the
 % resolution of the image
 
 J = imresize(b2,[4088 4096]);  
 J(J<0) = 0;
 I2 = imtophat(J, strel('disk', 10));
 level_water = graythresh(I2);
 BW = im2bw(I2,level_water);
 D = -bwdist(~BW);
 D(~BW) = -Inf;
 L = watershed(D);
 
 if(visu)
  figure(7)
  clf
  imshow(label2rgb(L,'jet','w'))
 end
 
 L(L == 1) = 0;
 imBW = L;
 stats_bis = regionprops('table',imBW,'Centroid');
 centroids = cat(1, stats_bis.Centroid)./2;
 
fprintf('image no. %d over N %d ...\n',k,N)
    
    if(visu)
        figure(1)
        clf
        imagesc(b1)
        hold on
        plot(cnt(:,1),cnt(:,2),'go')
        plot(centroids(:,1),centroids(:,2),'r*')
        axis equal xy
        colormap(cm2)
        colorbar
        axis([100,600,100,600])
        %axis([1620,1720,300,400])
        set(gca,'Clim',[-0.3/nn,0.3])
        drawnow

       figure(2)
       clf
       imagesc(im2)
       hold on
       plot(cnt(:,1),cnt(:,2),'go')
       plot(centroids(:,1),centroids(:,2),'r*')
       axis equal xy
       colormap('gray')
       colorbar
       axis([115,170,80,130])
       drawnow 
          
        figure(3)
        clf
        imagesc(im3_pk)
        hold on
        plot(cnt(:,1),cnt(:,2),'go')
        plot(centroids(:,1),centroids(:,2),'r*')
        axis equal xy
        colorbar
        axis([115,170,80,130])
        drawnow
        
    end
    pos_lst1 = [pos_lst1;cnt(:,1),cnt(:,2),ones(length(cnt(:,1)),1) .* k];
    pos_lst2 = [pos_lst2;centroids(:,1),centroids(:,2),ones(length(centroids(:,1)),1) .* k];
%end

save([folder,'pos_lst_2000_frames_pk_pos2.dat'],'pos_lst1','-ASCII');
save([folder,'pos_lst_2000_frames_watershed_opt_pos2.dat'],'pos_lst2','-ASCII');

disp('Image Detection done: poslist created')

  
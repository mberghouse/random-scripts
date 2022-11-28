level = 2^8-1 ;             % [bit]

folder = 'D:\acidovorax_frames_GS40PL10Z20\FR_1ulh_20X_25fps_1x1y_5min_001\';

back = double(imread([folder,'background.jpg'])) ./level;
imshow(back)
mask=zeros(size(back));

for i = 1:36
   roi=imellipse;
   pause
   mask=mask+createMask(roi);
end
mask2=double(imread('C:\Users\marcb\Desktop\mask_GS40PL10Z20_FR_1ulh_20X_25fps_1x1y_5min_001.jpg')) ./level;
mask3=mask+mask2;
imwrite(mask,'C:/Users/marcb/Desktop/mask_GS40PL10Z20_FR_1ulh_20X_25fps_1x1y_5min_001_new.jpg')
% R=62;
% N_2 = nx;
% M_2 = zeros(N_2);
% ii = ceil(N_2/2);
% M_2(ii-82,ii-105) = 1;
% BOUND24 = bwdist(M_2) <= R;
% 
% M_2 = zeros(N_2);
% ii = ceil(N_2/2);
% M_2(ii-88,ii+150) = 1;
% BOUND25 = bwdist(M_2) <= R;
% 
% M_2 = zeros(N_2);
% ii = ceil(N_2/2);
% M_2(ii-94,ii+405) = 1;
% BOUND26 = bwdist(M_2) <= R;
% 
% BOUND=BOUND24+BOUND25+BOUND26;
% C=imfuse(BOUND,back);
% 
% imshow(C)
    

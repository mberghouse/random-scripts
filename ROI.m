clear
level = 2^8-1 ;    % [bit]

%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Manually create ROIs %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% folder = 'D:\acidovorax_frames_GS40PL20Z20\FR_5ulh_20X_25fps_1x1y_5min_001\';
% 
% back = double(imread([folder,'background.jpg'])) ./level;
% imshow(back)
% mask=zeros(size(back));
% 
% for i = 1:140
%    roi=imellipse;
%    pause
%    mask=mask+createMask(roi);
% end
% %mask2=double(imread('C:\Users\marcb\Desktop\mask_GS80PL80Z20_FR_1ulh_20X_25fps_1x1y_5min_001.jpg')) ./level;
% %mask3=mask+mask2;
% imwrite(mask,'C:/Users/marcb/Desktop/masks/GS40PL20Z20_FR_5ulh_20X_25fps_1x1y_5min_001.jpg')


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Programatically create ROIs for 402020 5ul/h %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% folder = 'D:\acidovorax_frames_GS40PL20Z20\FR_5ulh_20X_25fps_1x1y_5min_001\';
% 
% back = double(imread([folder,'background.jpg'])) ./level;
% imshow(back)
% mask=zeros(size(back));
% mask2=zeros(size(back));
% xstart_1=-25;
% xstart_2=98
% y=140;
% dy=252.5;
% spacing=254
% dx=7
% n=4;
% rows=1:1:10
% slope=1/40;
% for i = xstart_1:spacing:2400
%     for n=0:length(rows)
%         h = drawcircle('Center',[i+dx*n (y+dy*n+n)-i*slope],'Radius',63,'StripeColor','red');
%         mask=mask+createMask(h);
%     end
% end
% y=14;
% 
% for i = xstart_2:spacing:2400
%     for n=0:length(rows)
%         h = drawcircle('Center',[i+dx*n (y+dy*n+n)-i*slope],'Radius',63,'StripeColor','red');
%         mask2=mask2+createMask(h);
%     end
% end
% mask=mask+mask2;
%imwrite(mask,'C:/Users/marcb/Desktop/masks/GS40PL20Z20_FR_5ulh_20X_25fps_1x1y_5min_002.jpg')


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Programatically create ROIs for 401020 5ul/h %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% folder = 'D:\acidovorax_frames_GS40PL10Z20\FR_5ulh_20X_25fps_1x1y_5min_003\';
% 
% back = double(imread([folder,'background.jpg'])) ./level;
% imshow(back)
% mask=zeros(size(back));
% mask2=zeros(size(back));
% xstart_1=70;
% xstart_2=-35;
% y=62;
% dy=210;
% x_spacing=211;
% dx=5;
% rows=1:1:10;
% y_slope=-.005;
% x_slope=-.15;
% radius=62;
% for i = xstart_1:x_spacing:2400
%     for n=0:length(rows)
%         f=(n^2)/15;
%         h = drawcircle('Center',[i+dx*(n+f)*x_slope y+(dy*n+n)-(i*y_slope)],'Radius',radius,'StripeColor','red');
%         mask2=mask2+createMask(h);
%     end
% end
% y=-42;
% 
% for i = xstart_2:x_spacing:2400
%     for n=0:length(rows)
%         f=(n^2)/15;
%         h = drawcircle('Center',[i+dx*(n+f)*x_slope y+(dy*n+n)-(i*y_slope)],'Radius',radius,'StripeColor','red');
%         mask2=mask2+createMask(h);
%     end
% end
% %pause
% mask=mask+mask2;
%imwrite(mask,'C:/Users/marcb/Desktop/masks/GS40PL10Z20_FR_5ulh_20X_25fps_1x1y_5min_003.jpg')


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Programatically create ROIs for 802020 5ul/h %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% folder = 'D:\acidovorax_frames_GS80PL20Z20\FR_5ulh_20X_25fps_1x1y_5min_001\';
% 
% back = double(imread([folder,'background.jpg'])) ./level;
% imshow(back)
% mask=zeros(size(back));
% mask2=zeros(size(back));
% xstart_1=329;
% xstart_2=109;
% y=45;
% dy=425;
% x_spacing=418.2;
% dx=5;
% rows=1:1:10;
% y_slope=.044;
% x_slope=2.8;
% radius=140;
% for i = xstart_1:x_spacing:2400
%     for n=0:length(rows)
%         f=(n^2)/13;
%         h = drawcircle('Center',[i+dx*(n+f)*x_slope y+(dy*n+n)-(i*y_slope)],'Radius',radius,'StripeColor','red');
%         mask2=mask2+createMask(h);
%     end
% end
% y=-165;
% x_spacing=418.5;
% 
% for i = xstart_2:x_spacing:2400
%     for n=0:length(rows)
%         f=(n^2)/13;
%         h = drawcircle('Center',[i+dx*(n+f)*x_slope y+(dy*n+n)-(i*y_slope)],'Radius',radius,'StripeColor','red');
%         mask2=mask2+createMask(h);
%     end
% end
% %pause
% mask=mask+mask2;
% 
%imwrite(mask,'C:/Users/marcb/Desktop/masks/GS80PL20Z20_FR_5ulh_20X_25fps_1x1y_5min_001_v2.jpg')

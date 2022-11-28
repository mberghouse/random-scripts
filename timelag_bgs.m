% script;clc;
% clear all;warning off;

% 1 - physical parameters
level = 2^8-1 ;         % [bit]
 %Number of frames used to compute background
cd 'D:/'
% 'Paenibacellus/GS80PL10Z20/1min/',
 %{  'Paenibacellus/GS80PL20Z20/1min/',...
%'Geobacter/GS80PL10Z20/5min/','Geobacter/GS40PL20Z20/5min/','Geobacter/GS80PL10Z20/1min/','Geobacter/GS40PL20Z20/1min/',
          %'Paenibacellus/GS80PL20Z10/1min/', 'Paenibacellus/GS40PL20Z20/1min/', 'Paenibacellus/GS40PL10Z20/1min/', ...
          % 'Paenibacellus/GS80PL10Z20/5min/', 'Paenibacellus/GS80PL20Z20/5min/',...
          %'Paenibacellus/GS80PL20Z10/5min/', 'Paenibacellus/GS40PL20Z20/5min/', 'Paenibacellus/GS40PL10Z20/5min/', ...
folders = {'Acidovorax/GS80PL10Z20/5min/'};
    %'Geobacter/GS80PL20Z20/5min/','Geobacter/GS80PL20Z10/5min/','Geobacter/GS80PL20Z10/1min/','Geobacter/GS40PL10Z20/5min/','Geobacter/GS80PL20Z20/1min/','Geobacter/GS40PL10Z20/1min/'};
%{'Acidovorax/GS40PL10Z20/1min/','Acidovorax/GS40PL20Z20/1min/','Acidovorax/GS80PL10Z20/1min/','Acidovorax/GS80PL20Z20/1min/',...
%          'Acidovorax/GS80PL20Z10/1min/','Acidovorax/GS40PL10Z20/5min/',,'Acidovorax/GS80PL10Z20/5min/','Acidovorax/GS80PL20Z20/5min/',...
%          'Acidovorax/GS80PL20Z10/5min/'};
%,'Paenibacillus/GS80PL20Z20/'
%back=0;
for i=1:length(folders)
    cd ('D:/')
    folder=folders{i};
    files=dir([folder '*25fps*']);
    for j=4
        cd ('D:/')
        name=files(j).name;
        B=convertCharsToStrings(name);
        string=B{1}(1:end);
        %mkdir(['C:\Users\marcb\Desktop\matlab_bgs\',folder,string]);
        %folder_save=['C:\Users\marcb\Desktop\matlab_bgs\',folder,string];
        mkdir(['D:/noflow_bgs/',folder,string,'_bgs']);
        folder_save=['D:/noflow_bgs/',folder,string,'_bgs'];
        folder_input=['D:/',folder,string];
        cd (['D:/',folder,string])
        nlag=0;
        N=length(dir)-(nlag+2);
        for k=nlag+1:N
            %cd (['E:\Flow\',folder,string,'_frames'])
            %fprintf('im no. %d \n',k);
%             back1=rgb2gray(double(imread([folder_input,sprintf('/frame%d.jpg',k-4)])) ./ level);
%             back2=rgb2gray(double(imread([folder_input,sprintf('/frame%d.jpg',k-5)])) ./ level);
%             %back3=rgb2gray(double(imread([folder_input,sprintf('/frame%d.jpg',k-29)])) ./ level);
%             back=back1;%(back1+back2)/2;
            
            im = double(imread(sprintf('frame%d.jpg',k))) ./ level;
            
             im=rgb2gray(im);
%             back=back+im;
%             
             im=im-back;
             im=im*10;
            %im(im<.11)=0;
              %imshow(im)
            %cd (['C:\Users\marcb\Desktop\matlab_bgs\',folder,string])
             imwrite(im,[folder_save,sprintf('/frame%d.jpg',k)],'jpg');
        end
    end
end
%back=back./N;


% N=3180;
% prefix='frame';
%im = double(imread('C:\Users\marcb\Desktop\bgs_output_flow\paenibacillus_802020_5ulh_001_gaussmixv2\frame0.jpg')) ./ level;
%im=rgb2gray(im);
%back = zeros(size(im));
% folder='E:\Flow\Paenibacillus\GS80PL20Z20\FR_1ulh_20X_25fps_1x1y_5min_001_frames\';
% save_folder='C:\Users\marcb\Desktop\matlab_bgs\Paenibacillus\GS80PL20Z20\FR_1ulh_20X_25fps_1x1y_5min_001\';
% for k=460:N
%   fprintf('im no. %d \n',k);
%   back1=rgb2gray(double(imread([folder,prefix,sprintf('%d.jpg',k-3)])) ./ level);
%   back2=rgb2gray(double(imread([folder,prefix,sprintf('%d.jpg',k-4)])) ./ level);
%   %back3=rgb2gray(double(imread([folder,prefix,sprintf('%d.jpg',k-7)])) ./ level);
%   back=(back1+back2)/2;
% 
%   im = rgb2gray(double(imread([folder,prefix,sprintf('%d.jpg',k)])) ./ level);
%   %im=rgb2gray(im);
%   im=im-back;
%   im=im*8;
%   im(im<.09)=0;
%   %imshow(im)
%   imwrite(im,[save_folder,prefix,sprintf('%d.jpg',k)],'jpg');
% end
% 
% %imwrite(back,[folder,'background.jpg'],'jpg');
% disp('Done! ');
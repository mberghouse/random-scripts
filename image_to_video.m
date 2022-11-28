%Video = VideoReader('C:\Users\marcb\Desktop\PTSimFrames_multi_grain_72particles\video.avi');

folder = 'C:\Users\marcb\Desktop\annotated_paenibacillus_frames\';
prefix = 'frame';
% ii = 1;
% 
% while hasFrame(Video)
%    img = readFrame(Video);
%    filename = [sprintf('%03d',ii) 'resize.jpg'];
%    fullname = fullfile(myolder,'images',filename);
%    imwrite(img,fullname)    % Write out to a JPEG file (img1.jpg, img2.jpg, etc.)
%    ii = ii+1;
% end
% outputVideo = VideoWriter(fullfile(workingDir,'shuttle_out.avi'))


addpath('C:\Users\marcb\Desktop')
% % Check to make sure that folder actually exists.  Warn user if it doesn't.
%nlag=4;
N=2400;
%level=2^8-1
myVideo = VideoWriter('C:\Users\marcb\Desktop\annotated_paenibacillus.mp4', 'MPEG-4'); %open video file
%myVideo.Quality=100;
myVideo.FrameRate = 80;  %can adjust this, 5 - 10 works well for me
%myVideo.Height=512;
%myVideo.Width=512;
%im1 = double(imread('C:\Users\marcb\Desktop\lbm_sim_multigrain_2500particles\Fig_.jpg')) ./ level;

%imwrite(im1,'myMultipageFile.tif')
open(myVideo)
%tiff=zeros(400,4096,4116);
for k=1:N
  fprintf('im no. %d \n',k);

  im = imread([folder,prefix,sprintf('%d.jpg',k)]);
  im = imresize(im,[450, 450]);
  %tiff(k,:,:)=im;
  %im=im*2;
  %im(im<21)=0;
  %im=rgb2gray(im);
  %im = imresize (im, [512 512]);
  %imwrite(im,'myMultipageFile.tif','WriteMode','append')
  writeVideo(myVideo,im)

  
end
close(myVideo)
% %imwrite(back,[folder,'background_Acidovorax_40x10x20_2.jpg'],'jpg');
% 
% 
% v = VideoReader('C:\Users\marcb\Desktop\bacteria_vids\annotated_paenibacillus_video.mp4');
% vid_frames = read(v);  %read all frames
% clear v   %release it
% save('C:\Users\marcb\Desktop\401020_1ulh_OFsim_PT_noback_600part.mat', 'vid_frames');
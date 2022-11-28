% vidObj = VideoReader('C:\Users\marcb\Videos\2022-08-31 08-41-05.mp4');
% vidframes = read(vidObj,[1 Inf]);
% addpath('C:\Users\marcb\Downloads')
myVideo = VideoWriter('C:\Users\marcb\Desktop\annotated_paenibacillus_video.mp4', 'MPEG-4'); %open video file
myVideo.FrameRate = 60;  %can adjust this, 5 - 10 works well for me

open(myVideo)
for k=1:5235
  fprintf('im no. %d \n',k);
  im = vidframes(:,:,:,k);
  if k<=300
    writeVideo(myVideo,im)
  elseif k>300&&k<=1000
    RGB = insertShape(im,'circle',[300 900 40],'LineWidth',3);
    RGB = insertShape(RGB,'circle',[610 850 20],'LineWidth',3);
    RGB = insertShape(RGB,'circle',[610 800 20],'LineWidth',3);
    RGB = insertText(RGB,[380 850],'Attached Trajectories','FontSize',18,'TextColor','white');  
    RGB = insertShape(RGB,'circle',[700 620 80],'LineWidth',3);
    RGB = insertText(RGB,[660 630],'Diagonal Trajectories','FontSize',18,'TextColor','white');  
    writeVideo(myVideo,RGB)
  elseif k>1000&&k<=2000
    RGB = insertShape(im,'circle',[400 650 70],'LineWidth',3);
    RGB = insertText(RGB,[360 690],'Looping Trajectories','FontSize',18,'TextColor','white');
    writeVideo(myVideo,RGB)
  elseif k>2000&&k<=2400
    writeVideo(myVideo,im)  
  elseif k>2400&&k<=3200
    RGB = insertShape(im,'circle',[500 200 40],'LineWidth',3);
    RGB = insertShape(RGB,'circle',[400 270 50],'LineWidth',3);
    RGB = insertText(RGB,[460 250],'Random Trajectories','FontSize',18,'TextColor','white');  
    writeVideo(myVideo,RGB) 
  else
    writeVideo(myVideo,im)  
  end
  


  
end
close(myVideo)

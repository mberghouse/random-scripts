vidobj=VideoReader('D:/Acidovorax/GS40PL10Z20/FR_1ulh_20X_25fps_1x1y_5min_001.avi')
numFrames=vidobj.NumberofFrames;
n=numFrames;
for i=1:2:n
    frames=read(vidobj,i)
    imwrite(frames,['C:/Users/marcb/Desktop/acidovorax_frames','Image' int2str(i), '.jpg']);
    im(i)=images(frames);
end

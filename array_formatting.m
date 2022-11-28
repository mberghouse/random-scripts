y_paths_new=512-x_paths(:,1:52);
x_paths_new=y_paths(:,1:52);
writematrix(x_paths,'DRI_xpaths_2500particles.csv')
writematrix(y_paths,'DRI_ypaths_2500particles.csv')
plot(x_paths_new,y_paths_new)
%for i = x_paths(1,:)
%    i
%end
out = x_paths(:,all(~isnan(x_paths))); 
    
    



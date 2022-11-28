long_coos=traces_new.coos;

X=NaN(length(long_coos),length(time));
Y=NaN(length(long_coos),length(time));



for i=1:length(long_coos)
    if length(long_coos{1,i}(:,3))>40
        X(i,long_coos{1,i}(:,3)+1)=long_coos{1,i}(:,1);
        Y(i,long_coos{1,i}(:,3)+1)=long_coos{1,i}(:,2);
    end
    
end
X=X(:,1:length(time));
Y=Y(:,1:length(time));
writematrix(Y, 'yc_unil_2000part_4xspeed_dropped.csv')
writematrix(X, 'xc_unil_2000part_4xspeed_dropped.csv')
%writecell(tc, 'tc_unil_2800frames_600particles_trackpypos.csv')
frame_coos=[];
for j=1:length(traces_c.coos)
    frame_round=round(traces_c.coos{1,j}(:,3));
    traces_round=traces_c.coos{1,j};
    traces_round(:,3)=frame_round;
    for i=frame_round(1):frame_round(end)
        frame_ind=find(traces_round(:,3)==i);
        summed_x=sum(traces_round(frame_ind,1));
        average_x(i)=summed_x/length(frame_ind);
        summed_y=sum(traces_round(frame_ind,2));
        average_y(i)=summed_y/length(frame_ind);
    end

    new_coos=[average_x(frame_round(1):frame_round(end));average_y(frame_round(1):frame_round(end));(frame_round(1):frame_round(end))];
    new_coos=new_coos';
    frame_coos=[frame_coos;{new_coos}];
    
   
    
end
xc=[];
yc=[];
tc=[];
frame_coos=kill_short_coos(frame_coos);
for i=1:length(frame_coos)
    x = frame_coos{i,1}(:,1);
    xc=[xc;{x}];
    y = frame_coos{i,1}(:,2);
    yc=[yc;{y}];
    t = frame_coos{i,1}(:,3);
    tc=[tc;{t}];
    
end
XC=[];
YC=[];
TC=[];
for i=1:length(xc)
    X=fillmissing(xc{i,1}, 'linear');
    XC=[XC;{X}];
    Y=fillmissing(yc{i,1}, 'linear');
    YC=[YC;{Y}];
    T=fillmissing(tc{i,1}, 'linear');
    TC=[TC;{T}];
end
writecell(YC, 'yc_filipo_2500particles.csv')
writecell(XC, 'xc_filipo_2500particles.csv')
writecell(TC, 'tc_filipo_2500particles.csv')

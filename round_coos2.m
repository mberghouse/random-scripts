coos2=[];
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
    coos2=[coos2;{new_coos}];
    j
    
end

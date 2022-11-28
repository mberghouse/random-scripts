%index=[]
for i=1:236
    if length(coos{1,i})<6000
        index(i)=i;
    else
        index(i)=0
    end
end

ind_short=index>0;
%ind_long=index==0;
short_coos_ind=index(ind_short);
long_coos_ind=find(index==0);

for i=long_coos_ind
    long_coos{1,i}=coos{1,i};
end

for i=long_coos_ind
    plot(long_coos{1,i}(:,1), long_coos{1,i}(:,2))
    hold on
end



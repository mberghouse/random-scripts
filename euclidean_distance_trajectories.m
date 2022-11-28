%clear
%t1=readmatrix('C:\Users\marcb\Desktop\PT Simulation\trackpy_multigrain6.csv');
%xc=csvread('C:\Users\marcb\Desktop\xcinterp_multigrain_dropped_particles6.csv',1,1);
%yc=csvread('C:\Users\marcb\Desktop\ycinterp_multigrain_dropped_particles6.csv',1,1);


euclidean_dist2=[];
index=[];
x_TP=[];
y_TP=[];
unique_part=unique(t1(:,11));
for i=1:length(unique_part)
    particle=find(t1(:,11)==unique_part(i));
    x_TP=t1(particle,2);
    y_TP=t1(particle,3);
    
    for j=1:length(yc(:,1))
        %y_sim=yc_interp.iloc[j].loc[0:len(t1.y[t1.particle==i])-1]
        %x_sim=xc_interp.iloc[j].loc[0:len(t1.x[t1.particle==i])-1]
        index=[index;{i,j}];
        j
        if mean(mean(sqrt((x_TP-xc(j,:)).^2+(y_TP-yc(j,:)).^2)))<2
            euclidean_dist2=[euclidean_dist2;{sqrt((x_TP{i,1}-xc(j,:)).^2+(y_TP{i,1}-yc(j,:)).^2)}];

        end
    end
end

velpre_2000part_8xspeed_dropped_kalman_TM_z=readmatrix('C:\Users\marcb\Desktop\ParticleTrackingComparison_results\vel_angle\velpre_1000part_8xspeed_dropped_kalman_TM_z.csv', 'Range', 'B:C');
velpre_2000part_8xspeed_dropped_lap_TM_z=readmatrix('C:\Users\marcb\Desktop\ParticleTrackingComparison_results\vel_angle\velpre_1000part_8xspeed_dropped_lap_TM_z.csv', 'Range', 'B:C');
velpre_2000part_8xspeed_dropped_TP_z=readmatrix('C:\Users\marcb\Desktop\ParticleTrackingComparison_results\vel_angle\velpre_1000part_8xspeed_dropped_TP_z.csv', 'Range', 'B:C');
velxc_unil_2000part_8xspeed=readmatrix('C:\Users\marcb\Desktop\ParticleTrackingComparison_results\vel_angle\velxc_unil_1000part_8xspeed.csv', 'Range', 'B:C');
velxc_2000part_8xspeed=readmatrix('C:\Users\marcb\Desktop\ParticleTrackingComparison_results\vel_angle\velxc_1000part_8xspeed.csv', 'Range', 'B:C');

xgrid=linspace(-20,20);
ygrid=linspace(4,40);
[x1,y1] = meshgrid(xgrid, ygrid);
xi = [x1(:) y1(:)];

figure(6)
[f,ep]=ksdensity([velxc_2000part_8xspeed(:,1) velxc_2000part_8xspeed(:,2)],xi); % remove the outputs to see a 3D plot of the distribution
X = reshape(ep(:,1),length(xgrid),length(ygrid));
Y = reshape(ep(:,2),length(xgrid),length(ygrid));
Z = reshape(f,length(xgrid),length(ygrid));
contourf(X,Y,Z,10)
ax=gca;
set(gca, 'YScale', 'log')
xlabel('Angle')
ylabel('Velocity')
title('Sim')
box off
set(gca, 'YAxisLocation','origin','YColor',[1 1 1])
ax.YAxis.FontSize=12;
ax.XAxis.FontSize=12;
ax.YAxis.FontWeight='bold';
ax.XAxis.FontWeight='bold';
ax.TickLength=[.02 .05];
ax.LineWidth=1.5;
xlim([-20,20])

figure(7)
[f,ep]=ksdensity([velpre_2000part_8xspeed_dropped_kalman_TM_z(:,1) velpre_2000part_8xspeed_dropped_kalman_TM_z(:,2)],xi); % remove the outputs to see a 3D plot of the distribution
X = reshape(ep(:,1),length(xgrid),length(ygrid));
Y = reshape(ep(:,2),length(xgrid),length(ygrid));
Z = reshape(f,length(xgrid),length(ygrid));
contourf(X,Y,Z,10)
ax=gca;
set(gca, 'YScale', 'log')
xlabel('Angle')
ylabel('Velocity')
title('Trackmate Kalman')
box off
set(gca, 'YAxisLocation','origin','YColor',[1 1 1])
ax.YAxis.FontSize=12;
ax.XAxis.FontSize=12;
ax.YAxis.FontWeight='bold';
ax.XAxis.FontWeight='bold';
ax.TickLength=[.02 .05];
ax.LineWidth=1.5;
xlim([-20,20])

figure(8)
[f,ep]=ksdensity([velpre_2000part_8xspeed_dropped_lap_TM_z(:,1) velpre_2000part_8xspeed_dropped_lap_TM_z(:,2)],xi); % remove the outputs to see a 3D plot of the distribution
X = reshape(ep(:,1),length(xgrid),length(ygrid));
Y = reshape(ep(:,2),length(xgrid),length(ygrid));
Z = reshape(f,length(xgrid),length(ygrid));
contourf(X,Y,Z,10)
ax=gca;
set(gca, 'YScale', 'log')
xlabel('Angle')
title('Trackmate LAP')
ylabel('Velocity')
box off
set(gca, 'YAxisLocation','origin','YColor',[1 1 1])
ax.YAxis.FontSize=12;
ax.XAxis.FontSize=12;
ax.YAxis.FontWeight='bold';
ax.XAxis.FontWeight='bold';
ax.TickLength=[.02 .05];
ax.LineWidth=1.5;
xlim([-20,20])

figure(9)
[f,ep]=ksdensity([velpre_2000part_8xspeed_dropped_TP_z(:,1) velpre_2000part_8xspeed_dropped_TP_z(:,2)],xi); % remove the outputs to see a 3D plot of the distribution
X = reshape(ep(:,1),length(xgrid),length(ygrid));
Y = reshape(ep(:,2),length(xgrid),length(ygrid));
Z = reshape(f,length(xgrid),length(ygrid));
contourf(X,Y,Z,10)
ax=gca;
set(gca, 'YScale', 'log')
xlabel('Angle')
title('Trackpy')
ylabel('Velocity')
box off
set(gca, 'YAxisLocation','origin','YColor',[1 1 1])
ax.YAxis.FontSize=12;
ax.XAxis.FontSize=12;
ax.YAxis.FontWeight='bold';
ax.XAxis.FontWeight='bold';
ax.TickLength=[.02 .05];
ax.LineWidth=1.5;
xlim([-20,20])

figure(10)
[f,ep]=ksdensity([velxc_unil_2000part_8xspeed(:,1) velxc_unil_2000part_8xspeed(:,2)],xi); % remove the outputs to see a 3D plot of the distribution
X = reshape(ep(:,1),length(xgrid),length(ygrid));
Y = reshape(ep(:,2),length(xgrid),length(ygrid));
Z = reshape(f,length(xgrid),length(ygrid));
contourf(X,Y,Z,10)
ax=gca;
title('UNIL')
set(gca, 'YScale', 'log')
xlabel('Angle')
ylabel('Velocity')
box off
set(gca, 'YAxisLocation','origin','YColor',[1 1 1])
ax.YAxis.FontSize=12;
ax.XAxis.FontSize=12;
ax.YAxis.FontWeight='bold';
ax.XAxis.FontWeight='bold';
ax.TickLength=[.02 .05];
ax.LineWidth=1.5;
xlim([-20,20])




acid401020_1ulh_001=readmatrix('C:\Users\marcb\Desktop\flow_trajectories\tmate_angles\velacid_401020_1ulh_001_5framebgsz.csv', 'Range', 'B:C');
acid401020_1ulh_002=readmatrix('C:\Users\marcb\Desktop\flow_trajectories\tmate_angles\velacid_401020_1ulh_002_5framebgsz.csv', 'Range', 'B:C');
acid401020_1ulh_003=readmatrix('C:\Users\marcb\Desktop\flow_trajectories\tmate_angles\velacid_401020_1ulh_003_5framebgsz.csv', 'Range', 'B:C');
acid402020_1ulh_001=readmatrix('C:\Users\marcb\Desktop\flow_trajectories\tmate_angles\velacid_402020_1ulh_001_5framebgsz.csv', 'Range', 'B:C');
acid402020_1ulh_002=readmatrix('C:\Users\marcb\Desktop\flow_trajectories\tmate_angles\velacid_402020_1ulh_002_5framebgsz.csv', 'Range', 'B:C');
acid402020_1ulh_003=readmatrix('C:\Users\marcb\Desktop\flow_trajectories\tmate_angles\velacid_402020_1ulh_003_5framebgsz.csv', 'Range', 'B:C');
acid802020_1ulh_002=readmatrix('C:\Users\marcb\Desktop\flow_trajectories\tmate_angles\velacid_802020_1ulh_002_5framebgsz.csv', 'Range', 'B:C');
acid802020_1ulh_005=readmatrix('C:\Users\marcb\Desktop\flow_trajectories\tmate_angles\velacid_802020_1ulh_005_5framebgsz.csv', 'Range', 'B:C');
%
acid401020_5ulh_001=readmatrix('C:\Users\marcb\Desktop\flow_trajectories\tmate_angles\velacid_401020_5ulh_001_5framebgsz.csv', 'Range', 'B:C');
acid401020_5ulh_002=readmatrix('C:\Users\marcb\Desktop\flow_trajectories\tmate_angles\velacid_401020_5ulh_002_5framebgsz.csv', 'Range', 'B:C');
acid401020_5ulh_003=readmatrix('C:\Users\marcb\Desktop\flow_trajectories\tmate_angles\velacid_401020_5ulh_003_5framebgsz.csv', 'Range', 'B:C');
acid402020_5ulh_001=readmatrix('C:\Users\marcb\Desktop\flow_trajectories\tmate_angles\velacid_402020_5ulh_001_5framebgsz.csv', 'Range', 'B:C');
acid402020_5ulh_002=readmatrix('C:\Users\marcb\Desktop\flow_trajectories\tmate_angles\velacid_402020_5ulh_002_5framebgsz.csv', 'Range', 'B:C');
acid802020_5ulh_001=readmatrix('C:\Users\marcb\Desktop\flow_trajectories\tmate_angles\velacid_802020_5ulh_001_5framebgsz.csv', 'Range', 'B:C');
acid802020_5ulh_002=readmatrix('C:\Users\marcb\Desktop\flow_trajectories\tmate_angles\velacid_802020_5ulh_002_5framebgsz.csv', 'Range', 'B:C');
acid802020_5ulh_003=readmatrix('C:\Users\marcb\Desktop\flow_trajectories\tmate_angles\velacid_802020_5ulh_003_5framebgsz.csv', 'Range', 'B:C');
%
geo802020_1ulh_001=readmatrix('C:\Users\marcb\Desktop\flow_trajectories\tmate_angles\velgeo_802020_1ulh_001_5framebgsz.csv', 'Range', 'B:C');
geo802020_1ulh_002=readmatrix('C:\Users\marcb\Desktop\flow_trajectories\tmate_angles\velgeo_802020_1ulh_002_5framebgsz.csv', 'Range', 'B:C');
geo802020_1ulh_003=readmatrix('C:\Users\marcb\Desktop\flow_trajectories\tmate_angles\velgeo_802020_1ulh_003_5framebgsz.csv', 'Range', 'B:C');
geo802020_5ulh_001=readmatrix('C:\Users\marcb\Desktop\flow_trajectories\tmate_angles\velgeo_802020_5ulh_001_5framebgsz.csv', 'Range', 'B:C');
geo802020_5ulh_002=readmatrix('C:\Users\marcb\Desktop\flow_trajectories\tmate_angles\velgeo_802020_5ulh_002_5framebgsz.csv', 'Range', 'B:C');
geo802020_5ulh_003=readmatrix('C:\Users\marcb\Desktop\flow_trajectories\tmate_angles\velgeo_802020_5ulh_003_5framebgsz.csv', 'Range', 'B:C');
paen802020_1ulh_001=readmatrix('C:\Users\marcb\Desktop\flow_trajectories\tmate_angles\velpaen_802020_1ulh_001_5framebgsz.csv', 'Range', 'B:C');
paen802020_1ulh_002=readmatrix('C:\Users\marcb\Desktop\flow_trajectories\tmate_angles\velpaen_802020_1ulh_002_5framebgsz.csv', 'Range', 'B:C');
paen802020_1ulh_003=readmatrix('C:\Users\marcb\Desktop\flow_trajectories\tmate_angles\velpaen_802020_1ulh_003_5framebgsz.csv', 'Range', 'B:C');
paen802020_5ulh_001=readmatrix('C:\Users\marcb\Desktop\flow_trajectories\tmate_angles\velpaen_802020_5ulh_001_5framebgsz.csv', 'Range', 'B:C');
paen802020_5ulh_002=readmatrix('C:\Users\marcb\Desktop\flow_trajectories\tmate_angles\velpaen_802020_5ulh_002_5framebgsz.csv', 'Range', 'B:C');
paen802020_5ulh_003=readmatrix('C:\Users\marcb\Desktop\flow_trajectories\tmate_angles\velpaen_802020_5ulh_003_5framebgsz.csv', 'Range', 'B:C');
% % 
%%%% Concatenated Angles %%%%%%
acid401020_1ulh_angle=[acid401020_1ulh_001(:,1); acid401020_1ulh_002(:,1);acid401020_1ulh_003(:,1)];
acid402020_5ulh_angle=[acid402020_1ulh_001(:,1); acid402020_1ulh_002(:,1);acid402020_1ulh_003(:,1)];
acid802020_1ulh_angle=[ acid802020_1ulh_002(:,1);acid802020_1ulh_005(:,1)];

acid401020_5ulh_angle=[acid401020_5ulh_001(:,1); acid401020_5ulh_002(:,1);acid401020_5ulh_003(:,1)];
acid402020_1ulh_angle=[acid402020_5ulh_001(:,1); acid402020_5ulh_002(:,1)];
acid802020_5ulh_angle=[acid802020_5ulh_001(:,1); acid802020_5ulh_002(:,1);acid802020_5ulh_003(:,1)];
% 
geo802020_1ulh_angle=[geo802020_1ulh_001(:,1); geo802020_1ulh_002(:,1);geo802020_1ulh_003(:,1)];
geo802020_5ulh_angle=[geo802020_5ulh_001(:,1); geo802020_5ulh_002(:,1);geo802020_5ulh_003(:,1)];
% geo401020_1ulh=[geo401020_1ulh_005; geo401020_1ulh_006; geo401020_1ulh_007];
% geo401020_5ulh=[geo401020_5ulh_001; geo802020_5ulh_002];

paen802020_1ulh_angle=[paen802020_1ulh_001(:,1); paen802020_1ulh_002(:,1);paen802020_1ulh_003(:,1)];
paen802020_5ulh_angle=[paen802020_5ulh_001(:,1); paen802020_5ulh_002(:,1);paen802020_5ulh_003(:,1)];
% 
%%%% Concatenated Velocities %%%%%%

acid401020_1ulh_vel=[acid401020_1ulh_001(:,2); acid401020_1ulh_002(:,2);acid401020_1ulh_003(:,2)];
acid402020_5ulh_vel=[acid402020_1ulh_001(:,2); acid402020_1ulh_002(:,2);acid402020_1ulh_003(:,2)];
acid802020_1ulh_vel=[ acid802020_1ulh_002(:,2);acid802020_1ulh_005(:,2)];

acid401020_5ulh_vel=[acid401020_5ulh_001(:,2); acid401020_5ulh_002(:,2);acid401020_5ulh_003(:,2)];
acid402020_1ulh_vel=[acid402020_5ulh_001(:,2); acid402020_5ulh_002(:,2)];
acid802020_5ulh_vel=[acid802020_5ulh_001(:,2); acid802020_5ulh_002(:,2);acid802020_5ulh_003(:,2)];
% 
geo802020_1ulh_vel=[geo802020_1ulh_001(:,2); geo802020_1ulh_002(:,2);geo802020_1ulh_003(:,2)];
geo802020_5ulh_vel=[geo802020_5ulh_001(:,2); geo802020_5ulh_002(:,2);geo802020_5ulh_003(:,2)];
% geo401020_1ulh=[geo401020_1ulh_005; geo401020_1ulh_006; geo401020_1ulh_007];
% geo401020_5ulh=[geo401020_5ulh_001; geo802020_5ulh_002];

paen802020_1ulh_vel=[paen802020_1ulh_001(:,2); paen802020_1ulh_002(:,2);paen802020_1ulh_003(:,2)];
paen802020_5ulh_vel=[paen802020_5ulh_001(:,2); paen802020_5ulh_002(:,2);paen802020_5ulh_003(:,2)];
% 

xgrid=linspace(-140,140);
%ygrid=logspace(-1,3);
ygrid=linspace(.1,500);
[x1,y1] = meshgrid(xgrid, ygrid);
% Perform kernel density estimate
% [x y] is actual data, xi is the desired grid points to evaluate
% f is an estimate of the density, ep(:,1) is the X location, ep(:,2) is the y location
xi = [x1(:) y1(:)];
[f,ep]=ksdensity([acid401020_1ulh_angle acid401020_1ulh_vel],xi); % remove the outputs to see a 3D plot of the distribution
% format data in matrix for contourf and plot
X = reshape(ep(:,1),length(xgrid),length(ygrid));
Y = reshape(ep(:,2),length(xgrid),length(ygrid));
Z = reshape(f,length(xgrid),length(ygrid));
% f = figure;
% f.Position = [100 100 1000 900];
contourf(X,Y,Z,10)
ax=gca;
%ax.XAxis.Exponent = 0;
set(ax, 'YScale', 'log')
xlabel('Angle')%, 'Position',[73.96327669170044,0.204390052351996,1],'Color',[1 1 1])
ylabel('Velocity')
%title('Acidovorax (\phi = 0.42, Q = 1\mul/h)','FontSize',14)
%colorbar
set(ax, 'YAxisLocation','origin','YColor',[1 1 1])
ax.YAxis.FontSize=14;
ax.XAxis.FontSize=14;
ax.YAxis.FontWeight='bold';
ax.XAxis.FontWeight='bold';
ax.TickLength=[.02 .05];
ax.LineWidth=2.5;
xlim([-120,120])
box off
%axis square
%saveas(f,'final_figs\acid_401020_1ulh_anglevel.png')

% for i = 1:length(ax.XTickLabel)
%     ax.XTickLabel{i} = ['\color{black} ' ax.XTickLabel{i}];
% end

%colorbar

% ygrid=linspace(.01,max(paen802020_1ulh_vel));
% [x1,y1] = meshgrid(xgrid, ygrid);
% xi = [x1(:) y1(:)];
figure(2)
[f,ep]=ksdensity([acid401020_5ulh_angle acid401020_5ulh_vel],xi); % remove the outputs to see a 3D plot of the distribution
% format data in matrix for contourf and plot
X = reshape(ep(:,1),length(xgrid),length(ygrid));
Y = reshape(ep(:,2),length(xgrid),length(ygrid));
Z = reshape(f,length(xgrid),length(ygrid));
contourf(X,Y,Z,10)
ax=gca;
%ax.XAxis.Exponent = 0;
set(gca, 'YScale', 'log')
xlabel('Angle')
ylabel('Velocity')
box off
%title('Acidovorax (\phi = 0.42, Q = 5\mul/h)','FontSize',14)
%colorbar
set(gca, 'YAxisLocation','origin','YColor',[1 1 1])
ax.YAxis.FontSize=12;
ax.XAxis.FontSize=12;
ax.YAxis.FontWeight='bold';
ax.XAxis.FontWeight='bold';
ax.TickLength=[.02 .05];
ax.LineWidth=1.5;
xlim([-120,120])
%saveas(gcf,'acid_401020_5ulh_anglevel.png')

%colorbar

figure(3)
[f,ep]=ksdensity([acid402020_1ulh_angle acid402020_1ulh_vel],xi); % remove the outputs to see a 3D plot of the distribution
% format data in matrix for contourf and plot
X = reshape(ep(:,1),length(xgrid),length(ygrid));
Y = reshape(ep(:,2),length(xgrid),length(ygrid));
Z = reshape(f,length(xgrid),length(ygrid));
contourf(X,Y,Z,10)
ax=gca;
%ax.XAxis.Exponent = 0;
set(gca, 'YScale', 'log')
xlabel('Angle')
ylabel('Velocity')
box off
%title('Acidovorax (\phi = 0.6, Q = 1\mul/h)','FontSize',14)
%colorbar
set(gca, 'YAxisLocation','origin','YColor',[1 1 1])
ax.YAxis.FontSize=12;
ax.XAxis.FontSize=12;
ax.YAxis.FontWeight='bold';
ax.XAxis.FontWeight='bold';
ax.TickLength=[.02 .05];
ax.LineWidth=1.5;
xlim([-120,120])
%saveas(gcf,'acid_402020_1ulh_anglevel.png')

%colorbar

figure(4)
[f,ep]=ksdensity([acid402020_5ulh_angle acid402020_5ulh_vel],xi); % remove the outputs to see a 3D plot of the distribution
% format data in matrix for contourf and plot
X = reshape(ep(:,1),length(xgrid),length(ygrid));
Y = reshape(ep(:,2),length(xgrid),length(ygrid));
Z = reshape(f,length(xgrid),length(ygrid));
contourf(X,Y,Z,10)
ax=gca;
%ax.XAxis.Exponent = 0;
set(gca, 'YScale', 'log')
xlabel('Angle')
ylabel('Velocity')
box off
%title('Acidovorax (\phi = 0.6, Q = 5\mul/h)','FontSize',14)
%colorbar
set(gca, 'YAxisLocation','origin','YColor',[1 1 1])
ax.YAxis.FontSize=12;
ax.XAxis.FontSize=12;
ax.YAxis.FontWeight='bold';
ax.XAxis.FontWeight='bold';
ax.TickLength=[.02 .05];
ax.LineWidth=1.5;
xlim([-120,120])
%saveas(gcf,'acid_402020_5ulh_anglevel.png')

%colorbar

figure(5)
[f,ep]=ksdensity([acid802020_1ulh_angle acid802020_1ulh_vel],xi); % remove the outputs to see a 3D plot of the distribution
% format data in matrix for contourf and plot
X = reshape(ep(:,1),length(xgrid),length(ygrid));
Y = reshape(ep(:,2),length(xgrid),length(ygrid));
Z = reshape(f,length(xgrid),length(ygrid));
contourf(X,Y,Z,10)
ax=gca;
%ax.XAxis.Exponent = 0;
set(gca, 'YScale', 'log')
xlabel('Angle')
ylabel('Velocity')
box off
%title('Acidovorax (\phi = 0.42, Q = 1\mul/h)','FontSize',14)
%colorbar
set(gca, 'YAxisLocation','origin','YColor',[1 1 1])
ax.YAxis.FontSize=12;
ax.XAxis.FontSize=12;
ax.YAxis.FontWeight='bold';
ax.XAxis.FontWeight='bold';
ax.TickLength=[.02 .05];
ax.LineWidth=1.5;
xlim([-120,120])
%saveas(gcf,'acid_802020_1ulh_anglevel.png')

%colorbar

figure(6)
[f,ep]=ksdensity([acid802020_5ulh_angle acid802020_5ulh_vel],xi); % remove the outputs to see a 3D plot of the distribution
% format data in matrix for contourf and plot
X = reshape(ep(:,1),length(xgrid),length(ygrid));
Y = reshape(ep(:,2),length(xgrid),length(ygrid));
Z = reshape(f,length(xgrid),length(ygrid));
contourf(X,Y,Z,10)
ax=gca;
%ax.XAxis.Exponent = 0;
set(gca, 'YScale', 'log')
xlabel('Angle')
ylabel('Velocity')
box off
%title('Acidovorax (\phi = 0.42, Q = 5\mul/h)','FontSize',14)
%colorbar
set(gca, 'YAxisLocation','origin','YColor',[1 1 1])
ax.YAxis.FontSize=12;
ax.XAxis.FontSize=12;
ax.YAxis.FontWeight='bold';
ax.XAxis.FontWeight='bold';
ax.TickLength=[.02 .05];
ax.LineWidth=1.5;
xlim([-120,120])
%saveas(gcf,'acid_802020_5ulh_anglevel.png')

%colorbar

figure(7)
[f,ep]=ksdensity([paen802020_1ulh_angle paen802020_1ulh_vel],xi); % remove the outputs to see a 3D plot of the distribution
% format data in matrix for contourf and plot
X = reshape(ep(:,1),length(xgrid),length(ygrid));
Y = reshape(ep(:,2),length(xgrid),length(ygrid));
Z = reshape(f,length(xgrid),length(ygrid));
contourf(X,Y,Z,10)
ax=gca;
%ax.XAxis.Exponent = 0;
set(gca, 'YScale', 'log')
xlabel('Angle')
ylabel('Velocity')
box off
%title('Paenibacillus (\phi = 0.42, Q = 1\mul/h)','FontSize',14)
%colorbar
set(gca, 'YAxisLocation','origin','YColor',[1 1 1])
ax.YAxis.FontSize=12;
ax.XAxis.FontSize=12;
ax.YAxis.FontWeight='bold';
ax.XAxis.FontWeight='bold';
ax.TickLength=[.02 .05];
ax.LineWidth=1.5;
xlim([-120,120])
%saveas(gcf,'paen_802020_1ulh_anglevel.png')

%colorbar

figure(8)
[f,ep]=ksdensity([paen802020_5ulh_angle paen802020_5ulh_vel],xi); % remove the outputs to see a 3D plot of the distribution
% format data in matrix for contourf and plot
X = reshape(ep(:,1),length(xgrid),length(ygrid));
Y = reshape(ep(:,2),length(xgrid),length(ygrid));
Z = reshape(f,length(xgrid),length(ygrid));
contourf(X,Y,Z,10)
ax=gca;
%ax.XAxis.Exponent = 0;
set(gca, 'YScale', 'log')
xlabel('Angle')
ylabel('Velocity')
box off
%title('Paenibacillus (\phi = 0.42, Q = 5\mul/h)','FontSize',14)
%colorbar
set(gca, 'YAxisLocation','origin','YColor',[1 1 1])
ax.YAxis.FontSize=12;
ax.XAxis.FontSize=12;
ax.YAxis.FontWeight='bold';
ax.XAxis.FontWeight='bold';
ax.TickLength=[.02 .05];
ax.LineWidth=1.5;
xlim([-120,120])
%saveas(gcf,'paen_802020_5ulh_anglevel.png')

%colorbar

figure(9)
[f,ep]=ksdensity([geo802020_1ulh_angle geo802020_1ulh_vel],xi); % remove the outputs to see a 3D plot of the distribution
% format data in matrix for contourf and plot
X = reshape(ep(:,1),length(xgrid),length(ygrid));
Y = reshape(ep(:,2),length(xgrid),length(ygrid));
Z = reshape(f,length(xgrid),length(ygrid));
contourf(X,Y,Z,10)
ax=gca;
%ax.XAxis.Exponent = 0;
set(gca, 'YScale', 'log')
xlabel('Angle')
ylabel('Velocity')
%title('Geobacter (\phi = 0.42, Q = 1\mul/h)','FontSize',14)
%colorbar
box off
set(gca, 'YAxisLocation','origin','YColor',[1 1 1])
ax.YAxis.FontSize=12;
ax.XAxis.FontSize=12;
ax.YAxis.FontWeight='bold';
ax.XAxis.FontWeight='bold';
ax.TickLength=[.02 .05];
ax.LineWidth=1.5;
xlim([-120,120])
%saveas(gcf,'geo_802020_1ulh_anglevel.png')

%colorbar

figure(10)
[f,ep]=ksdensity([geo802020_5ulh_angle geo802020_5ulh_vel],xi); % remove the outputs to see a 3D plot of the distribution
% format data in matrix for contourf and plot
X = reshape(ep(:,1),length(xgrid),length(ygrid));
Y = reshape(ep(:,2),length(xgrid),length(ygrid));
Z = reshape(f,length(xgrid),length(ygrid));
contourf(X,Y,Z,10)
ax=gca;
%ax.XAxis.Exponent = 0;
set(gca, 'YScale', 'log')

xlabel('Angle')
ylabel('Velocity')
%title('Geobacter (\phi = 0.42, Q = 5\mul/h)','FontSize',14)
%colorbar
set(gca, 'YAxisLocation','origin','YColor',[1 1 1])
ax.YAxis.FontSize=12;
ax.XAxis.FontSize=12;
ax.YAxis.FontWeight='bold';
ax.XAxis.FontWeight='bold';
ax.TickLength=[.02 .05];
ax.LineWidth=1.5;
xlim([-120,120])
box off
%saveas(gcf,'geo_802020_5ulh_anglevel.png')

%%%% Absolute Value Angles (0-180) %%%%%

% acid401020_1ulh_angle_absval=abs(acid401020_1ulh_angle);
% acid401020_5ulh_angle_absval=abs(acid401020_5ulh_angle);
% acid402020_1ulh_angle_absval=abs(acid402020_1ulh_angle);
% acid402020_5ulh_angle_absval=abs(acid402020_5ulh_angle);
% acid802020_1ulh_angle_absval=abs(acid802020_1ulh_angle);
% acid802020_5ulh_angle_absval=abs(acid802020_5ulh_angle);
% 
% geo802020_1ulh_angle_absval=abs(geo802020_1ulh_angle);
% geo802020_5ulh_angle_absval=abs(geo802020_5ulh_angle);
% 
% paen802020_1ulh_angle_absval=abs(paen802020_1ulh_angle);
% paen802020_5ulh_angle_absval=abs(paen802020_5ulh_angle);
% 
% xgrid=linspace(0,180);
% ygrid=linspace(.1,500);
% [x1,y1] = meshgrid(xgrid, ygrid);
% % Perform kernel density estimate
% % [x y] is actual data, xi is the desired grid points to evaluate
% % f is an estimate of the density, ep(:,1) is the X location, ep(:,2) is the y location
% xi = [x1(:) y1(:)];
% 
% figure(11)
% [f,ep]=ksdensity([acid802020_1ulh_angle_absval acid802020_1ulh_vel],xi); % remove the outputs to see a 3D plot of the distribution
% % format data in matrix for contourf and plot
% X = reshape(ep(:,1),length(xgrid),length(ygrid));
% Y = reshape(ep(:,2),length(xgrid),length(ygrid));
% Z = reshape(f,length(xgrid),length(ygrid));
% contourf(X,Y,Z,20)
% ax=gca;
% %ax.XAxis.Exponent = 0;
% set(gca, 'YScale', 'log')
% xlabel('Angle')
% ylabel('Velocity')
% title('Angle-Velocity contour map acid802020_1ulh')
% colorbar
% colormap jet
% 
% figure(12)
% [f,ep]=ksdensity([acid802020_5ulh_angle_absval acid802020_5ulh_vel],xi); % remove the outputs to see a 3D plot of the distribution
% % format data in matrix for contourf and plot
% X = reshape(ep(:,1),length(xgrid),length(ygrid));
% Y = reshape(ep(:,2),length(xgrid),length(ygrid));
% Z = reshape(f,length(xgrid),length(ygrid));
% contourf(X,Y,Z,20)
% ax=gca;
% %ax.XAxis.Exponent = 0;
% set(gca, 'YScale', 'log')
% xlabel('Angle')
% ylabel('Velocity')
% title('Angle-Velocity contour map acid802020_5ulh')
% colorbar
% colormap jet
% 
% figure(13)
% [f,ep]=ksdensity([paen802020_1ulh_angle_absval paen802020_1ulh_vel],xi); % remove the outputs to see a 3D plot of the distribution
% % format data in matrix for contourf and plot
% X = reshape(ep(:,1),length(xgrid),length(ygrid));
% Y = reshape(ep(:,2),length(xgrid),length(ygrid));
% Z = reshape(f,length(xgrid),length(ygrid));
% contourf(X,Y,Z,20)
% ax=gca;
% %ax.XAxis.Exponent = 0;
% set(gca, 'YScale', 'log')
% xlabel('Angle')
% ylabel('Velocity')
% title('Angle-Velocity contour map paen802020_1ulh')
% colorbar
% colormap turbo
% 
% figure(14)
% [f,ep]=ksdensity([paen802020_5ulh_angle_absval paen802020_5ulh_vel],xi); % remove the outputs to see a 3D plot of the distribution
% % format data in matrix for contourf and plot
% X = reshape(ep(:,1),length(xgrid),length(ygrid));
% Y = reshape(ep(:,2),length(xgrid),length(ygrid));
% Z = reshape(f,length(xgrid),length(ygrid));
% contourf(X,Y,Z,20)
% ax=gca;
% %ax.XAxis.Exponent = 0;
% set(gca, 'YScale', 'log')
% xlabel('Angle')
% ylabel('Velocity')
% title('Angle-Velocity contour map paen802020_5ulh')
% colorbar
% colormap jet
% 
% figure(15)
% [f,ep]=ksdensity([geo802020_1ulh_angle_absval geo802020_1ulh_vel],xi); % remove the outputs to see a 3D plot of the distribution
% % format data in matrix for contourf and plot
% X = reshape(ep(:,1),length(xgrid),length(ygrid));
% Y = reshape(ep(:,2),length(xgrid),length(ygrid));
% Z = reshape(f,length(xgrid),length(ygrid));
% contourf(X,Y,Z,20)
% ax=gca;
% %ax.XAxis.Exponent = 0;
% set(gca, 'YScale', 'log')
% xlabel('Angle')
% ylabel('Velocity')
% title('Angle-Velocity contour map geo802020_1ulh')
% colorbar
% colormap jet
% 
% figure(16)
% [f,ep]=ksdensity([geo802020_5ulh_angle_absval geo802020_5ulh_vel],xi); % remove the outputs to see a 3D plot of the distribution
% % format data in matrix for contourf and plot
% X = reshape(ep(:,1),length(xgrid),length(ygrid));
% Y = reshape(ep(:,2),length(xgrid),length(ygrid));
% Z = reshape(f,length(xgrid),length(ygrid));
% contourf(X,Y,Z,20)
% ax=gca;
% %ax.XAxis.Exponent = 0;
% set(gca, 'YScale', 'log')
% xlabel('Angle')
% ylabel('Velocity')
% title('Angle-Velocity contour map geo802020_5ulh')
% colorbar
% colormap turbo


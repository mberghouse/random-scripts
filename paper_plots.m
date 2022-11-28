
% clear all

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%     Angles Trackmate    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 
acid401020_1ulh_001=readmatrix('C:\Users\marcb\Desktop\flow_trajectories\tmate_angles\acid_401020_1ulh_001_5framebgsz.csv', 'Range', 'B:E');
acid401020_1ulh_002=readmatrix('C:\Users\marcb\Desktop\flow_trajectories\tmate_angles\acid_401020_1ulh_002_5framebgsz.csv', 'Range', 'B:E');
acid401020_1ulh_003=readmatrix('C:\Users\marcb\Desktop\flow_trajectories\tmate_angles\acid_401020_1ulh_003_5framebgsz.csv', 'Range', 'B:E');
acid402020_1ulh_001=readmatrix('C:\Users\marcb\Desktop\flow_trajectories\tmate_angles\acid_402020_1ulh_001_5framebgsz.csv', 'Range', 'B:E');
acid402020_1ulh_002=readmatrix('C:\Users\marcb\Desktop\flow_trajectories\tmate_angles\acid_402020_1ulh_002_5framebgsz.csv', 'Range', 'B:E');
acid402020_1ulh_003=readmatrix('C:\Users\marcb\Desktop\flow_trajectories\tmate_angles\acid_402020_1ulh_003_5framebgsz.csv', 'Range', 'B:E');
acid802020_1ulh_002=readmatrix('C:\Users\marcb\Desktop\flow_trajectories\tmate_angles\acid_802020_1ulh_002_5framebgsz.csv', 'Range', 'B:E');
acid802020_1ulh_005=readmatrix('C:\Users\marcb\Desktop\flow_trajectories\tmate_angles\acid_802020_1ulh_005_5framebgsz.csv', 'Range', 'B:E');
%
acid401020_5ulh_001=readmatrix('C:\Users\marcb\Desktop\flow_trajectories\tmate_angles\acid_401020_5ulh_001_5framebgsz.csv', 'Range', 'B:E');
acid401020_5ulh_002=readmatrix('C:\Users\marcb\Desktop\flow_trajectories\tmate_angles\acid_401020_5ulh_002_5framebgsz.csv', 'Range', 'B:E');
acid401020_5ulh_003=readmatrix('C:\Users\marcb\Desktop\flow_trajectories\tmate_angles\acid_401020_5ulh_003_5framebgsz.csv', 'Range', 'B:E');
acid402020_5ulh_001=readmatrix('C:\Users\marcb\Desktop\flow_trajectories\tmate_angles\acid_402020_5ulh_001_5framebgsz.csv', 'Range', 'B:E');
acid402020_5ulh_002=readmatrix('C:\Users\marcb\Desktop\flow_trajectories\tmate_angles\acid_402020_5ulh_002_5framebgsz.csv', 'Range', 'B:E');
acid802020_5ulh_001=readmatrix('C:\Users\marcb\Desktop\flow_trajectories\tmate_angles\acid_802020_5ulh_001_5framebgsz.csv', 'Range', 'B:E');
acid802020_5ulh_002=readmatrix('C:\Users\marcb\Desktop\flow_trajectories\tmate_angles\acid_802020_5ulh_002_5framebgsz.csv', 'Range', 'B:E');
acid802020_5ulh_003=readmatrix('C:\Users\marcb\Desktop\flow_trajectories\tmate_angles\acid_802020_5ulh_003_5framebgsz.csv', 'Range', 'B:E');
%
geo802020_1ulh_001=readmatrix('C:\Users\marcb\Desktop\flow_trajectories\tmate_angles\geo_802020_1ulh_001_5framebgsz.csv', 'Range', 'B:E');
geo802020_1ulh_002=readmatrix('C:\Users\marcb\Desktop\flow_trajectories\tmate_angles\geo_802020_1ulh_002_5framebgsz.csv', 'Range', 'B:E');
geo802020_1ulh_003=readmatrix('C:\Users\marcb\Desktop\flow_trajectories\tmate_angles\geo_802020_1ulh_003_5framebgsz.csv', 'Range', 'B:E');
geo802020_5ulh_001=readmatrix('C:\Users\marcb\Desktop\flow_trajectories\tmate_angles\geo_802020_5ulh_001_5framebgsz.csv', 'Range', 'B:E');
geo802020_5ulh_002=readmatrix('C:\Users\marcb\Desktop\flow_trajectories\tmate_angles\geo_802020_5ulh_002_5framebgsz.csv', 'Range', 'B:E');
geo802020_5ulh_003=readmatrix('C:\Users\marcb\Desktop\flow_trajectories\tmate_angles\geo_802020_5ulh_003_5framebgsz.csv', 'Range', 'B:E');
paen802020_1ulh_001=readmatrix('C:\Users\marcb\Desktop\flow_trajectories\tmate_angles\paen_802020_1ulh_001_5framebgsz.csv', 'Range', 'B:E');
paen802020_1ulh_002=readmatrix('C:\Users\marcb\Desktop\flow_trajectories\tmate_angles\paen_802020_1ulh_002_5framebgsz.csv', 'Range', 'B:E');
paen802020_1ulh_003=readmatrix('C:\Users\marcb\Desktop\flow_trajectories\tmate_angles\paen_802020_1ulh_003_5framebgsz.csv', 'Range', 'B:E');
paen802020_5ulh_001=readmatrix('C:\Users\marcb\Desktop\flow_trajectories\tmate_angles\paen_802020_5ulh_001_5framebgsz.csv', 'Range', 'B:E');
paen802020_5ulh_002=readmatrix('C:\Users\marcb\Desktop\flow_trajectories\tmate_angles\paen_802020_5ulh_002_5framebgsz.csv', 'Range', 'B:E');
paen802020_5ulh_003=readmatrix('C:\Users\marcb\Desktop\flow_trajectories\tmate_angles\paen_802020_5ulh_003_5framebgsz.csv', 'Range', 'B:E');
% % 


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%     Velocity Trackmate    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 
acid401020_1ulh_vel=readmatrix('C:\Users\marcb\Desktop\vel_data\drift\acid_4010_1ulh_tmate.csv');
acid402020_1ulh_vel=readmatrix('C:\Users\marcb\Desktop\vel_data\drift\acid_4020_1ulh_tmate.csv');
acid802020_1ulh_vel=readmatrix('C:\Users\marcb\Desktop\vel_data\drift\acid_8020_1ulh_tmate.csv');

acid401020_5ulh_vel=readmatrix('C:\Users\marcb\Desktop\vel_data\drift\acid_4010_5ulh_tmate.csv');
acid402020_5ulh_vel=readmatrix('C:\Users\marcb\Desktop\vel_data\drift\acid_4020_5ulh_tmate.csv');
acid802020_5ulh_vel=readmatrix('C:\Users\marcb\Desktop\vel_data\drift\acid_8020_5ulh_tmate.csv');

paen802020_5ulh_vel=readmatrix('C:\Users\marcb\Desktop\vel_data\drift\paen_8020_5ulh_tmate.csv');
paen802020_1ulh_vel=readmatrix('C:\Users\marcb\Desktop\vel_data\drift\paen_8020_1ulh_tmate.csv');

geo802020_1ulh_vel=readmatrix('C:\Users\marcb\Desktop\vel_data\drift\geo_8020_1ulh_tmate.csv');
geo802020_5ulh_vel=readmatrix('C:\Users\marcb\Desktop\vel_data\drift\geo_8020_5ulh_tmate.csv');

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%     Angles    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

acid401020_1ulh_001=readmatrix('C:\Users\marcb\Desktop\flow_trajectories\acidovorax\GS40PL10Z20\FR_1ulh_20X_25fps_1x1y_5min_001\angles.csv', 'Range', 'B:E');
acid401020_1ulh_002=readmatrix('C:\Users\marcb\Desktop\flow_trajectories\acidovorax\GS40PL10Z20\FR_1ulh_20X_25fps_1x1y_5min_002\angles.csv', 'Range', 'B:E');
acid401020_1ulh_003=readmatrix('C:\Users\marcb\Desktop\flow_trajectories\acidovorax\GS40PL10Z20\FR_1ulh_20X_25fps_1x1y_5min_003\angles.csv', 'Range', 'B:E');
acid402020_1ulh_001=readmatrix('C:\Users\marcb\Desktop\flow_trajectories\acidovorax\GS40PL20Z20\FR_1ulh_20X_25fps_1x1y_5min_001\angles.csv', 'Range', 'B:E');
acid402020_1ulh_002=readmatrix('C:\Users\marcb\Desktop\flow_trajectories\acidovorax\GS40PL20Z20\FR_1ulh_20X_25fps_1x1y_5min_002\angles.csv', 'Range', 'B:E');
acid402020_1ulh_003=readmatrix('C:\Users\marcb\Desktop\flow_trajectories\acidovorax\GS40PL20Z20\FR_1ulh_20X_25fps_1x1y_5min_002\angles.csv', 'Range', 'B:E');
%acid802020_1ulh_001=readmatrix('C:\Users\marcb\Desktop\flow_trajectories\acidovorax\GS80PL20Z20\trackmate_bgs_new\angle_001_1ulh.csv', 'Range', 'B:E');
acid802020_1ulh_002=readmatrix('C:\Users\marcb\Desktop\flow_trajectories\acidovorax\GS80PL20Z20\FR_1ulh_20X_25fps_1x1y_5min_002\angles.csv', 'Range', 'B:E');
%acid802020_1ulh_004=readmatrix('C:\Users\marcb\Desktop\flow_trajectories\acidovorax\GS80PL20Z20\trackmate_bgs_new\angle_004_1ulh.csv', 'Range', 'B:E');
acid802020_1ulh_005=readmatrix('C:\Users\marcb\Desktop\flow_trajectories\acidovorax\GS80PL20Z20\FR_1ulh_20X_25fps_1x1y_5min_005\angles.csv', 'Range', 'B:E');

acid401020_5ulh_001=readmatrix('C:\Users\marcb\Desktop\flow_trajectories\acidovorax\GS40PL10Z20\FR_5ulh_20X_25fps_1x1y_5min_001\angles.csv', 'Range', 'B:E');
acid401020_5ulh_002=readmatrix('C:\Users\marcb\Desktop\flow_trajectories\acidovorax\GS40PL10Z20\FR_5ulh_20X_25fps_1x1y_5min_002\angles.csv', 'Range', 'B:E');
acid401020_5ulh_003=readmatrix('C:\Users\marcb\Desktop\flow_trajectories\acidovorax\GS40PL10Z20\FR_5ulh_20X_25fps_1x1y_5min_003\angles.csv', 'Range', 'B:E');
acid402020_5ulh_001=readmatrix('C:\Users\marcb\Desktop\flow_trajectories\acidovorax\GS40PL20Z20\FR_5ulh_20X_25fps_1x1y_5min_001\angles.csv', 'Range', 'B:E');
acid402020_5ulh_002=readmatrix('C:\Users\marcb\Desktop\flow_trajectories\acidovorax\GS40PL20Z20\FR_5ulh_20X_25fps_1x1y_5min_002\angles.csv', 'Range', 'B:E');
acid802020_5ulh_001=readmatrix('C:\Users\marcb\Desktop\flow_trajectories\acidovorax\GS80PL20Z20\FR_5ulh_20X_25fps_1x1y_5min_001\angles.csv', 'Range', 'B:E');
acid802020_5ulh_002=readmatrix('C:\Users\marcb\Desktop\flow_trajectories\acidovorax\GS80PL20Z20\FR_5ulh_20X_25fps_1x1y_5min_002\angles.csv', 'Range', 'B:E');
acid802020_5ulh_003=readmatrix('C:\Users\marcb\Desktop\flow_trajectories\acidovorax\GS80PL20Z20\FR_5ulh_20X_25fps_1x1y_5min_003\angles.csv', 'Range', 'B:E');
% \
%geo401020_5ulh_001_V2=readmatrix('C:\Users\marcb\Desktop\flow_trajectories\geobacter\GS40PL10Z20\trackmate_bgs_new\angle_001_5ulh_V2.csv', 'Range', 'B:E');
% 
% geo401020_1ulh_005=readmatrix('C:\Users\marcb\Desktop\flow_trajectories\geobacter\GS40PL10Z20\trackmate_bgs_new\angle_005_1ulh.csv', 'Range', 'B:E');
% geo401020_1ulh_006=readmatrix('C:\Users\marcb\Desktop\flow_trajectories\geobacter\GS40PL10Z20\trackmate_bgs_new\angle_006_1ulh.csv', 'Range', 'B:E');
% geo401020_1ulh_007=readmatrix('C:\Users\marcb\Desktop\flow_trajectories\geobacter\GS40PL10Z20\trackmate_bgs_new\angle_007_1ulh.csv', 'Range', 'B:E');
% geo401020_5ulh_001=readmatrix('C:\Users\marcb\Desktop\flow_trajectories\geobacter\GS40PL10Z20\trackmate_bgs_new\angle_001_5ulh.csv', 'Range', 'B:E');
% geo401020_5ulh_002=readmatrix('C:\Users\marcb\Desktop\flow_trajectories\geobacter\GS40PL10Z20\trackmate_bgs_new\angle_002_5ulh.csv', 'Range', 'B:E');

geo802020_1ulh_001=readmatrix('C:\Users\marcb\Desktop\flow_trajectories\geobacter\GS80PL20Z20\FR_1ulh_20X_25fps_1x1y_5min_001\angles.csv', 'Range', 'B:E');
geo802020_1ulh_002=readmatrix('C:\Users\marcb\Desktop\flow_trajectories\geobacter\GS80PL20Z20\FR_1ulh_20X_25fps_1x1y_5min_002\angles.csv', 'Range', 'B:E');
geo802020_1ulh_003=readmatrix('C:\Users\marcb\Desktop\flow_trajectories\geobacter\GS80PL20Z20\FR_1ulh_20X_25fps_1x1y_5min_003\angles.csv', 'Range', 'B:E');
geo802020_5ulh_001=readmatrix('C:\Users\marcb\Desktop\flow_trajectories\geobacter\GS80PL20Z20\FR_5ulh_20X_25fps_1x1y_5min_001\angles.csv', 'Range', 'B:E');
geo802020_5ulh_002=readmatrix('C:\Users\marcb\Desktop\flow_trajectories\geobacter\GS80PL20Z20\FR_5ulh_20X_25fps_1x1y_5min_002\angles.csv', 'Range', 'B:E');
geo802020_5ulh_003=readmatrix('C:\Users\marcb\Desktop\flow_trajectories\geobacter\GS80PL20Z20\FR_5ulh_20X_25fps_1x1y_5min_003\angles.csv', 'Range', 'B:E');
paen802020_1ulh_001=readmatrix('C:\Users\marcb\Desktop\flow_trajectories\Paenibacillus\GS80PL20Z20\FR_1ulh_20X_25fps_1x1y_5min_001\angles.csv', 'Range', 'B:E');
paen802020_1ulh_002=readmatrix('C:\Users\marcb\Desktop\flow_trajectories\Paenibacillus\GS80PL20Z20\FR_1ulh_20X_25fps_1x1y_5min_002\angles.csv', 'Range', 'B:E');
paen802020_1ulh_003=readmatrix('C:\Users\marcb\Desktop\flow_trajectories\Paenibacillus\GS80PL20Z20\FR_1ulh_20X_25fps_1x1y_5min_003\angles.csv', 'Range', 'B:E');
paen802020_5ulh_001=readmatrix('C:\Users\marcb\Desktop\flow_trajectories\Paenibacillus\GS80PL20Z20\FR_5ulh_20X_25fps_1x1y_5min_001\angles.csv', 'Range', 'B:E');
paen802020_5ulh_002=readmatrix('C:\Users\marcb\Desktop\flow_trajectories\Paenibacillus\GS80PL20Z20\FR_5ulh_20X_25fps_1x1y_5min_002\angles.csv', 'Range', 'B:E');
paen802020_5ulh_003=readmatrix('C:\Users\marcb\Desktop\flow_trajectories\Paenibacillus\GS80PL20Z20\FR_5ulh_20X_25fps_1x1y_5min_003\angles.csv', 'Range', 'B:E');
% % 

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%     Tortuosity    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% acid401020_1ulh_001=readmatrix('C:\Users\marcb\Desktop\flow_trajectories\acidovorax\GS40PL10Z20\trackmate_bgs_new\tortuosity_001_1ulh.csv', 'Range', 'B:E');
% acid401020_1ulh_002=readmatrix('C:\Users\marcb\Desktop\flow_trajectories\acidovorax\GS40PL10Z20\trackmate_bgs_new\tortuosity_002_1ulh.csv', 'Range', 'B:E');
% acid401020_1ulh_003=readmatrix('C:\Users\marcb\Desktop\flow_trajectories\acidovorax\GS40PL10Z20\trackmate_bgs_new\tortuosity_003_1ulh.csv', 'Range', 'B:E');
% acid401020_1ulh_004=readmatrix('C:\Users\marcb\Desktop\flow_trajectories\acidovorax\GS40PL10Z20\trackmate_bgs_new\tortuosity_004_1ulh.csv', 'Range', 'B:E');
% acid402020_1ulh_001=readmatrix('C:\Users\marcb\Desktop\flow_trajectories\acidovorax\GS40PL20Z20\trackmate_bgs_new\tortuosity_001_1ulh.csv', 'Range', 'B:E');
% acid402020_1ulh_002=readmatrix('C:\Users\marcb\Desktop\flow_trajectories\acidovorax\GS40PL20Z20\trackmate_bgs_new\tortuosity_002_1ulh.csv', 'Range', 'B:E');
% acid402020_1ulh_003=readmatrix('C:\Users\marcb\Desktop\flow_trajectories\acidovorax\GS40PL20Z20\trackmate_bgs_new\tortuosity_003_1ulh.csv', 'Range', 'B:E');
% %acid802020_1ulh_001=readmatrix('C:\Users\marcb\Desktop\flow_trajectories\acidovorax\GS80PL20Z20\trackmate_bgs_new\angle_001_1ulh.csv', 'Range', 'B:E');
% acid802020_1ulh_002=readmatrix('C:\Users\marcb\Desktop\flow_trajectories\acidovorax\GS80PL20Z20\trackmate_bgs_new\tortuosity_002_1ulh.csv', 'Range', 'B:E');
% %acid802020_1ulh_004=readmatrix('C:\Users\marcb\Desktop\flow_trajectories\acidovorax\GS80PL20Z20\trackmate_bgs_new\angle_004_1ulh.csv', 'Range', 'B:E');
% acid802020_1ulh_005=readmatrix('C:\Users\marcb\Desktop\flow_trajectories\acidovorax\GS80PL20Z20\trackmate_bgs_new\tortuosity_005_1ulh.csv', 'Range', 'B:E');
% 
% acid401020_5ulh_001=readmatrix('C:\Users\marcb\Desktop\flow_trajectories\acidovorax\GS40PL10Z20\trackmate_bgs_new\tortuosity_001_5ulh.csv', 'Range', 'B:E');
% acid401020_5ulh_002=readmatrix('C:\Users\marcb\Desktop\flow_trajectories\acidovorax\GS40PL10Z20\trackmate_bgs_new\tortuosity_002_5ulh.csv', 'Range', 'B:E');
% acid401020_5ulh_003=readmatrix('C:\Users\marcb\Desktop\flow_trajectories\acidovorax\GS40PL10Z20\trackmate_bgs_new\tortuosity_003_5ulh.csv', 'Range', 'B:E');
% acid402020_5ulh_001=readmatrix('C:\Users\marcb\Desktop\flow_trajectories\acidovorax\GS40PL20Z20\trackmate_bgs_new\tortuosity_001_5ulh.csv', 'Range', 'B:E');
% acid402020_5ulh_002=readmatrix('C:\Users\marcb\Desktop\flow_trajectories\acidovorax\GS40PL20Z20\trackmate_bgs_new\tortuosity_002_5ulh.csv', 'Range', 'B:E');
% acid802020_5ulh_001=readmatrix('C:\Users\marcb\Desktop\flow_trajectories\acidovorax\GS80PL20Z20\trackmate_bgs_new\tortuosity_001_5ulh.csv', 'Range', 'B:E');
% acid802020_5ulh_002=readmatrix('C:\Users\marcb\Desktop\flow_trajectories\acidovorax\GS80PL20Z20\trackmate_bgs_new\tortuosity_002_5ulh.csv', 'Range', 'B:E');
% acid802020_5ulh_003=readmatrix('C:\Users\marcb\Desktop\flow_trajectories\acidovorax\GS80PL20Z20\trackmate_bgs_new\tortuosity_003_5ulh.csv', 'Range', 'B:E');
% % 
% geo401020_1ulh_005=readmatrix('C:\Users\marcb\Desktop\flow_trajectories\geobacter\GS40PL10Z20\trackmate_bgs_new\tortuosity_005_1ulh.csv', 'Range', 'B:E');
% geo401020_1ulh_006=readmatrix('C:\Users\marcb\Desktop\flow_trajectories\geobacter\GS40PL10Z20\trackmate_bgs_new\tortuosity_006_1ulh.csv', 'Range', 'B:E');
% geo401020_1ulh_007=readmatrix('C:\Users\marcb\Desktop\flow_trajectories\geobacter\GS40PL10Z20\trackmate_bgs_new\tortuosity_007_1ulh.csv', 'Range', 'B:E');
% geo401020_5ulh_001=readmatrix('C:\Users\marcb\Desktop\flow_trajectories\geobacter\GS40PL10Z20\trackmate_bgs_new\tortuosity_001_5ulh.csv', 'Range', 'B:E');
% geo401020_5ulh_002=readmatrix('C:\Users\marcb\Desktop\flow_trajectories\geobacter\GS40PL10Z20\trackmate_bgs_new\tortuosity_002_5ulh.csv', 'Range', 'B:E');
% 
% geo802020_1ulh_001=readmatrix('C:\Users\marcb\Desktop\flow_trajectories\geobacter\GS80PL20Z20\trackmate_bgs_new\tortuosity_001_1ulh.csv', 'Range', 'B:E');
% geo802020_1ulh_002=readmatrix('C:\Users\marcb\Desktop\flow_trajectories\geobacter\GS80PL20Z20\trackmate_bgs_new\tortuosity_002_1ulh.csv', 'Range', 'B:E');
% geo802020_1ulh_003=readmatrix('C:\Users\marcb\Desktop\flow_trajectories\geobacter\GS80PL20Z20\trackmate_bgs_new\tortuosity_003_1ulh.csv', 'Range', 'B:E');
% geo802020_5ulh_001=readmatrix('C:\Users\marcb\Desktop\flow_trajectories\geobacter\GS80PL20Z20\trackmate_bgs_new\tortuosity_001_5ulh.csv', 'Range', 'B:E');
% geo802020_5ulh_002=readmatrix('C:\Users\marcb\Desktop\flow_trajectories\geobacter\GS80PL20Z20\trackmate_bgs_new\tortuosity_002_5ulh.csv', 'Range', 'B:E');
% geo802020_5ulh_003=readmatrix('C:\Users\marcb\Desktop\flow_trajectories\geobacter\GS80PL20Z20\trackmate_bgs_new\tortuosity_003_5ulh.csv', 'Range', 'B:E');
% paen802020_1ulh_001=readmatrix('C:\Users\marcb\Desktop\flow_trajectories\paenibac\GS80PL20Z20\trackmate_bgs_new\tortuosity_001_1ulh.csv', 'Range', 'B:E');
% paen802020_1ulh_002=readmatrix('C:\Users\marcb\Desktop\flow_trajectories\paenibac\GS80PL20Z20\trackmate_bgs_new\tortuosity_002_1ulh.csv', 'Range', 'B:E');
% paen802020_1ulh_003=readmatrix('C:\Users\marcb\Desktop\flow_trajectories\paenibac\GS80PL20Z20\trackmate_bgs_new\tortuosity_003_1ulh.csv', 'Range', 'B:E');
% paen802020_5ulh_001=readmatrix('C:\Users\marcb\Desktop\flow_trajectories\paenibac\GS80PL20Z20\trackmate_bgs_new\tortuosity_001_5ulh.csv', 'Range', 'B:E');
% paen802020_5ulh_002=readmatrix('C:\Users\marcb\Desktop\flow_trajectories\paenibac\GS80PL20Z20\trackmate_bgs_new\tortuosity_002_5ulh.csv', 'Range', 'B:E');
% paen802020_5ulh_003=readmatrix('C:\Users\marcb\Desktop\flow_trajectories\paenibac\GS80PL20Z20\trackmate_bgs_new\tortuosity_003_5ulh.csv', 'Range', 'B:E');
% % 
acid401020_1ulh=[acid401020_1ulh_001; acid401020_1ulh_002;acid401020_1ulh_003];
acid401020_1ulh=nonzeros(acid401020_1ulh);
acid402020_1ulh=[acid402020_1ulh_001; acid402020_1ulh_002;acid402020_1ulh_003];
acid402020_1ulh=nonzeros(acid402020_1ulh);
acid802020_1ulh=[ acid802020_1ulh_002;acid802020_1ulh_005];
acid802020_1ulh=nonzeros(acid802020_1ulh);
acid401020_5ulh=[acid401020_5ulh_001; acid401020_5ulh_002;acid401020_5ulh_003];
acid401020_5ulh=nonzeros(acid401020_5ulh);
acid402020_5ulh=[acid402020_5ulh_001; acid402020_5ulh_002];
acid402020_5ulh=nonzeros(acid402020_5ulh);
acid802020_5ulh=[acid802020_5ulh_001; acid802020_5ulh_002;acid802020_5ulh_003];
acid802020_5ulh=nonzeros(acid802020_5ulh);
% 
geo802020_1ulh=[geo802020_1ulh_001; geo802020_1ulh_002;geo802020_1ulh_003];
geo802020_1ulh=nonzeros(geo802020_1ulh);

geo802020_5ulh=[geo802020_5ulh_001; geo802020_5ulh_002;geo802020_5ulh_003];
geo802020_5ulh=nonzeros(geo802020_5ulh);

% geo401020_1ulh=[geo401020_1ulh_005; geo401020_1ulh_006; geo401020_1ulh_007];
% geo401020_5ulh=[geo401020_5ulh_001; geo802020_5ulh_002];

paen802020_1ulh=[paen802020_1ulh_001; paen802020_1ulh_002;paen802020_1ulh_003];
paen802020_1ulh=nonzeros(paen802020_1ulh);
paen802020_5ulh=[paen802020_5ulh_001; paen802020_5ulh_002;paen802020_5ulh_003];
paen802020_5ulh=nonzeros(paen802020_5ulh);
% 
% paen802020_5ulh_002_forwards=readmatrix('C:\Users\marcb\Desktop\flow_trajectories\paenibac\GS80PL20Z20\trackmate_bgs_new\angle_002_5ulh_forward.csv', 'Range', 'B:E');
% paen802020_5ulh_002_notforwards=readmatrix('C:\Users\marcb\Desktop\flow_trajectories\paenibac\GS80PL20Z20\trackmate_bgs_new\angle_002_5ulh_notforward.csv', 'Range', 'B:E');
% paen802020_1ulh_002_forwards=readmatrix('C:\Users\marcb\Desktop\flow_trajectories\paenibac\GS80PL20Z20\trackmate_bgs_new\angle_002_1ulh_forward.csv', 'Range', 'B:E');
% paen802020_1ulh_002_notforwards=readmatrix('C:\Users\marcb\Desktop\flow_trajectories\paenibac\GS80PL20Z20\trackmate_bgs_new\angle_002_1ulh_notforward.csv', 'Range', 'B:E');
% 
% % paen802020_5ulh_002_longforwards=readmatrix('C:\Users\marcb\Desktop\flow_trajectories\paenibac\GS80PL20Z20\trackmate_bgs_new\angle_002_5ulh_longforward.csv', 'Range', 'B:E');
% % paen802020_5ulh_002_longnotforwards=readmatrix('C:\Users\marcb\Desktop\flow_trajectories\paenibac\GS80PL20Z20\trackmate_bgs_new\angle_002_5ulh_longnotforward.csv', 'Range', 'B:E');
% paen802020_1ulh_002_longforwards=readmatrix('C:\Users\marcb\Desktop\flow_trajectories\paenibac\GS80PL20Z20\trackmate_bgs_new\angle_002_1ulh_longforward.csv', 'Range', 'B:E');
% paen802020_1ulh_002_longnotforwards=readmatrix('C:\Users\marcb\Desktop\flow_trajectories\paenibac\GS80PL20Z20\trackmate_bgs_new\angle_002_1ulh_longnotforward.csv', 'Range', 'B:E');

% paen802020_1ulh_001_fast=readmatrix('C:\Users\marcb\Desktop\flow_trajectories\paenibac\GS80PL20Z20\trackmate_bgs_new\angle_001_1ulh_fast.csv', 'Range', 'B:E');
% paen802020_1ulh_001_slow=readmatrix('C:\Users\marcb\Desktop\flow_trajectories\paenibac\GS80PL20Z20\trackmate_bgs\angle_001_1ulh_slow.csv', 'Range', 'B:E');
% geo802020_5ulh_002_fast=readmatrix('C:\Users\marcb\Desktop\flow_trajectories\geobacter\GS80PL20Z20\trackmate_bgs\angle_002_5ulh_fast.csv', 'Range', 'B:E');
% geo802020_5ulh_002_slow=readmatrix('C:\Users\marcb\Desktop\flow_trajectories\geobacter\GS80PL20Z20\trackmate_bgs\angle_002_5ulh_slow.csv', 'Range', 'B:E');


% xfit=acid401020_1ulh(:,2);
% xfit(any(isnan(xfit), 2), :) = [];



hold on
% nbins=980; %%acid 5ulh
% nbins=450; %%acid 1ulh
% nbins=1620;  
% nx=200;
% lightgreen=[0 1 0];
% darkgreen=[0 0.5 0];
[p,x] = hist(geo802020_1ulh_003(:,1),nbins); 
logx=log10(x);
x2 = logspace(min(logx),max(logx),nx);
y2 = interp1(log10(x),log10(p/sum(p)),log10(x2),'linear');
y2=10.^(y2);
scatter(x2,y2, 24,'filled', 'MarkerFaceAlpha',.8,'LineWidth',.1,'MarkerEdgeColor','black','MarkerFaceColor', lightgreen)
trapz(x,p/sum(p))

%nbins=355;
%nbins=500;
% nbins=2260;
% nx=200;
%  darkpurple=[0.4941    0.1843    0.5569];
%  lightpurple=[0.784313725490196,0,1];
 [p,x] = hist(geo802020_1ulh_002(:,1),nbins); 
 logx=log10(x);
 x2 = logspace(log10(.5),max(logx),nx);
 y2 = interp1(log10(x),log10(p/sum(p)),log10(x2),'linear');
 y2=10.^(y2);
 scatter(x2,y2, 24,'filled', 'MarkerFaceAlpha',.8,'LineWidth',.1,'MarkerEdgeColor','black','MarkerFaceColor',lightpurple)
 trapz(x,p/sum(p))


% nbins=220;
% nx=200;
%  [p,x] = hist(geo401020_5ulh_001_V2(:,1),nbins); 
%  logx=log10(x);
%  x2 = logspace(min(logx),max(logx),nx);
%  y2 = interp1(log10(x),log10(p/sum(p)),log10(x2),'linear');
%  y2=10.^(y2);
%  scatter(x2,y2, 24,'filled', 'MarkerFaceAlpha',.8,'LineWidth',.1,'MarkerEdgeColor','black','MarkerFaceColor', [.5 .5 .5])
% trapz(x,p/sum(p))
%  
%nbins=1600;
%nbins=1200;
% nbins=340;
% nx=200;
%  [p,x] = hist(geo401020_5ulh(:,1),nbins); 
%  logx=log10(x);
%  x2 = logspace(log10(1),log10(40),nx);
%  y2 = interp1(log10(x),log10(p/sum(p)),log10(x2),'linear');
%  y2=10.^(y2);
%  scatter(x2,y2, 24,'filled', 'MarkerFaceAlpha',.8,'LineWidth',.1,'MarkerEdgeColor','black','MarkerFaceColor', [.1 .1 .1])
% trapz(x,p/sum(p))
%  % % 

% %  [p,x] = hist(geo401020_5ulh(:,1),nbins); 
% %  logx=log10(x);
% %  x2 = logspace(min(logx),log10(500),nx);
% %  y2 = interp1(log10(x),log10(p/sum(p)),log10(x2),'linear');
% %  y2=10.^(y2);
% %  scatter(x2,y2, 24,'filled', 'MarkerFaceAlpha',.8,'LineWidth',1,'MarkerEdgeColor', 'black', 'MarkerFaceColor', [0 0 0])
% % %  
% 
set(gca,'xscale','log')
set(gca,'yscale','log')
%ylim([1e-4,1])
%xlim([.7,15])
% % %set(gcf, 'Color', 'w');
% xlabel('Speed (um/s)')
% ylabel('Probability Density')
% title('GD40PL10 Speed Distributions')
% xlabel('Tortuosity')
% ylabel('Probability Density')
% title('GD80PL20 1ulh Tortuosity Distributions')
% legend('Acidovorax','Paenibacillus','Geobacter')
% legend('GD = 40um, PL = 10um','GD = 40um, PL = 20um','GD = 80um, PL = 20um',...
%     'Location', 'northeast')
%  [p,x] = hist(geo401020_5ulh(:,1),nbins); 
%  logx=log10(x);
%  x2 = logspace(min(logx),log10(500),nx);
%  y2 = interp1(log10(x),log10(p/sum(p)),log10(x2),'linear');
%  y2=10.^(y2);
%  scatter(x2,y2, 24,'filled', 'MarkerFaceAlpha',.8,'LineWidth',1,'MarkerEdgeColor', 'black', 'MarkerFaceColor', [.1 .1 .1])
%  

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%    Angle Plots   %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% fig1=figure(1);
hold on
box on
nbins=500;
nx=500;
lightgreen=[0 1 0];
darkgreen=[0 0.5 0];
[p,x] = hist(acid802020_1ulh(:,1),nbins); 
x2 = linspace(min(x),max(x),nx);
scatter(x2,p/sum(p), 28, 's', 'MarkerEdgeColor', lightgreen,'LineWidth',2)
 trapz(x2,p/sum(p))

 darkpurple=[0.4941    0.1843    0.5569];
 lightpurple=[0.784313725490196,0,1];
 [p,x] = hist(geo802020_1ulh(:,1),nbins); 
 x2 = linspace(min(x),max(x),nx);
 scatter(x2,p/sum(p), 28,'d', 'MarkerEdgeColor',[.3 .3 .3],'LineWidth',2)
 trapz(x2,p/sum(p))

 [p,x] = hist(paen802020_1ulh(:,1),nbins); 
 x2 = linspace(min(x),max(x),nx);
 scatter(x2,p/sum(p), 28,'o', 'MarkerEdgeColor',lightpurple,'LineWidth',2)
 trapz(x2,p/sum(p))

legend('Acidovorax','Geobacter','Paenibacillus',...
    'Location', 'northwest','FontSize',14)
ylim([0,.02])
xlim([-178,178])
xlabel('Angle (degrees)','FontSize',12,'FontWeight','bold')
ylabel('PDF','FontSize',12,'FontWeight','bold')
%title('Q = 5 \mul/h','FontSize',26)
%title('Turning Angle PDFs (\phi = 0.42, Q = 5\mul/h)','FontSize',14)
ax=gca;
ax.YAxis.FontSize=12;
ax.XAxis.FontSize=12;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Zoomed in Angle plot %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%
figure(2)
hold on
[p,x] = hist(acid802020_1ulh(:,1),nbins); 
x2 = linspace(min(x),max(x),nx);
scatter(x2,p/sum(p), 28, 's', 'MarkerEdgeColor', lightgreen,'LineWidth',2)
trapz(x2,p/sum(p))

[p,x] = hist(geo802020_1ulh(:,1),nbins); 
x2 = linspace(min(x),max(x),nx);
scatter(x2,p/sum(p), 28,'d', 'MarkerEdgeColor',[.3 .3 .3],'LineWidth',2)
trapz(x2,p/sum(p))

[p,x] = hist(paen802020_1ulh(:,1),nbins); 
x2 = linspace(min(x),max(x),nx);
scatter(x2,p/sum(p), 28,'o', 'MarkerEdgeColor',lightpurple,'LineWidth',2)
trapz(x2,p/sum(p))

ylim([0,.001])
xlim([-178,178])
yticks([0,.0005,.001])
xticks([-100,0,100])
ax=gca;
ax.YAxis.FontSize=14;
ax.XAxis.FontSize=14;
% axes('Position',[.58 .45 .32 .32])
% box on
% % % legend('GD = 40um, PL = 10um','GD = 40um, PL = 20um','GD = 80um, PL = 20um',...
% % %     'Location', 'northeast')
% legend('Forwards','Not Forwards',...
%     'Location', 'southwest')
% legend('Normal','Fast','Slow',...
%      'Location', 'northeast')
% %grid on
% hold off
% %box on
% %set(gca, 'XAxisLocation','top','XTick',[], 'YAxisLocation','right','YTick',[])
% set(gca,'XAxisLocation','bottom','YAxisLocation','left','MinorGridLineStyle','-', 'LineWidth', 1.5,...
%     'GridAlpha',.3, 'GridColor',[0 0 0], 'TickDir' ,'in','TickLength',[.03 5])
%matlab2tikz('tex_acidovorax_angle_1ulh.tex')
%export_fig('test.jpg', '-r1000', '-q100')


scatter(acid802020_1ulh_angle(1:length(acid802020_1ulh_vel)),acid401020_1ulh_vel)

figure(2)
scatter(paen802020_1ulh_angle(1:length(paen802020_1ulh_vel)),paen802020_1ulh_vel)

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%    read in MSDs   %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% msd_acid_4010_1ulh_001=readmatrix('tmate_msds/new/401020_msd_acid_1ulh_001.csv');
% msd_acid_4010_1ulh_001_fast=readmatrix('tmate_msds/new/401020_msd_acid_1ulh_001_fast.csv');
% msd_acid_4010_1ulh_001_slow=readmatrix('tmate_msds/new/401020_msd_acid_1ulh_001_slow.csv');
% msd_acid_4010_1ulh_002=readmatrix('tmate_msds/new/401020_msd_acid_1ulh_002.csv');
% msd_acid_4010_1ulh_003=readmatrix('tmate_msds/new/401020_msd_acid_1ulh_003.csv');
% msd_acid_4010_1ulh_004=readmatrix('tmate_msds/new/401020_msd_acid_1ulh_004.csv');
% msd_acid_4010_5ulh_001=readmatrix('tmate_msds/new/401020_msd_acid_5ulh_001.csv');
% msd_acid_4010_5ulh_001_fast=readmatrix('tmate_msds/new/401020_msd_acid_5ulh_001_fast.csv');
% msd_acid_4010_5ulh_001_slow=readmatrix('tmate_msds/new/401020_msd_acid_5ulh_001_slow.csv');
% msd_acid_4010_5ulh_002=readmatrix('tmate_msds/new/401020_msd_acid_5ulh_002.csv');
% msd_acid_4010_5ulh_003=readmatrix('tmate_msds/new/401020_msd_acid_5ulh_003.csv');
% 
% msd_acid_4020_1ulh_001=readmatrix('tmate_msds/new/402020_msd_acid_1ulh_001.csv');
% msd_acid_4020_1ulh_001_fast=readmatrix('tmate_msds/new/402020_msd_acid_1ulh_001_fast.csv');
% msd_acid_4020_1ulh_001_slow=readmatrix('tmate_msds/new/402020_msd_acid_1ulh_001_slow.csv');
% msd_acid_4020_1ulh_002=readmatrix('tmate_msds/new/402020_msd_acid_1ulh_002.csv');
% msd_acid_4020_1ulh_003=readmatrix('tmate_msds/new/402020_msd_acid_1ulh_003.csv');
% msd_acid_4020_5ulh_001=readmatrix('tmate_msds/new/402020_msd_acid_5ulh_001.csv');
% msd_acid_4020_5ulh_001_fast=readmatrix('tmate_msds/new/402020_msd_acid_5ulh_001_fast.csv');
% msd_acid_4020_5ulh_001_slow=readmatrix('tmate_msds/new/402020_msd_acid_5ulh_001_slow.csv');
% msd_acid_4020_5ulh_002=readmatrix('tmate_msds/new/402020_msd_acid_5ulh_002.csv');
% 
% %msd_acid_8020_1ulh_001=readmatrix('tmate_msds/new/802020_msd_acid_1ulh_001.csv');
% msd_acid_8020_1ulh_001_fast=readmatrix('tmate_msds/new/802020_msd_acid_1ulh_001_fast.csv');
% msd_acid_8020_1ulh_001_slow=readmatrix('tmate_msds/new/802020_msd_acid_1ulh_001_slow.csv');
% msd_acid_8020_1ulh_002=readmatrix('tmate_msds/new/802020_msd_acid_1ulh_002.csv');
% %msd_acid_8020_1ulh_004=readmatrix('tmate_msds/new/802020_msd_acid_1ulh_004.csv');
% msd_acid_8020_1ulh_005=readmatrix('tmate_msds/new/802020_msd_acid_1ulh_005.csv');
% msd_acid_8020_5ulh_001=readmatrix('tmate_msds/new/802020_msd_acid_5ulh_001.csv');
% msd_acid_8020_5ulh_001_fast=readmatrix('tmate_msds/new/802020_msd_acid_5ulh_001_fast.csv');
% msd_acid_8020_5ulh_001_slow=readmatrix('tmate_msds/new/802020_msd_acid_1ulh_001_slow.csv');
% msd_acid_8020_5ulh_002=readmatrix('tmate_msds/new/802020_msd_acid_5ulh_002.csv');
% msd_acid_8020_5ulh_003=readmatrix('tmate_msds/new/802020_msd_acid_5ulh_003.csv');
% 
% msd_geo_8020_1ulh_001=readmatrix('tmate_msds/new/802020_msd_geo_1ulh_001.csv');
% msd_geo_8020_1ulh_001_fast=readmatrix('tmate_msds/new/802020_msd_geo_1ulh_001_fast.csv');
% msd_geo_8020_1ulh_001_slow=readmatrix('tmate_msds/new/802020_msd_geo_1ulh_001_slow.csv');
% msd_geo_8020_1ulh_002=readmatrix('tmate_msds/new/802020_msd_geo_1ulh_002.csv');
% msd_geo_8020_1ulh_003=readmatrix('tmate_msds/new/802020_msd_geo_1ulh_003.csv');
% msd_geo_8020_5ulh_001=readmatrix('tmate_msds/new/802020_msd_geo_5ulh_001.csv');
% msd_geo_8020_5ulh_001_fast=readmatrix('tmate_msds/new/802020_msd_geo_5ulh_001_fast.csv');
% msd_geo_8020_5ulh_001_slow=readmatrix('tmate_msds/new/802020_msd_geo_5ulh_001_slow.csv');
% msd_geo_8020_5ulh_002=readmatrix('tmate_msds/new/802020_msd_geo_5ulh_002.csv');
% msd_geo_8020_5ulh_003=readmatrix('tmate_msds/new/802020_msd_geo_5ulh_003.csv');
% 
% msd_geo_4010_1ulh_005=readmatrix('tmate_msds/new/401020_msd_geo_1ulh_005.csv');
% msd_geo_4010_1ulh_005_fast=readmatrix('tmate_msds/new/401020_msd_geo_1ulh_005_fast.csv');
% msd_geo_4010_1ulh_005_slow=readmatrix('tmate_msds/new/401020_msd_geo_1ulh_005_slow.csv');
% msd_geo_4010_1ulh_006=readmatrix('tmate_msds/new/401020_msd_geo_1ulh_006.csv');
% msd_geo_4010_1ulh_007=readmatrix('tmate_msds/new/401020_msd_geo_1ulh_007.csv');
% msd_geo_4010_5ulh_001=readmatrix('tmate_msds/new/401020_msd_geo_5ulh_001.csv');
% msd_geo_4010_5ulh_002=readmatrix('tmate_msds/new/401020_msd_geo_5ulh_002.csv');
% msd_geo_4010_5ulh_002_fast=readmatrix('tmate_msds/new/401020_msd_geo_5ulh_002_fast.csv');
% msd_geo_4010_5ulh_002_slow=readmatrix('tmate_msds/new/401020_msd_geo_5ulh_002_slow.csv');
% 
% 
% msd_paen_8020_1ulh_001=readmatrix('tmate_msds/new/802020_msd_paen_1ulh_001.csv');
% msd_paen_8020_1ulh_001_fast=readmatrix('tmate_msds/new/802020_msd_paen_1ulh_001_fast.csv');
% msd_paen_8020_1ulh_001_slow=readmatrix('tmate_msds/new/802020_msd_paen_1ulh_001_slow.csv');
% msd_paen_8020_1ulh_002=readmatrix('tmate_msds/new/802020_msd_paen_1ulh_002.csv');
% msd_paen_8020_1ulh_002_longforwards=readmatrix('tmate_msds/802020_msd_paen_1ulh_002_longforwards.csv');
% msd_paen_8020_1ulh_002_longnotforwards=readmatrix('tmate_msds/802020_msd_paen_1ulh_002_longnotforwards.csv');
% msd_paen_8020_1ulh_003=readmatrix('tmate_msds/new/802020_msd_paen_1ulh_003.csv');
% 
% msd_paen_8020_5ulh_001=readmatrix('tmate_msds/new/802020_msd_paen_5ulh_001.csv');
% msd_paen_8020_5ulh_001_fast=readmatrix('tmate_msds/new/802020_msd_paen_5ulh_001_fast.csv');
% msd_paen_8020_5ulh_001_slow=readmatrix('tmate_msds/new/802020_msd_paen_5ulh_001_slow.csv');
% msd_paen_8020_5ulh_002=readmatrix('tmate_msds/new/802020_msd_paen_5ulh_002.csv');
% msd_paen_8020_5ulh_002_forwards=readmatrix('tmate_msds/802020_msd_paen_5ulh_002_forwards.csv');
% msd_paen_8020_5ulh_002_notforwards=readmatrix('tmate_msds/802020_msd_paen_5ulh_002_notforwards.csv');
% msd_paen_8020_5ulh_003=readmatrix('tmate_msds/new/802020_msd_paen_5ulh_003.csv');
% 
% 
% % %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% % %%%%%%%%%%%%%%  acid average 1 ulh delay and msd vectors  %%%%%%%%%%%%%%%%%%%%
% % %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% % 
% mint_4010=min([length(msd_acid_4010_1ulh_001(:, 1)),length(msd_acid_4010_1ulh_002(:, 1)),length(msd_acid_4010_1ulh_003(:, 1))]);
% t_acid_4010_1ulh = (msd_acid_4010_1ulh_001(1:mint_4010, 1)+msd_acid_4010_1ulh_002(1:mint_4010, 1)+msd_acid_4010_1ulh_003(1:mint_4010, 1))/3; % delay vector
% msd_acid_1ulh_4010 = (msd_acid_4010_1ulh_001(1:mint_4010, 2)+msd_acid_4010_1ulh_002(1:mint_4010, 2)+msd_acid_4010_1ulh_003(1:mint_4010, 2))/3; % msd
% 
% mint_4020=min([length(msd_acid_4020_1ulh_001(:, 1)),length(msd_acid_4020_1ulh_002(:, 1)),length(msd_acid_4020_1ulh_003(:, 1))]);
% t_acid_4020_1ulh = (msd_acid_4020_1ulh_001(1:mint_4020, 1)+msd_acid_4020_1ulh_002(1:mint_4020, 1)+msd_acid_4020_1ulh_003(1:mint_4020, 1))/3; % delay vector
% msd_acid_1ulh_4020 = (msd_acid_4020_1ulh_001(1:mint_4020, 2)+msd_acid_4020_1ulh_002(1:mint_4020, 2)+msd_acid_4020_1ulh_003(1:mint_4020, 2))/3; % msd
% 
% mint_8020=min([length(msd_acid_8020_1ulh_002(:, 1)),length(msd_acid_8020_1ulh_005(:, 1))]);
% t_acid_8020_1ulh = (msd_acid_8020_1ulh_002(1:mint_8020, 1)+msd_acid_8020_1ulh_005(1:mint_8020, 1))/2; % delay vector
% msd_acid_1ulh_8020 = (msd_acid_8020_1ulh_002(1:mint_8020, 2)+msd_acid_8020_1ulh_005(1:mint_8020, 2))/2; % msd
% 
% % %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% % %%%%%%%%%%%%%%  acid average 5 ulh delay and msd vectors  %%%%%%%%%%%%%%%%%%%%
% % %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% % 
% mint_4010=min([length(msd_acid_4010_5ulh_001(:, 1)),length(msd_acid_4010_5ulh_002(:, 1)),length(msd_acid_4010_5ulh_003(:, 1))]);
% t_acid_4010_5ulh = (msd_acid_4010_5ulh_001(1:mint_4010, 1)+msd_acid_4010_5ulh_002(1:mint_4010, 1)+msd_acid_4010_5ulh_003(1:mint_4010, 1))/3; % delay vector
% msd_acid_5ulh_4010 = (msd_acid_4010_5ulh_001(1:mint_4010, 2)+msd_acid_4010_5ulh_002(1:mint_4010, 2)+msd_acid_4010_5ulh_003(1:mint_4010, 2))/3; % msd
% 
% mint_4020=min([length(msd_acid_4020_5ulh_001(:, 1)),length(msd_acid_4020_5ulh_002(:, 1))]);
% t_acid_4020_5ulh = (msd_acid_4020_5ulh_001(1:mint_4020, 1)+msd_acid_4020_5ulh_002(1:mint_4020, 1))/2; % delay vector
% msd_acid_5ulh_4020 = (msd_acid_4020_5ulh_001(1:mint_4020, 2)+msd_acid_4020_5ulh_002(1:mint_4020, 2))/2; % msd
% 
% mint_8020=min([length(msd_acid_8020_5ulh_001(:, 1)),length(msd_acid_8020_5ulh_002(:, 1)),length(msd_acid_8020_5ulh_003(:, 1))]);
% t_acid_8020_5ulh = (msd_acid_8020_5ulh_001(1:mint_8020, 1)+msd_acid_8020_5ulh_002(1:mint_8020, 1)+msd_acid_8020_5ulh_003(1:mint_8020, 1))/3; % delay vector
% msd_acid_5ulh_8020 = (msd_acid_8020_5ulh_001(1:mint_8020, 2)+msd_acid_8020_5ulh_002(1:mint_8020, 2)+msd_acid_8020_5ulh_003(1:mint_8020, 2))/3; % msd
% 
% % %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% % %%%%%%%%%%%%%%  geo and paen average delay and msd vectors  %%%%%%%%%%%%%%%%%%%%
% % %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% % 
% mint_4010=min([length(msd_geo_4010_1ulh_006(:, 1)),length(msd_geo_4010_1ulh_007(:, 1))]);
% t_geo_4010_1ulh = (msd_geo_4010_1ulh_006(1:mint_4010, 1)+msd_geo_4010_1ulh_007(1:mint_4010, 1))/2; % delay vector
% msd_geo_1ulh_4010 = (msd_geo_4010_1ulh_006(1:mint_4010, 2)+msd_geo_4010_1ulh_007(1:mint_4010, 2))/2; % msd
% 
% mint_4010=min([length(msd_geo_4010_5ulh_001(:, 1)),length(msd_geo_4010_5ulh_002(:, 1))]);
% t_geo_4010_5ulh = (msd_geo_4010_5ulh_001(1:mint_4010, 1)+msd_geo_4010_5ulh_002(1:mint_4010, 1))/2; % delay vector
% msd_geo_5ulh_4010 = (msd_geo_4010_5ulh_001(1:mint_4010, 2)+msd_geo_4010_5ulh_002(1:mint_4010, 2))/2; % msd
% 
% mint_8020=min([length(msd_geo_8020_1ulh_001(:, 1)),length(msd_geo_8020_1ulh_002(:, 1)),length(msd_geo_8020_1ulh_003(:, 1))]);
% t_geo_8020_1ulh = (msd_geo_8020_1ulh_001(1:mint_8020, 1)+msd_geo_8020_1ulh_002(1:mint_8020, 1)+msd_geo_8020_1ulh_003(1:mint_8020, 1))/3; % delay vector
% msd_geo_1ulh_8020 = (msd_geo_8020_1ulh_001(1:mint_8020, 2)+msd_geo_8020_1ulh_002(1:mint_8020, 2)+msd_geo_8020_1ulh_003(1:mint_8020, 2))/3; % msd
% 
% mint_8020=min([length(msd_geo_8020_5ulh_001(:, 1)),length(msd_geo_8020_5ulh_002(:, 1)),length(msd_geo_8020_5ulh_003(:, 1))]);
% t_geo_8020_5ulh = (msd_geo_8020_5ulh_001(1:mint_8020, 1)+msd_geo_8020_5ulh_002(1:mint_8020, 1)+msd_geo_8020_5ulh_003(1:mint_8020, 1))/3; % delay vector
% msd_geo_5ulh_8020 = (msd_geo_8020_5ulh_001(1:mint_8020, 2)+msd_geo_8020_5ulh_002(1:mint_8020, 2)+msd_geo_8020_5ulh_003(1:mint_8020, 2))/3; % msd
% 
% mint_8020=min([length(msd_paen_8020_1ulh_001(:, 1)),length(msd_paen_8020_1ulh_002(:, 1)),length(msd_paen_8020_1ulh_003(:, 1))]);
% t_paen_8020_1ulh = (msd_paen_8020_1ulh_001(1:mint_8020, 1)+msd_paen_8020_1ulh_002(1:mint_8020, 1)+msd_paen_8020_1ulh_003(1:mint_8020, 1))/3; % delay vector
% msd_paen_1ulh_8020 = (msd_paen_8020_1ulh_001(1:mint_8020, 2)+msd_paen_8020_1ulh_002(1:mint_8020, 2)+msd_paen_8020_1ulh_003(1:mint_8020, 2))/3; % msd
% 
% mint_8020=min([length(msd_paen_8020_5ulh_001(:, 1)),length(msd_paen_8020_5ulh_002(:, 1)),length(msd_paen_8020_5ulh_003(:, 1))]);
% t_paen_8020_5ulh = (msd_paen_8020_5ulh_001(1:mint_8020, 1)+msd_paen_8020_5ulh_002(1:mint_8020, 1)+msd_paen_8020_5ulh_003(1:mint_8020, 1))/3; % delay vector
% msd_paen_5ulh_8020 = (msd_paen_8020_5ulh_001(1:mint_8020, 2)+msd_paen_8020_5ulh_002(1:mint_8020, 2)+msd_paen_8020_5ulh_003(1:mint_8020, 2))/3; % msd

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%   Plot MSDs   %%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% hold on
% %  darkpurple=[0.4941    0.1843    0.5569];
% %  lightpurple=[0.784313725490196,0,1];
% 
% %fig2=figure(2);
% % loglog(movmean(t_geo_8020_1ulh(1:end-400),10),movmean(msd_geo_1ulh_8020(1:end-400),10),...
% %        movmean(t_geo_8020_5ulh(1:end-400),10),movmean(msd_geo_5ulh_8020(1:end-400),10),...
% %     'LineWidth',3)
% loglog(movmean(msd_paen_8020_1ulh_002_longforwards(:,1),10),movmean(msd_paen_8020_1ulh_002_longforwards(:,2),10),...
%        movmean(msd_paen_8020_1ulh_002_longnotforwards(:,1),10),movmean(msd_paen_8020_1ulh_002_longnotforwards(:,2),10),...
%     'LineWidth',3)
% legend('Forwards','Not Forwards',...
%     'Location', 'northwest')
% % legend('GD = 40um, PL = 10um','GD = 40um, PL = 20um','GD = 80um, PL = 20um',...
% %     'Location', 'northeast')
% set(gca,'xscale','log')
% set(gca,'yscale','log')
% %set(gcf, 'Color', 'w');
% xlabel('Lag time (s)')
% ylabel('Mean Square Displacement')
% title('MSD Geobacter GD40PL10 5ulh fast and slow')
% % newcolors = [0.784313725490196,0,1;
% %              0,.8,0; 
% %              0,0,0];
% % 
% % colororder(newcolors)
% % xlim([.2,15])
% % legend('GD = 40um, PL = 10um','GD = 40um, PL = 20um','GD = 80um, PL = 20um',...
% %     'Location', 'northwest')
% legend('forwards','not forwards',...
%      'Location', 'northwest')
% grid on
% 
% [h_m, h_i]=inset(fig2,fig1);


% early_4010_t=t_acid_4010_1ulh(2:60);
% early_4020_t=t_acid_4020_1ulh(2:60);
% early_8020_t=t_acid_8020_1ulh(2:60);
% 
% early_4010_msd=msd_acid_1ulh_4010(2:60);
% early_4020_msd=msd_acid_1ulh_4020(2:60);
% early_8020_msd=msd_acid_1ulh_8020(2:60);
% 
% mid_4010_t=t_acid_4010_1ulh(100:600);
% mid_4020_t=t_acid_4020_1ulh(100:600);
% mid_8020_t=t_acid_8020_1ulh(100:600);
% 
% mid_4010_msd=msd_acid_1ulh_4010(100:600);
% mid_4020_msd=msd_acid_1ulh_4020(100:600);
% mid_8020_msd=msd_acid_1ulh_8020(100:600);



% drawArrow = annotation('textarrow', 'Color', 'blue', 'LineWidth', 1.5,'String','~t^1^.^8','TextColor','black', 'HeadWidth',500);
% drawArrow.Parent = gca;
% drawArrow.X = [mid_4010_t(1) mid_4010_t(end)];
% drawArrow.Y = [mid_4010_msd(1) mid_4010_msd(end)];
% 
% drawArrow2 = annotation('textarrow', 'Color', 'blue', 'LineWidth', 1.5,'String','~t^1^.^6','TextColor','black', 'HeadWidth',500);
% drawArrow2.Parent = gca;
% drawArrow2.X = [mid_8020_t(1) mid_8020_t(end)];
% drawArrow2.Y = [mid_8020_msd(1)-80 mid_8020_msd(end)];
%matlab2tikz('tex_acid_5ulh_msd.tex')


% clear;
% filename='C:\Users\marcb\Desktop\OF_experimental_simulation\OF_401020_1ulh\OF\2000\U';
% opt = detectImportOptions(filename);
% opt = setvartype(opt, [1 3], 'double');
% opt = setvaropts(opt, 'Prefixes', {'('}, 'Suffixes', {')'});
% D = readmatrix(filename, opt);
% l=length(D)-29;
% u=D(1:l,1);
% v=D(1:l,3);
% 
% filename='C:\Users\marcb\Desktop\OF_experimental_simulation\OF_401020_1ulh\OF\2000\C';
% opt = detectImportOptions(filename);
% opt = setvartype(opt, [1 3], 'double');
% opt = setvaropts(opt, 'Prefixes', {'('}, 'Suffixes', {')'});
% D = readmatrix(filename, opt);
% x=D(1:l,1);
% y=D(1:l,3);
% 
% u_sub=u(y>2e-4&y<5e-4&x>2e-4&x<5e-4);
% v_sub=v(y>2e-4&y<5e-4&x>2e-4&x<5e-4);
% speed_4010=sqrt(u.^2+v.^2);
% speed_4010_sub=sqrt(u_sub.^2+v_sub.^2);
% % 
% % %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% % %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 
% filename='C:\Users\marcb\Desktop\OF_experimental_simulation\OF_401020_1ulh\OF\3976\U';
% opt = detectImportOptions(filename);
% opt = setvartype(opt, [1 3], 'double');
% opt = setvaropts(opt, 'Prefixes', {'('}, 'Suffixes', {')'});
% D = readmatrix(filename, opt);
% l=length(D)-29;
% u=D(1:l,1);
% v=D(1:l,3);
% 
% filename='C:\Users\marcb\Desktop\OF_experimental_simulation\OF_401020_1ulh\OF\3976\C';
% opt = detectImportOptions(filename);
% opt = setvartype(opt, [1 3], 'double');
% opt = setvaropts(opt, 'Prefixes', {'('}, 'Suffixes', {')'});
% D = readmatrix(filename, opt);
% x=D(1:l,1);
% y=D(1:l,3);
% 
% u_sub=u(y>2e-4&y<5e-4&x>2e-4&x<5e-4);
% v_sub=v(y>2e-4&y<5e-4&x>2e-4&x<5e-4);
% speed_4010_new=sqrt(u_sub.^2+v_sub.^2);
% 
% % %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 
% filename='C:\Users\marcb\Desktop\OF_experimental_simulation\OF_401020_5ulh\OF\3000\U';
% opt = detectImportOptions(filename);
% opt = setvartype(opt, [1 3], 'double');
% opt = setvaropts(opt, 'Prefixes', {'('}, 'Suffixes', {')'});
% D = readmatrix(filename, opt);
% l=length(D)-29;
% u=D(1:l,1);
% v=D(1:l,3);
% 
% filename='C:\Users\marcb\Desktop\OF_experimental_simulation\OF_401020_5ulh\OF\3000\C';
% opt = detectImportOptions(filename);
% opt = setvartype(opt, [1 3], 'double');
% opt = setvaropts(opt, 'Prefixes', {'('}, 'Suffixes', {')'});
% D = readmatrix(filename, opt);
% x=D(1:l,1);
% y=D(1:l,3);
% 
% u_sub=u(y>2e-4&y<5e-4&x>2e-4&x<5e-4);
% v_sub=v(y>2e-4&y<5e-4&x>2e-4&x<5e-4);
% speed5_4010=sqrt(u_sub.^2+v_sub.^2);
% 
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 
% filename='C:\Users\marcb\Desktop\OF_experimental_simulation\OF_402020_1ulh\OF\2400\U';
% opt = detectImportOptions(filename);
% opt = setvartype(opt, [1 3], 'double');
% opt = setvaropts(opt, 'Prefixes', {'('}, 'Suffixes', {')'});
% D = readmatrix(filename, opt);
% l=length(D)-29;
% u=D(1:l,1);
% v=D(1:l,3);
% 
% filename='C:\Users\marcb\Desktop\OF_experimental_simulation\OF_402020_1ulh\OF\2400\C';
% opt = detectImportOptions(filename);
% opt = setvartype(opt, [1 3], 'double');
% opt = setvaropts(opt, 'Prefixes', {'('}, 'Suffixes', {')'});
% D = readmatrix(filename, opt);
% x=D(1:l,1);
% y=D(1:l,3);
% 
% u_sub=u(y>2e-4&y<5e-4&x>2e-4&x<5e-4);
% v_sub=v(y>2e-4&y<5e-4&x>2e-4&x<5e-4);
% speed_4020=sqrt(u_sub.^2+v_sub.^2);
% 
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 
% filename='C:\Users\marcb\Desktop\OF_experimental_simulation\OF_402020_5ulh\OF\2400\U';
% opt = detectImportOptions(filename);
% opt = setvartype(opt, [1 3], 'double');
% opt = setvaropts(opt, 'Prefixes', {'('}, 'Suffixes', {')'});
% D = readmatrix(filename, opt);
% l=length(D)-29;
% u=D(1:l,1);
% v=D(1:l,3);
% 
% filename='C:\Users\marcb\Desktop\OF_experimental_simulation\OF_402020_5ulh\OF\2400\C';
% opt = detectImportOptions(filename);
% opt = setvartype(opt, [1 3], 'double');
% opt = setvaropts(opt, 'Prefixes', {'('}, 'Suffixes', {')'});
% D = readmatrix(filename, opt);
% x=D(1:l,1);
% y=D(1:l,3);
% 
% u_sub=u(y>2e-4&y<5e-4&x>2e-4&x<5e-4);
% v_sub=v(y>2e-4&y<5e-4&x>2e-4&x<5e-4);
% speed5_4020=sqrt(u_sub.^2+v_sub.^2);
% 
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 
% filename='C:\Users\marcb\Desktop\OF_experimental_simulation\OF_802020_1ulh\OF\3000\U';
% opt = detectImportOptions(filename);
% opt = setvartype(opt, [1 3], 'double');
% opt = setvaropts(opt, 'Prefixes', {'('}, 'Suffixes', {')'});
% D = readmatrix(filename, opt);
% l=length(D)-29;
% u=D(1:l,1);
% v=D(1:l,3);
% 
% filename='C:\Users\marcb\Desktop\OF_experimental_simulation\OF_802020_1ulh\OF\3000\C';
% opt = detectImportOptions(filename);
% opt = setvartype(opt, [1 3], 'double');
% opt = setvaropts(opt, 'Prefixes', {'('}, 'Suffixes', {')'});
% D = readmatrix(filename, opt);
% x=D(1:l,1);
% y=D(1:l,3);
% 
% u_sub=u(y>2e-4&y<5e-4&x>2e-4&x<5e-4);
% v_sub=v(y>2e-4&y<5e-4&x>2e-4&x<5e-4);
% speed_8020=sqrt(u_sub.^2+v_sub.^2);
% 
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 
% filename='C:\Users\marcb\Desktop\OF_experimental_simulation\OF_802020_5ulh\OF\2500\U';
% opt = detectImportOptions(filename);
% opt = setvartype(opt, [1 3], 'double');
% opt = setvaropts(opt, 'Prefixes', {'('}, 'Suffixes', {')'});
% D = readmatrix(filename, opt);
% l=length(D)-29;
% u=D(1:l,1);
% v=D(1:l,3);
% 
% filename='C:\Users\marcb\Desktop\OF_experimental_simulation\OF_802020_5ulh\OF\2500\C';
% opt = detectImportOptions(filename);
% opt = setvartype(opt, [1 3], 'double');
% opt = setvaropts(opt, 'Prefixes', {'('}, 'Suffixes', {')'});
% D = readmatrix(filename, opt);
% x=D(1:l,1);
% y=D(1:l,3);
% 
% u_sub=u(y>2e-4&y<5e-4&x>2e-4&x<5e-4);
% v_sub=v(y>2e-4&y<5e-4&x>2e-4&x<5e-4);
% speed5_8020=sqrt(u_sub.^2+v_sub.^2);
% 
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%            %%%%%%%%%%%%%%%%%%%  Velocities  %%%%%%%%%%%%%%%%%%%%%%%%%
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 
% acid401020_1ulh_001=readmatrix('C:\Users\marcb\Desktop\flow_trajectories\acidovorax\GS40PL10Z20\trackmate_bgs_new\vel_001_1ulh.csv', 'Range', 'B:E');
% acid401020_1ulh_001_fast=readmatrix('C:\Users\marcb\Desktop\flow_trajectories\acidovorax\GS40PL10Z20\trackmate_bgs_new\vel_001_1ulh_fast.csv', 'Range', 'B:E');
% acid401020_1ulh_001_slow=readmatrix('C:\Users\marcb\Desktop\flow_trajectories\acidovorax\GS40PL10Z20\trackmate_bgs_new\vel_001_1ulh_slow.csv', 'Range', 'B:E');
% acid401020_1ulh_002=readmatrix('C:\Users\marcb\Desktop\flow_trajectories\acidovorax\GS40PL10Z20\trackmate_bgs_new\vel_002_1ulh.csv', 'Range', 'B:E');
% acid401020_1ulh_003=readmatrix('C:\Users\marcb\Desktop\flow_trajectories\acidovorax\GS40PL10Z20\trackmate_bgs_new\vel_003_1ulh.csv', 'Range', 'B:E');
% acid401020_1ulh_004=readmatrix('C:\Users\marcb\Desktop\flow_trajectories\acidovorax\GS40PL10Z20\trackmate_bgs_new\vel_004_1ulh.csv', 'Range', 'B:E');
% 
% acid402020_1ulh_001=readmatrix('C:\Users\marcb\Desktop\flow_trajectories\acidovorax\GS40PL20Z20\trackmate_bgs_new\vel_001_1ulh.csv', 'Range', 'B:E');
% acid402020_1ulh_001_fast=readmatrix('C:\Users\marcb\Desktop\flow_trajectories\acidovorax\GS40PL20Z20\trackmate_bgs_new\vel_001_1ulh_fast.csv', 'Range', 'B:E');
% acid402020_1ulh_001_slow=readmatrix('C:\Users\marcb\Desktop\flow_trajectories\acidovorax\GS40PL20Z20\trackmate_bgs_new\vel_001_1ulh_slow.csv', 'Range', 'B:E');
% acid402020_1ulh_002=readmatrix('C:\Users\marcb\Desktop\flow_trajectories\acidovorax\GS40PL20Z20\trackmate_bgs_new\vel_002_1ulh.csv', 'Range', 'B:E');
% acid402020_1ulh_003=readmatrix('C:\Users\marcb\Desktop\flow_trajectories\acidovorax\GS40PL20Z20\trackmate_bgs_new\vel_003_1ulh.csv', 'Range', 'B:E');
% 
% %acid802020_1ulh_001=readmatrix('C:\Users\marcb\Desktop\flow_trajectories\acidovorax\GS80PL20Z20\trackmate_bgs\vel_001_1ulh.csv', 'Range', 'B:E');
% acid802020_1ulh_001_fast=readmatrix('C:\Users\marcb\Desktop\flow_trajectories\acidovorax\GS80PL20Z20\trackmate_bgs_new\vel_001_1ulh_fast.csv', 'Range', 'B:E');
% acid802020_1ulh_001_slow=readmatrix('C:\Users\marcb\Desktop\flow_trajectories\acidovorax\GS80PL20Z20\trackmate_bgs_new\vel_001_1ulh_slow.csv', 'Range', 'B:E');
% acid802020_1ulh_002=readmatrix('C:\Users\marcb\Desktop\flow_trajectories\acidovorax\GS80PL20Z20\trackmate_bgs_new\vel_002_1ulh.csv', 'Range', 'B:E');
% %acid802020_1ulh_004=readmatrix('C:\Users\marcb\Desktop\flow_trajectories\acidovorax\GS80PL20Z20\trackmate_bgs\vel_004_1ulh.csv', 'Range', 'B:E');
% acid802020_1ulh_005=readmatrix('C:\Users\marcb\Desktop\flow_trajectories\acidovorax\GS80PL20Z20\trackmate_bgs_new\vel_005_1ulh.csv', 'Range', 'B:E');
% 
% acid401020_5ulh_001=readmatrix('C:\Users\marcb\Desktop\flow_trajectories\acidovorax\GS40PL10Z20\trackmate_bgs_new\vel_001_5ulh.csv', 'Range', 'B:E');
% acid401020_5ulh_001_fast=readmatrix('C:\Users\marcb\Desktop\flow_trajectories\acidovorax\GS40PL10Z20\trackmate_bgs_new\vel_001_5ulh_fast.csv', 'Range', 'B:E');
% acid401020_5ulh_001_slow=readmatrix('C:\Users\marcb\Desktop\flow_trajectories\acidovorax\GS40PL10Z20\trackmate_bgs_new\vel_001_5ulh_slow.csv', 'Range', 'B:E');
% acid401020_5ulh_002=readmatrix('C:\Users\marcb\Desktop\flow_trajectories\acidovorax\GS40PL10Z20\trackmate_bgs_new\vel_002_5ulh.csv', 'Range', 'B:E');
% acid401020_5ulh_003=readmatrix('C:\Users\marcb\Desktop\flow_trajectories\acidovorax\GS40PL10Z20\trackmate_bgs_new\vel_003_5ulh.csv', 'Range', 'B:E');
% 
% acid402020_5ulh_001=readmatrix('C:\Users\marcb\Desktop\flow_trajectories\acidovorax\GS40PL20Z20\trackmate_bgs_new\vel_001_5ulh.csv', 'Range', 'B:E');
% acid402020_5ulh_001_fast=readmatrix('C:\Users\marcb\Desktop\flow_trajectories\acidovorax\GS40PL20Z20\trackmate_bgs_new\vel_001_5ulh_fast.csv', 'Range', 'B:E');
% acid402020_5ulh_001_slow=readmatrix('C:\Users\marcb\Desktop\flow_trajectories\acidovorax\GS40PL20Z20\trackmate_bgs_new\vel_001_5ulh_slow.csv', 'Range', 'B:E');
% acid402020_5ulh_002=readmatrix('C:\Users\marcb\Desktop\flow_trajectories\acidovorax\GS40PL20Z20\trackmate_bgs_new\vel_002_5ulh.csv', 'Range', 'B:E');
% 
% acid802020_5ulh_001=readmatrix('C:\Users\marcb\Desktop\flow_trajectories\acidovorax\GS80PL20Z20\trackmate_bgs_new\vel_001_5ulh.csv', 'Range', 'B:E');
% acid802020_5ulh_001_fast=readmatrix('C:\Users\marcb\Desktop\flow_trajectories\acidovorax\GS80PL20Z20\trackmate_bgs_new\vel_001_5ulh_fast.csv', 'Range', 'B:E');
% acid802020_5ulh_001_slow=readmatrix('C:\Users\marcb\Desktop\flow_trajectories\acidovorax\GS80PL20Z20\trackmate_bgs_new\vel_001_5ulh_slow.csv', 'Range', 'B:E');
% acid802020_5ulh_002=readmatrix('C:\Users\marcb\Desktop\flow_trajectories\acidovorax\GS80PL20Z20\trackmate_bgs_new\vel_002_5ulh.csv', 'Range', 'B:E');
% acid802020_5ulh_003=readmatrix('C:\Users\marcb\Desktop\flow_trajectories\acidovorax\GS80PL20Z20\trackmate_bgs_new\vel_003_5ulh.csv', 'Range', 'B:E');
% % % 
% geo401020_1ulh_005=readmatrix('C:\Users\marcb\Desktop\flow_trajectories\geobacter\GS40PL10Z20\trackmate_bgs_new\vel_005_1ulh.csv', 'Range', 'B:E');
% geo401020_1ulh_005_fast=readmatrix('C:\Users\marcb\Desktop\flow_trajectories\geobacter\GS40PL10Z20\trackmate_bgs_new\vel_001_1ulh_fast.csv', 'Range', 'B:E');
% geo401020_1ulh_005_slow=readmatrix('C:\Users\marcb\Desktop\flow_trajectories\geobacter\GS40PL10Z20\trackmate_bgs_new\vel_005_1ulh_slow.csv', 'Range', 'B:E');
% geo401020_1ulh_006=readmatrix('C:\Users\marcb\Desktop\flow_trajectories\geobacter\GS40PL10Z20\trackmate_bgs_new\vel_006_1ulh.csv', 'Range', 'B:E');
% geo401020_1ulh_007=readmatrix('C:\Users\marcb\Desktop\flow_trajectories\geobacter\GS40PL10Z20\trackmate_bgs_new\vel_007_1ulh.csv', 'Range', 'B:E');
% 
% geo401020_5ulh_001_V2=readmatrix('C:\Users\marcb\Desktop\flow_trajectories\geobacter\GS40PL10Z20\trackmate_bgs_new\vel_001_5ulh_V2.csv', 'Range', 'B:E');
% geo401020_5ulh_001=readmatrix('C:\Users\marcb\Desktop\flow_trajectories\geobacter\GS40PL10Z20\trackmate_bgs_new\vel_001_5ulh.csv', 'Range', 'B:E');
% geo401020_5ulh_002=readmatrix('C:\Users\marcb\Desktop\flow_trajectories\geobacter\GS40PL10Z20\trackmate_bgs_new\vel_002_5ulh.csv', 'Range', 'B:E');
% geo401020_5ulh_002_fast=readmatrix('C:\Users\marcb\Desktop\flow_trajectories\geobacter\GS40PL10Z20\trackmate_bgs_new\vel_002_5ulh_fast.csv', 'Range', 'B:E');
% geo401020_5ulh_002_slow=readmatrix('C:\Users\marcb\Desktop\flow_trajectories\geobacter\GS40PL10Z20\trackmate_bgs_new\vel_002_5ulh_slow.csv', 'Range', 'B:E');
% % 
% geo802020_1ulh_001=readmatrix('C:\Users\marcb\Desktop\flow_trajectories\geobacter\GS80PL20Z20\trackmate_bgs_new\vel_001_1ulh.csv', 'Range', 'B:E');
% geo802020_1ulh_001_fast=readmatrix('C:\Users\marcb\Desktop\flow_trajectories\geobacter\GS80PL20Z20\trackmate_bgs_new\vel_001_1ulh_fast.csv', 'Range', 'B:E');
% geo802020_1ulh_001_slow=readmatrix('C:\Users\marcb\Desktop\flow_trajectories\geobacter\GS80PL20Z20\trackmate_bgs_new\vel_001_1ulh_slow.csv', 'Range', 'B:E');
% geo802020_1ulh_002=readmatrix('C:\Users\marcb\Desktop\flow_trajectories\geobacter\GS80PL20Z20\trackmate_bgs_new\vel_002_1ulh.csv', 'Range', 'B:E');
% geo802020_1ulh_003=readmatrix('C:\Users\marcb\Desktop\flow_trajectories\geobacter\GS80PL20Z20\trackmate_bgs_new\vel_003_1ulh.csv', 'Range', 'B:E');
% 
% geo802020_5ulh_001=readmatrix('C:\Users\marcb\Desktop\flow_trajectories\geobacter\GS80PL20Z20\trackmate_bgs_new\vel_001_5ulh.csv', 'Range', 'B:E');
% geo802020_5ulh_001_fast=readmatrix('C:\Users\marcb\Desktop\flow_trajectories\geobacter\GS80PL20Z20\trackmate_bgs_new\vel_001_5ulh_fast.csv', 'Range', 'B:E');
% geo802020_5ulh_001_slow=readmatrix('C:\Users\marcb\Desktop\flow_trajectories\geobacter\GS80PL20Z20\trackmate_bgs_new\vel_001_5ulh_slow.csv', 'Range', 'B:E');
% geo802020_5ulh_002=readmatrix('C:\Users\marcb\Desktop\flow_trajectories\geobacter\GS80PL20Z20\trackmate_bgs_new\vel_002_5ulh.csv', 'Range', 'B:E');
% geo802020_5ulh_003=readmatrix('C:\Users\marcb\Desktop\flow_trajectories\geobacter\GS80PL20Z20\trackmate_bgs_new\vel_003_5ulh.csv', 'Range', 'B:E');
% 
% paen802020_1ulh_001=readmatrix('C:\Users\marcb\Desktop\flow_trajectories\paenibac\GS80PL20Z20\trackmate_bgs_new\vel_001_1ulh.csv', 'Range', 'B:E');
% paen802020_1ulh_002=readmatrix('C:\Users\marcb\Desktop\flow_trajectories\paenibac\GS80PL20Z20\trackmate_bgs_new\vel_002_1ulh.csv', 'Range', 'B:E');
% paen802020_1ulh_003=readmatrix('C:\Users\marcb\Desktop\flow_trajectories\paenibac\GS80PL20Z20\trackmate_bgs_new\vel_003_1ulh.csv', 'Range', 'B:E');
% paen802020_1ulh_001_fast=readmatrix('C:\Users\marcb\Desktop\flow_trajectories\paenibac\GS80PL20Z20\trackmate_bgs_new\vel_001_1ulh_fast.csv', 'Range', 'B:E');
% paen802020_1ulh_001_slow=readmatrix('C:\Users\marcb\Desktop\flow_trajectories\paenibac\GS80PL20Z20\trackmate_bgs_new\vel_001_1ulh_slow.csv', 'Range', 'B:E');
% 
% paen802020_5ulh_001=readmatrix('C:\Users\marcb\Desktop\flow_trajectories\paenibac\GS80PL20Z20\trackmate_bgs_new\vel_001_5ulh.csv', 'Range', 'B:E');
% paen802020_5ulh_002=readmatrix('C:\Users\marcb\Desktop\flow_trajectories\paenibac\GS80PL20Z20\trackmate_bgs_new\vel_002_5ulh.csv', 'Range', 'B:E');
% paen802020_5ulh_003=readmatrix('C:\Users\marcb\Desktop\flow_trajectories\paenibac\GS80PL20Z20\trackmate_bgs_new\vel_003_5ulh.csv', 'Range', 'B:E');
% paen802020_5ulh_001_fast=readmatrix('C:\Users\marcb\Desktop\flow_trajectories\paenibac\GS80PL20Z20\trackmate_bgs_new\vel_001_5ulh_fast.csv', 'Range', 'B:E');
% paen802020_5ulh_001_slow=readmatrix('C:\Users\marcb\Desktop\flow_trajectories\paenibac\GS80PL20Z20\trackmate_bgs_new\vel_001_5ulh_slow.csv', 'Range', 'B:E');
% 
% acid401020_1ulh=[acid401020_1ulh_001; acid401020_1ulh_002;acid401020_1ulh_003 ;acid401020_1ulh_004];
% acid402020_1ulh=[acid402020_1ulh_001; acid402020_1ulh_002;acid402020_1ulh_003];
% acid802020_1ulh=[ acid802020_1ulh_002;acid802020_1ulh_005];
% 
% acid401020_5ulh=[acid401020_5ulh_001; acid401020_5ulh_002;acid401020_5ulh_003];
% acid402020_5ulh=[acid402020_5ulh_001; acid402020_5ulh_002];
% acid802020_5ulh=[acid802020_5ulh_001; acid802020_5ulh_002;acid802020_5ulh_003];
% % 
% geo802020_1ulh=[geo802020_1ulh_001; geo802020_1ulh_002;geo802020_1ulh_003];
% geo802020_5ulh=[geo802020_5ulh_001; geo802020_5ulh_002;geo802020_5ulh_003];
% geo401020_1ulh=[geo401020_1ulh_005; geo401020_1ulh_006; geo401020_1ulh_007];
% geo401020_5ulh=[geo401020_5ulh_001; geo802020_5ulh_002];
% 
% paen802020_1ulh=[paen802020_1ulh_001; paen802020_1ulh_002;paen802020_1ulh_003];
% paen802020_5ulh=[paen802020_5ulh_001; paen802020_5ulh_002;paen802020_5ulh_003];

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%  Iverts (interpolate stream and pathlines  %%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% F = TriScatteredInterp(x/1.75e-7,y/1.7415e-7,u);
% [xg1,yg1]=meshgrid(1:1:4095,1:1:4105);
% u_interp = F(xg1,yg1);
% F = TriScatteredInterp(x/1.75e-7,y/1.7415e-7,v);
% % % % % % 
% % % % % % %F = TriScatteredInterp(x/0.00000123456,y/0.00000381679,v);
% v_interp = F(xg1,yg1);
% % % u_interp(isnan(u_interp))=[];
% % % v_interp(isnan(v_interp))=[];
% % % u_reshape=reshape(u_interp,1,[]);
% % % v_reshape=reshape(v_interp,1,[]);
% % % speed_reshape=sqrt(u_reshape.^2+v_reshape.^2);
% % % % % 
[xg1,yg1]=meshgrid(1:1:4116,1:1:4096);
[sx, sy]= meshgrid(yg1(1:29:4000,1),xg1(1,1:15:4000));

verts=stream2(xg1,yg1,vMapx,vMapz, sx, sy);
% verts(:,2000:end) = [];
% verts(:,1:200) = [];
%verts(cellfun(@(verts) any(isnan(verts,'UniformOutput',false)),verts)) = [];
for i = 1:length(verts)
    verts{i} = verts{i}(~isnan(verts{i}(:,1)),:) ;
end
% %u_interp(isnan(u_interp))=[];
% %v_interp(isnan(v_interp))=[];
% % u_interp(4100:size(xg1,1),:)=[];
% % v_interp(4100:size(xg1,1),:)=[];
% % u_interp(:,4090:size(xg1,2))=[];
% % v_interp(:,4090:size(xg1,2))=[];
verts2 = verts(cellfun('length',verts)>=5000);
verts3=verts2(1:3:end);
% verts4=verts3(1:5:end);
% 
iverts=interpstreamspeed2(xg1,yg1,vMapx,vMapz,verts3,50000);
hold on
for i=1:length(iverts)-1
    plot(iverts{i}(:,1),iverts{i}(:,2))
end

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
         %%%%%%%%%%%%%%%%%%%  Speed Plots  %%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 
% speed_8020=speed_8020*1e6;
% speed5_8020=speed5_8020*1e6;
% %speed_4010=speed_4010*1e6;
% %speed_4010_new=speed_4010_new*1e6;
% 
% speed5_4010=speed5_4010*1e6;
% speed_4020=speed_4020*1e6;
% speed5_4020=speed5_4020*1e6;
% % 
% darkpurple=[0.4941    0.1843    0.5569];
%  lightpurple=[0.784313725490196,0,1];
%  bins=0;
% % % 
% % % 
% %speed_4010=speed_4010_sub;
% hold on
% n=500;
% % speed_4010_normal=speed_4010/mean(speed_4010);
% % nlog=logspace(min(log10(speed_4010)),max(log10(speed_4010)),n);
% % [h,e]=histcounts(speed_4010,nlog,'Normalization','pdf');
% % for i=linspace(1,length(h),length(h))
% %     bins(i)=(e(i)+e(i+1))/2;
% % end
% % plot(bins,h/sum(h))
% % trapz(bins,h/sum(h))
% speed=speed*6.153846;
% bins=0
% n=20;
% speed(isnan(speed))=[];
% speed(isinf(speed))=[];
% speed(speed==0)=[];
% nlog=logspace(.7,2,n);
% [h,e]=histcounts(speed,nlog,'Normalization','pdf');
% for i=linspace(1,length(h),length(h))
%     bins(i)=(e(i)+e(i+1))/2;
% end
% plot(bins,h/sum(h))
% trapz(bins,h/sum(h))
%  set(gca,'xscale','log')
%  set(gca,'yscale','log')
% 
% 
% speed5_4010_normal=speed5_4010/mean(speed5_4010);
% nlog=logspace(min(log10(speed5_4010_normal)),max(log10(speed5_4010_normal)));
% [h,e]=histcounts(speed5_4010_normal,nlog,'Normalization','pdf');
% for i=linspace(1,49,49)
%     bins(i)=(e(i)+e(i+1))/2;
% end
% plot(bins,h/sum(h))
% trapz(bins,h/sum(h))

%acid_4020_normal=acid802020_1ulh/mean(speed_8020);
% acid_4020_normal(acid_4020_normal==0)=[];
% acid_4020_normal(isnan(acid_4020_normal))=[];
% 
% nlog=logspace(min(log10(.01)),max(log10(acid_4020_normal)),64);
% [h,e]=histcounts(acid_4020_normal,nlog,'Normalization','pdf');
% for i=linspace(1,length(h),length(h))
%     bins(i)=(e(i)+e(i+1))/2;
% end
% plot(bins,h/sum(h))
% trapz(bins,h/sum(h))
% bins=0
% acid5_4020_normal=acid802020_5ulh/mean(speed5_8020);
% acid5_4020_normal(acid5_4020_normal==0)=[];
% acid5_4020_normal(isnan(acid5_4020_normal))=[];
% 
% nlog=logspace(min(log10(.01)),max(log10(acid5_4020_normal)),33);
% [h,e]=histcounts(acid5_4020_normal,nlog,'Normalization','pdf');
% for i=linspace(1,length(h),length(h))
%     bins(i)=(e(i)+e(i+1))/2;
% end
% plot(bins,h/sum(h))
% trapz(bins,h/sum(h))
% bins=0
% speed_8020_normal=speed_8020/mean(speed_8020);
% nlog=logspace(min(log10(speed_8020_normal)),max(log10(speed_8020_normal)),n);
% [h,e]=histcounts(speed_8020_normal,nlog,'Normalization','pdf');
% for i=linspace(1,length(h),length(h))
%     bins(i)=(e(i)+e(i+1))/2;
% end
% plot(bins,h/sum(h))
% trapz(bins,h/sum(h))
% 
% speed5_8020_normal=speed5_8020/mean(speed5_8020);
% nlog=logspace(min(log10(speed5_8020_normal)),max(log10(speed5_8020_normal)));
% [h,e]=histcounts(speed5_8020_normal,nlog,'Normalization','pdf');
% for i=linspace(1,49,49)
%     bins(i)=(e(i)+e(i+1))/2;
% end
% plot(bins,h/sum(h))
% trapz(bins,h/sum(h))
% 
% 
% % % % 
%  set(gca,'xscale','log')
%  set(gca,'yscale','log')
% % %  title('Simulated fluid and Bacterial speed pdfs for GD40PL20 1ulh')
% legend('4010 1ulh','4020 5ulh','8020 1ulh','4020 5ulh','8020 1ulh','8020 5ulh','Location','best')
% % xlabel('Speed (um/s)')
% xlim([1e-1,1e3])
% ylim([3e-5,.1])
%E=strain(u_interp,v_interp);
% rho=1000;
% shear=-rho*cov(u_interp,v_interp);
% mean_u=mean(mean(u_interp));
% mean_v=mean(mean(v_interp));
% uPrime=u_interp-mean_u;
% vPrime=v_interp-mean_v;
% uu=uPrime.*uPrime;
% uv=uPrime.*vPrime;
% ReyStress=sqrt(uu.^2+uv.^2);

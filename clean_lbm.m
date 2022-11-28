%Clean lbm simulation
 %clearvars -except Geometry iverts
% % 2D Lattice Boltzmann (BGK) model of a fluid.
% %  c4  c3   c2  D2Q9 model. At each timestep, particle densities propagate
% %    \  |  /    outwards in the directions indicated in the figure. An
% %  c5 -c9 - c1  equivalent 'equilibrium' density is found, and the densities
% %    /  |  \    relax towards that state, in a proportion governed by omega.
% %  c6  c7   c8      Modified from Iain Haslam, February 2018. Laz J. Perez
% %% Parameters
% % Flow parameters
% omega = .3; density = 100.0; 
% % L-B parameters
% t1 = 4/9; t2 = 1/9; t3 = 1/36; c_squ = 1/3; 
% % Geometry discretization
% nx = 512; ny = 512;
% F = repmat(density/9,[nx ny 9]); FEQ=F; msize=nx*ny; CI=0:msize:msize*7;
% % Geometry
% x_vec=[-200  0  200];
% y_vec=[-200 -100  0 100 200];
% a=zeros(nx);
% ii=ceil(nx/2);
% R=30;
% for i=x_vec
%     for j=y_vec
%         a(ii+i,ii+j)=1;
%     end
% end
% x_vec=[ -100  100 ];
% y_vec=[-250 -150 -50 50 150 250];
% b=zeros(nx);
% for i=x_vec
%     for j=y_vec
%         b(ii+i,ii+j)=1;
%     end
% end
% m=a+b;
% BOUND = bwdist(m) <= R;
%     
% BOUND(1:nx,1) = 1; BOUND(1:nx,end) = 1;
% 
% ON = find(BOUND); %matrix offset of each Occupied Node
% TO_REFLECT=[ON+CI(1) ON+CI(2) ON+CI(3) ON+CI(4) ...
%             ON+CI(5) ON+CI(6) ON+CI(7) ON+CI(8)];
% REFLECTED= [ON+CI(5) ON+CI(6) ON+CI(7) ON+CI(8) ...
%             ON+CI(1) ON+CI(2) ON+CI(3) ON+CI(4)];
% avu=1; prevavu=1; ts=0; deltaU=.4; numactivenodes=sum(sum(1-BOUND));
% while (ts<5000 && 1e-8<abs((prevavu-avu)/avu)) || ts<100
%     % Propagate
%     F(:,:,4)=F([2:nx 1],[ny 1:ny-1],4);F(:,:,3)=F(:,[ny 1:ny-1],3);
%     F(:,:,2)=F([nx 1:nx-1],[ny 1:ny-1],2);F(:,:,5)=F([2:nx 1],:,5);
%     F(:,:,1)=F([nx 1:nx-1],:,1);F(:,:,6)=F([2:nx 1],[2:ny 1],6);
%     F(:,:,7)=F(:,[2:ny 1],7); F(:,:,8)=F([nx 1:nx-1],[2:ny 1],8);
%     BOUNCEDBACK = F(TO_REFLECT); %Densities bouncing back at next timestep
%     DENSITY = sum(F,3);
%     UX = (sum(F(:,:,[1 2 8]),3)-sum(F(:,:,[4 5 6]),3))./DENSITY;
%     UY = (sum(F(:,:,[2 3 4]),3)-sum(F(:,:,[6 7 8]),3))./DENSITY;
%     UX(1,1:ny) = UX(1,1:ny)+deltaU; %Increase inlet pressure
%     UX(ON) = 0; UY(ON) = 0; DENSITY(ON) = 0;
%     U_SQU = UX.^2+UY.^2; U_C2=UX+UY; U_C4=-UX+UY; U_C6=-U_C2; U_C8=-U_C4;
%     % Calculate equilibrium distribution: stationary
%     FEQ(:,:,9) = t1*DENSITY.*(1-U_SQU/(2*c_squ));
%     % nearest-neighbours
%     FEQ(:,:,1) = t2*DENSITY.*(1+UX/c_squ+0.5*(UX/c_squ).^2-U_SQU/(2*c_squ));
%     FEQ(:,:,3) = t2*DENSITY.*(1+UY/c_squ+0.5*(UY/c_squ).^2-U_SQU/(2*c_squ));
%     FEQ(:,:,5) = t2*DENSITY.*(1-UX/c_squ+0.5*(UX/c_squ).^2-U_SQU/(2*c_squ));
%     FEQ(:,:,7) = t2*DENSITY.*(1-UY/c_squ+0.5*(UY/c_squ).^2-U_SQU/(2*c_squ));
%     % next-nearest neighbours
%     FEQ(:,:,2) = t3*DENSITY.*(1+U_C2/c_squ+0.5*(U_C2/c_squ).^2-U_SQU/(2*c_squ));
%     FEQ(:,:,4) = t3*DENSITY.*(1+U_C4/c_squ+0.5*(U_C4/c_squ).^2-U_SQU/(2*c_squ));
%     FEQ(:,:,6) = t3*DENSITY.*(1+U_C6/c_squ+0.5*(U_C6/c_squ).^2-U_SQU/(2*c_squ));
%     FEQ(:,:,8) = t3*DENSITY.*(1+U_C8/c_squ+0.5*(U_C8/c_squ).^2-U_SQU/(2*c_squ));
%     F = omega*FEQ+(1-omega)*F;
%     F(REFLECTED) = BOUNCEDBACK;
%     prevavu = avu;
%     avu = sum(sum(UX))/numactivenodes; ts = ts+1; abs((prevavu-avu)/avu), (ts<4000 & 1<abs((prevavu-avu)/avu));
% end
% bound2=double(BOUND');
% bound2=~bound2;
% bound2=bound2*255;
% minr=1;
% maxr=512;
% maxpix=255;
% for n=1:200
%     r1 = randi([minr, maxr]);
%     r2 = randi([minr, maxr]);
%     r3 = randi([minr, maxpix]);
%     bound2(r1:r1+1,r2:r2+1)=r3;
% end
% 
% for n=1:4000
%     r1 = randi([minr, maxr]);
%     r2 = randi([minr, maxr]);
%     r3 = randi([minr, maxpix]);
%     bound2(r1,r2)=r3;
% end
% bound2=bound2/255;
% 
% 
% 
% [x,y]=meshgrid(1:512,1:512);
% [sx, sy]=meshgrid(5:10:510,5:10:510 ); %2500 particles
% %[sx, sy]=meshgrid(5:15:510,5:15:510 ); %600 particles
% 
% u=UX';
% v=UY';
% verts=stream2(x,y,u,v, sx, sy);
% verts = verts(cellfun('length',verts)>=100);
% iverts=interpstreamspeed2(x,y,u,v,verts,100);
ivert_thresh=9000;
iverts = iverts(cellfun(@(x) length(x) <= ivert_thresh, iverts));
xc=[];
yc=[];
tc=[];
% 
for i = 1:length(iverts)
    x = iverts{1,i}(:,1);
    xc=[xc;{x}];
    y = iverts{1,i}(:,2);
    yc=[yc;{y}];
    t=[1:length(iverts{1,i}(:,2))];
    tc=[tc;{t}];

end

%figure;
%axis equal
%set(gca,'visible','on')
%set(gca,'XColor', 'white','YColor','white')
figure;
imshow(imcomplement(Geometry')); 
hAxes = gca;


%set(hAxes,'plotBoxAspectRatio',[1 1 1])
%set(hAxes,'dataAspectRatio',[1 1 1])
%fig=gcf;
%fig.Position=[10 10 1000 1000]
%set(hAxes,'DrawMode','fast');
folder='C:\Users\marcb\Desktop\OF_PTsim\401020_1ulh_OFsim_PT_noback_2400part\';
% set(gcf,'Units','pixels','Position',[200 200 800 800])
% set(hAxes,'xtick',[])
% set(hAxes,'xticklabel',[])
% set(hAxes,'ytick',[])
% set(hAxes,'yticklabel',[])
% set(gcf,'Resize','off');
% camva(10.233654236032809);
% camtarget([8.805000000000000e+02,1770.50000000000,0])
% campos([8.805000000000000e+02,1770.50000000000,19766.8940402887]);
% %set(hAxes,'XColor', 'white','YColor','white')
% %set (hAxes, 'PositionConstraint', 'innerposition')
% %set(hAxes,'XColor', 'none','YColor','none')
% set(hAxes,'Units','normalized','innerposition',[0.140228009578265,0.065780502815757,0.716612377850163,0.904907975460123])
% set(hAxes,'Units','normalized','outerposition',[0.020022062325980,-0.056354315958002,0.924661132709888,1.110316534306899])
% set(groot,'DefaultAxesXLimitMethod',"tight")
% set(groot,'DefaultAxesYLimitMethod',"tight")

%set(hAxes,'Units','Pixels','Position',[653,-12,614,978])
%set(hAxes,'position',[0 0 1 1],'units','normalized')
hAxes.XAxis.Limits=[0 4096];
hAxes.YAxis.Limits=[0 4116];
hAxes.ZAxis.Limits=[-.0001 .0001];
set(hAxes, 'XLim', [0 4096]);
set(hAxes, 'YLim', [0 4116]);
% points=[];
% new_geo=Geometry;
% for i=1:length(xlist)
%     xlist(i)
%     ylist(i)
%     new_geo(xlist(i):xlist(i)+4,ylist(i):ylist(i)+4)=1;
% end
% imshow(new_geo)

% for i=1:length(xc)
%     hLine(i) = animatedline(hAxes, 'Marker', 'o', 'MarkerSize',1);
% end

% %create new position cells with randomly dropped particles
xc_new=xc;
yc_new=yc;
% % for i=1:length(xc) %This number represents the number of particles
% %     for j=1:50 %This number controls how many frames are dropped for each trajectory
% %         rowIndex(j)=randi(length(xc{i,1}));
% %         xc_new{i,1}(rowIndex(j),1)    = nan;
% %         yc_new{i,1}(rowIndex(j),1)    = nan;
% %     end
% % end
% 
% 
idcell=find(cellfun('length',xc_new)>=30);
xc_long=[];
yc_long=[];
tc_long=[];

for i=1:length(idcell) 
    xc_long{i,1}=xc_new{idcell(i),1};
    yc_long{i,1}=yc_new{idcell(i),1};
    tc_long{i,1}=tc{idcell(i),1};
end
% 
% % xc_fast=xc_long;
% % yc_fast=yc_long;
% % tc_fast=tc_long;
% % for i=1:30    %This number represents the number of particles we want to be faster than normal
% %     ind(i)=randi(length(xc_fast));
% % %     xc_fast{ind(i),1}(1:2:1200,:) = [];
% % %     yc_fast{ind(i),1}(1:2:1200,:) = [];
% % %     tc_fast{ind(i),1}(:,1:2:1200) = [];
% % %     xc_fast{ind(i),1}(1:2:600,:) = [];
% % %     yc_fast{ind(i),1}(1:2:600,:) = [];
% % %     tc_fast{ind(i),1}(:,1:2:600) = [];
% %     xc_fast{ind(i),1}(1:2:200,:) = [];
% %     yc_fast{ind(i),1}(1:2:200,:) = [];
% %     tc_fast{ind(i),1}(:,1:2:200) = [];
% %     xc_fast{ind(i),1}(1:2:100,:) = [];
% %     yc_fast{ind(i),1}(1:2:100,:) = [];
% %     tc_fast{ind(i),1}(:,1:2:100) = [];   
% %     %xc_fast{ind(i),1}(1:2:50,:) = [];
% %     %yc_fast{ind(i),1}(1:2:50,:) = [];
% %     %tc_fast{ind(i),1}(:,1:2:50) = [];
% % end
% 
% % Use xc_new for simulations with randomly dropped particles, and xc for
% % simulations with all particles
n=10;
new_xc=0;
new_yc=0;
x1=0;
y1=0;
new_traj=[];
% xlist=[];%zeros(length(xc_long),1);
% ylist=[];%zeros(length(yc_long),1);
xc_long=cellfun(@(x) x*n,xc_long,'un',0);
yc_long=cellfun(@(x) x*n,yc_long,'un',0);
idx_last=2;
new_geo=imcomplement(Geometry);
imshow(new_geo)
hold on
new_geo=ones(size(Geometry));
new_geo=imresize(new_geo,n);
[s,d] = cellfun(@size,xc_long);
max_len = max([s,d]);

for t = 1:2500
    
    %new_geo=imcomplement(Geometry);
    new_geo=ones(size(Geometry));
    new_geo=imresize(new_geo,n);
%     imshow(imcomplement(Geometry')); 
%     hAxes = gca;
    for i=1:length(xc_long)
        %clearpoints(hLine(i))
        
        idx = find(tc_long{i,1}==t,1,'first');
        if t>2
            idx_last = find(tc_long{i,1}==t-1,1,'first');
        end
        if ~isempty(idx)
            if idx<=length(xc_long{i,1})
                
                x = xc_long{i,1}(idx);
                y = yc_long{i,1}(idx);
                xlast = xc_long{i,1}(idx_last);
                ylast = yc_long{i,1}(idx_last);
                if t>2
                    if abs(x-xlast)+abs(y-ylast)<.2
                        x=NaN;
                        y=NaN;
                    end
                end
                if y>4000*n||x>4080*n
                    x=NaN;
                    y=NaN;
                else
                    try
                        new_geo(round(y)-4*n:round(y)-2*n,round(x)-2*n:round(x)+2*n)=0;
                        new_geo(round(y)-5*n:round(y)-4*n,round(x)-1*n:round(x)+1*n)=0;
                        new_geo(round(y)-2*n:round(y)+2*n,round(x)-3*n:round(x)+3*n)=0;

                        new_geo(round(y)+4*n:round(y)+5*n,round(x)-1*n:round(x)+1*n)=0;
                        new_geo(round(y)+2*n:round(y)+4*n,round(x)-2*n:round(x)+2*n)=0;
                    catch
                        x=NaN;
                        y=NaN;
%                         try
%                             new_geo(round(y),round(x))=0;
%                         catch
%                             x=NaN;
%                             y=NaN;
%                        end
                    end
                end
                
                new_xc(t,i)=round(x)/n;
                new_yc(t,i)=round(y)/n;
                %new_tc(t,i)=t;
%                 if isfinite(x)
%                     if abs(x)>0
%                         count=count+1;
%                     end
%                 end

                %addpoints(hLine(i),x,y);
               
            end
        end
    end
    new_geo_resize=imresize(new_geo,.1,'bicubic');
    %imshow(new_geo)
    %drawnow 
    %F=getimage;
    %imshow(F)
    %image=getimage(hAxes)+getimage(gcf);
    %imshow(image)

    %print([folder,sprintf('Fig_%d.jpg', t)]);
    %exportgraphics(hAxes, [folder,sprintf('Fig_%d.jpg', t)])
    imwrite(new_geo_resize, [folder,sprintf('Fig_%d.jpg', t)])
end
hold off
% 
% 
writematrix(new_yc, 'C:\Users\marcb\Desktop\OF_PTsim\yc_401020_1ulh_OFsim_PT_2400part.csv')
writematrix(new_xc, 'C:\Users\marcb\Desktop\OF_PTsim\xc_401020_1ulh_OFsim_PT_2400part.csv')

% new_xc=readmatrix('C:\Users\marcb\Desktop\OF_PTsim\xc_401020_1ulh_OFsim_PT_600part.csv');
% new_yc=readmatrix('C:\Users\marcb\Desktop\OF_PTsim\yc_401020_1ulh_OFsim_PT_600part.csv');
% %nnz(new_xc(1800,:))
% xvel=[];
% allspeed=[]
% for i=1:size(new_yc,2)
%     xvel=diff(new_xc(:,i));
%     yvel=diff(new_yc(:,i));
%     speed=sqrt(xvel.^2+yvel.^2);
%     allspeed(:,i)=speed;
% end
% speed10x=reshape(allspeed,[],1);
% 
% 
% hold on
% bins=0;n=45;
% speed10x(isnan(speed10x))=[];
% speed10x(isinf(speed10x))=[];
% speed10x(speed10x==0)=[];
% nlog=logspace(-1,2,n);
% [h,e]=histcounts(speed10x,nlog,'Normalization','pdf');
% for i=linspace(1,length(h),length(h))
%     bins(i)=(e(i)+e(i+1))/2;
% end
% plot(bins,h/sum(h))
% trapz(bins,h/sum(h))
% bins=0; n=45;
% nlog=logspace(-2,2,n);

% new_xc=readmatrix('C:\Users\marcb\Desktop\OF_PTsim\xc_401020_1ulh_OFsim_PT_2400part.csv');
% new_yc=readmatrix('C:\Users\marcb\Desktop\OF_PTsim\yc_401020_1ulh_OFsim_PT_2400part.csv');
% %nnz(new_xc(1800,:))
% xvel=[];
% allspeed=[]
% for i=1:size(new_yc,2)
%     xvel=diff(new_xc(:,i));
%     yvel=diff(new_yc(:,i));
%     speed=sqrt(xvel.^2+yvel.^2);
%     allspeed(:,i)=speed;
% end
% speed=reshape(allspeed,[],1);
% 
% 
% 
% bins=0;n=35;
% speed(isnan(speed))=[];
% speed(isinf(speed))=[];
% speed(speed==0)=[];
% nlog=logspace(-1,2,n);
% [h,e]=histcounts(speed,nlog,'Normalization','pdf');
% for i=linspace(1,length(h),length(h))
%     bins(i)=(e(i)+e(i+1))/2;
% end
% plot(bins,h/sum(h))
% trapz(bins,h/sum(h))
% bins=0; n=35;
% nlog=logspace(-2,2,n);
% 
% 
% 
% tmate_401020_1ulh_vel=readmatrix('C:\Users\marcb\Desktop\flow_trajectories\sim\tmate\vel_401020_1ulh_2400part_10xspeed.csv','Range', 'B:E');
% tmate_401020_1ulh_vel(isnan(tmate_401020_1ulh_vel))=[];
% [h,e]=histcounts(tmate_401020_1ulh_vel/.325,nlog,'Normalization','pdf');
% for i=linspace(1,length(h),length(h))
%     bins(i)=(e(i)+e(i+1))/2;
% end
% plot(bins,h/sum(h))
% trapz(bins,h/sum(h))
%  set(gca,'xscale','log')
%  set(gca,'yscale','log')
%  xlabel('Velocity (pixels/frame)')
%  ylabel('PDF')
%  title('PDF of Speeds for Simulated and Tracked Particles (10x speed)')
%  legend('Simulated Particles 10x','Simulated Particles', 'Tracked Particles')
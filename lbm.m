% % 2D Lattice Boltzmann (BGK) model of a fluid.
% %  c4  c3   c2  D2Q9 model. At each timestep, particle densities propagate
% %    \  |  /    outwards in the directions indicated in the figure. An
% %  c5 -c9 - c1  equivalent 'equilibrium' density is found, and the densities
% %    /  |  \    relax towards that state, in a proportion governed by omega.
% %  c6  c7   c8      Modified from Iain Haslam, February 2018. Laz J. Perez
%% Parameters
% Flow parameters
omega = .3; density = 1000.0; 
% L-B parameters
t1 = 4/9; t2 = 1/9; t3 = 1/36; c_squ = 1/3; 
% Geometry discretization
nx = 512; ny = 512;
% 
F = repmat(density/9,[nx ny 9]); FEQ=F; msize=nx*ny; CI=0:msize:msize*7;
%a=repmat(-15:15,[31,1]);BOUND=(a.^2+a'.^2)<16;BOUND(1:nx,[1 ny])=1;
% Geometry
%BOUND = rand(nx,ny)>0.8; % extremely porous random domain when 0.1
%BOUND = zeros(nx,ny); BOUND(1:nx,1) = 1; BOUND(1:nx,end) = 1; % open channel
%%
% 
% % N_2 = nx;
% % M_2 = zeros(N_2);
% % ii = ceil(N_2/2);
% % M_2(ii+80,ii) = 1;
% % R = 100;
% % BOUND1 = bwdist(M_2) <= R;
% % N_2 = nx;
% % M_2 = zeros(N_2);
% % ii = ceil(N_2/2);
% % M_2(ii+160,ii) = 1;
% % BOUND2 = bwdist(M_2) <= R;
% % N_2 = nx;
% % M_2 = zeros(N_2);
% % ii = ceil(N_2/2);
% % M_2(ii-80,ii) = 1;
% % BOUND3 = bwdist(M_2) <= R;
% % N_2 = nx;
% % M_2 = zeros(N_2);
% % ii = ceil(N_2/2);
% % M_2(ii-160,ii) = 1;
% % BOUND4 = bwdist(M_2) <= R;
% % 
% % N_2 = nx;
% % M_2 = zeros(N_2);
% % ii = ceil(N_2/2);
% % M_2(ii,ii+80) = 1;
% % BOUND17 = bwdist(M_2) <= R;
% % N_2 = nx;
% % M_2 = zeros(N_2);
% % ii = ceil(N_2/2);
% % M_2(ii,ii+160) = 1;
% % BOUND18 = bwdist(M_2) <= R;
% % N_2 = nx;
% % M_2 = zeros(N_2);
% % ii = ceil(N_2/2);
% % M_2(ii,ii-80) = 1;
% % BOUND19 = bwdist(M_2) <= R;
% % N_2 = nx;
% % M_2 = zeros(N_2);
% % ii = ceil(N_2/2);
% % M_2(ii,ii-160) = 1;
% % BOUND20 = bwdist(M_2) <= R;
% % 
% % N_2 = nx;
% % M_2 = zeros(N_2);
% % ii = ceil(N_2/2);
% % M_2(ii+80,ii+80) = 1;
% % BOUND5 = bwdist(M_2) <= R;
% % N_2 = nx;
% % M_2 = zeros(N_2);
% % ii = ceil(N_2/2);
% % M_2(ii+160,ii+80) = 1;
% % BOUND6 = bwdist(M_2) <= R;
% % N_2 = nx;
% % M_2 = zeros(N_2);
% % ii = ceil(N_2/2);
% % M_2(ii-80,ii+80) = 1;
% % BOUND7 = bwdist(M_2) <= R;
% % N_2 = nx;
% % M_2 = zeros(N_2);
% % ii = ceil(N_2/2);
% % M_2(ii-160,ii+80) = 1;
% % BOUND8 = bwdist(M_2) <= R;
% % N_2 = nx;
% % M_2 = zeros(N_2);
% % ii = ceil(N_2/2);
% % M_2(ii+80,ii+160) = 1;
% % BOUND9 = bwdist(M_2) <= R;
% % N_2 = nx;
% % M_2 = zeros(N_2);
% % ii = ceil(N_2/2);
% % M_2(ii+160,ii+160) = 1;
% % BOUND10 = bwdist(M_2) <= R;
% % N_2 = nx;
% % M_2 = zeros(N_2);
% % ii = ceil(N_2/2);
% % M_2(ii-80,ii+160) = 1;
% % BOUND11 = bwdist(M_2) <= R;
% % N_2 = nx;
% % M_2 = zeros(N_2);
% % ii = ceil(N_2/2);
% % M_2(ii-160,ii+160) = 1;
% % BOUND12 = bwdist(M_2) <= R;
% % N_2 = nx;
% % M_2 = zeros(N_2);
% % ii = ceil(N_2/2);
% % M_2(ii+80,ii+-80) = 1;
% % BOUND13 = bwdist(M_2) <= R;
% % N_2 = nx;
% % M_2 = zeros(N_2);
% % ii = ceil(N_2/2);
% % M_2(ii+160,ii-80) = 1;
% % BOUND14 = bwdist(M_2) <= R;
% % N_2 = nx;
% % M_2 = zeros(N_2);
% % ii = ceil(N_2/2);
% % M_2(ii-80,ii-80) = 1;
% % BOUND15 = bwdist(M_2) <= R;
% % N_2 = nx;
% % M_2 = zeros(N_2);
% % ii = ceil(N_2/2);
% % M_2(ii-160,ii-80) = 1;
% % BOUND16 = bwdist(M_2) <= R;
% % 
% % N_2 = nx;
% % M_2 = zeros(N_2);
% % ii = ceil(N_2/2);
% % M_2(ii+80,ii+-160) = 1;
% % BOUND21 = bwdist(M_2) <= R;
% % N_2 = nx;
% % M_2 = zeros(N_2);
% % ii = ceil(N_2/2);
% % M_2(ii+160,ii-160) = 1;
% % BOUND22 = bwdist(M_2) <= R;
% % N_2 = nx;
% % M_2 = zeros(N_2);
% % ii = ceil(N_2/2);
% % M_2(ii-80,ii-160) = 1;
% % BOUND23 = bwdist(M_2) <= R;
% % N_2 = nx;
% % M_2 = zeros(N_2);
% % ii = ceil(N_2/2);
% % M_2(ii-160,ii-160) = 1;
% % BOUND24 = bwdist(M_2) <= R;
% 
% %BOUND=BOUND1%+BOUND2+BOUND3+BOUND4+BOUND5+BOUND6+BOUND7+BOUND8+BOUND9+BOUND10+BOUND11+BOUND12+BOUND13+BOUND14+BOUND15+BOUND16+BOUND17+BOUND18+BOUND19+BOUND20+BOUND21+BOUND22+BOUND23+BOUND24
% 
% % %Use the code below to create bounds with grain sizes of random size
% % N = 512;
% % minr = 20; maxr = 50;
% % maxtries = 100;
% % intcoords = true;
% % sq = zeros(N, N, 'uint8');
% % [X, Y] = ndgrid(1:N, 1:N);
% % nc = 0;
% % iteration = 0;
% % trynum = 0;
% % maxgoodtry = 0;
% % fmt = 'iteration #%d, nc = %d, try #%d';
% % fig = gcf;
% % set(fig, 'Units', 'pixels', 'Position', [0 0 N+30, N+30]);
% % image(sq);
% % colormap(jet(2))
% % axis([0 N+1 0 N+1]);
% % title(sprintf(fmt, iteration, nc, trynum));
% % drawnow();
% % rx = []; ry = []; rr = [];
% % while trynum <= maxtries
% %     iteration = iteration + 1;
% %     if intcoords
% %         r = randi([minr, maxr]);
% %         cxy = randi([r+1, N-r], 1, 2);
% %     else
% %         r = minr + rand(1,1) * (maxr-minr);
% %         cxy = r + 1 + rand(1,2) * (N - 2*r - 1);
% %     end
% %     mask = (X-cxy(1)).^2 + (Y-cxy(2)).^2 <= r^2;
% %     if nnz(sq & mask) > 0
% %         trynum = trynum + 1;
% %     else
% %         sq = sq | mask;
% %         image(sq);
% %         nc = nc + 1;
% %         rx(nc) = cxy(1); ry(nc) = cxy(2); rr(nc) = r;
% %         title(sprintf(fmt, iteration, nc, trynum));
% %         drawnow();
% %         maxgoodtry = max(maxgoodtry, trynum);
% %         trynum = 1;
% %     end
% % end
% % fprintf('finished at iteration %d, hardest success took %d tries\n', iteration, maxgoodtry);
% % fprintf('Number of circles: %d\n', length(rx));
% % BOUND=sq;
% 
% BOUND(1:nx,1) = 1; BOUND(1:nx,end) = 1;
% %BOUND=BOUND'
% ON = find(BOUND); %matrix offset of each Occupied Node
% TO_REFLECT=[ON+CI(1) ON+CI(2) ON+CI(3) ON+CI(4) ...
%             ON+CI(5) ON+CI(6) ON+CI(7) ON+CI(8)];
% REFLECTED= [ON+CI(5) ON+CI(6) ON+CI(7) ON+CI(8) ...
%             ON+CI(1) ON+CI(2) ON+CI(3) ON+CI(4)];
% avu=1; prevavu=1; ts=0; deltaU=.5; numactivenodes=sum(sum(1-BOUND));
% while (ts<1500 & 1e-7<abs((prevavu-avu)/avu)) | ts<100
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
%     avu = sum(sum(UX))/numactivenodes; ts = ts+1, abs((prevavu-avu)/avu), (ts<4000 & 1<abs((prevavu-avu)/avu));
% end
% 
% %% Figure
% 
% % %imagesc(out)
% % %bound=zeros(size(BOUND))
% % fig=figure,
% % colormap(gray(2));
% % %image(bound); hold on,
% % 
% % image(2-BOUND'); hold on,
% % quiver(1:nx,1:ny,UX',UY');
% % title(['Flow field after ',num2str(ts),'\deltat']);
% % xlabel('x'),ylabel('y');
% 
% 
% % x=0:nx
% % y=0:ny
% % 
% % %figure
% % s=streamslice(x,y,UX',UY')
% % N_trajects = length(s); % the number of all trajectories
% % X_traject=[]
% % Y_traject=[]
% % Traject=[]
% % for n = 1:90; % the chosen trajectory
% %     X_traject = s(n).XData
% %     Y_traject = s(n).YData
% %     x_traj=[x_traj;{X_traject}]
% %     y_traj=[y_traj;{Y_traject}]
% % 
% % end
% % UX(2:nx,:)
% % set(gca, 'BoxStyle', 'full', 'Box', 'on')
[x,y]=meshgrid(1:512,1:512)
[sx, sy]=meshgrid(10,10:10:510 );
verts=stream2(x,y,UX',UY', sx, sy);
iverts=interpstreamspeed(x,y,UX',UY',verts,.2)

% sl=streamline(iverts);
% %set(sl,'Visible','off')
% set(gca, 'SortMethod', 'childorder');
% set(sl,'Marker','.');
% set(gca,'DrawMode','fast');
% axis tight;
% set(gcf,'Position',[50 0 800 800])
% 
% % myVideo = VideoWriter('myVideoFile'); %open video file
% % myVideo.FrameRate = 50;  %can adjust this, 5 - 10 works well for me
% % open(myVideo)
% M=streamparticles(iverts,4,...
%     'Animate',2,...
%     'FrameRate',100,...
%     'ParticleAlignment','on',...
%     'MarkerEdgeColor','none',...
%     'Marker','o', 'MarkerSize', 6)

% %% Plot in a loop and grab frames
% pause(0.1) %Pause and grab frame
% frame1 = getframe(gcf); %get frame

%writeVideo(myVideo, M);
% close(myVideo)

%writeAnimation(fig, 'test.avi')
%movie(M,2,30)
%movie2avi(M, 'mymovie.avi', 'fps',30,'compression', 'None')
%
% Compare to Analytical solution
% vmap = U_SQU';
% yEval = linspace(-1,1,ny); yy = yEval; 
% vp = vmap(:,1);
% v = vel(max(vp),2,yEval(end),yEval);
%f=figure, 
% plot(yEval,v,yy,vp,'o'), legend('Analytical Solution','LB Method')
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


%grid on
%hAxes([0 512 0 512])
%set(gcf,  'position', [1 1 512 512]);
figure;
%box off

%xlim([1 nx])
%ylim([1 ny])
axis equal
hAxes = gca;

set(hAxes,'dataAspectRatio',[1 1 1])
imshow(~BOUND'); 
%set(gca,'PaperUnits','inches','PaperPosition',[0 0 5.12 5.12])

%set(hAxes, 'SortMethod', 'childorder');
%set(hAxes,'DrawMode','fast');

%myVideo = VideoWriter('myVideoFile.avi', 'Motion JPEG AVI'); %open video file
%myVideo.Quality=100;
%myVideo.FrameRate = 60;  %can adjust this, 5 - 10 works well for me
%MyVideo.Height=512;
%MyVideo.Width=512;
folder='C:\Users\marcb\Desktop\lbm_sim_test\';
set(gcf,'Units','pixels','Position',[100 100 512 512])
%set(hAxes,'visible','off')
set(hAxes,'xtick',[])
set(hAxes,'xticklabel',[])
set(hAxes,'ytick',[])
set(hAxes,'yticklabel',[])
set(hAxes,'Units','pixels','InnerPosition',[1 1 512 512])
hAxes.XAxis.Limits=[1 512]
hAxes.YAxis.Limits=[1 512]
%open(myVideo)

%use print function to save video as series of JPEG images with high
%quality
%Add some variation to the color of the figure
for i=1:length(xc)
    hLine(i) = animatedline(hAxes, 'Marker', 'o', 'MarkerSize',1);
    %hText(i) = text(hAxes,NaN,NaN,num2str(i),'VerticalAlignment','bottom');
end
r = randi([1 51],3,length(xc));
%maxtime = max(horzcat(S(:).T));
for t = 1:1:500
    
    for i=1:length(xc)
        clearpoints(hLine(i))
        idr = find(tc{r(i),1}==t,1,'first');
        idx = find(tc{i,1}==t,1,'first');
        if ~isempty(idx)
            if idx<=length(xc{i,1})
                x = xc{i,1}(idx);
                y = yc{i,1}(idx);
                rx=xc{r(:,i),1};
                ry=yc{r(:,i),1};
                r_x=rx{i,1}(idr);
                
                if mod(idx,3)~=1
                    addpoints(hLine(i),x,y);
                else
                    addpoints(hLine(i),rx,ry);
                end
            end
        end
    end
    drawnow
    exportgraphics(hAxes, [folder,sprintf('Fig_%d.jpg', t)],'Resolution',500)
    
    %frame = getframe(hAxes); %get frame
    %exportgraphics(hAxes,'barchartaxes.png','Resolution',512)
    %writeVideo(myVideo, frame);
end
%close(myVideo)
%C=reshape([x y t].',[],1);

% writecell(yc, 'yc_one_grain.csv')
% writecell(xc, 'xc_one_grain.csv')



% end
% % myVideo = VideoWriter('myVideoFile'); %open video file
% % myVideo.FrameRate = 50;  %can adjust this, 5 - 10 works well for me
% % open(myVideo)
% M=streamparticles(iverts,4,...
%     'Animate',2,...
%     'FrameRate',100,...
%     'ParticleAlignment','on',...
%     'MarkerEdgeColor','none',...
%     'Marker','o', 'MarkerSize', 6)

% %% Plot in a loop and grab frames
% pause(0.1) %Pause and grab frame
% frame1 = getframe(gcf); %get frame

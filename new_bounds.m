% 2D Lattice Boltzmann (BGK) model of a fluid.
%  c4  c3   c2  D2Q9 model. At each timestep, particle densities propagate
%    \  |  /    outwards in the directions indicated in the figure. An
%  c5 -c9 - c1  equivalent 'equilibrium' density is found, and the densities
%    /  |  \    relax towards that state, in a proportion governed by omega.
%  c6  c7   c8      Modified from Iain Haslam, February 2018. Laz J. Perez
%% Parameters
% Flow parameters
omega = .1; density = 100.0; 
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


N = 512;
minr = 22; maxr = 38;
maxtries = 20;
intcoords = true;
sq = zeros(N, N, 'uint8');
[X, Y] = ndgrid(1:N, 1:N);
nc = 0;
iteration = 0;
trynum = 0;
maxgoodtry = 0;
fmt = 'iteration #%d, nc = %d, try #%d';
fig = gcf;
set(fig, 'Units', 'pixels', 'Position', [0 0 N+30, N+30]);
image(sq);
colormap(jet(2))
axis([0 N+1 0 N+1]);
title(sprintf(fmt, iteration, nc, trynum));
drawnow();
rx = []; ry = []; rr = [];
while trynum <= maxtries
    iteration = iteration + 1;
    if intcoords
        r = randi([minr, maxr]);
        cxy = randi([r+5, N-r], 1, 2);
    else
        r = minr + rand(1,1) * (maxr-minr);
        cxy = r + 1 + rand(1,2) * (N - 2*r - 1);
    end
    mask = .3*(X-cxy(1)).^2 + .3*(Y-cxy(2)).^2 <= r^2;
    if nnz(sq & mask) > 0
        trynum = trynum + 1;
    else
        sq = sq | mask;
        image(sq);
        nc = nc + 1;
        rx(nc) = cxy(1); ry(nc) = cxy(2); rr(nc) = r;
        title(sprintf(fmt, iteration, nc, trynum));
        drawnow();
        maxgoodtry = max(maxgoodtry, trynum);
        trynum = 1;
    end
end
fprintf('finished at iteration %d, hardest success took %d tries\n', iteration, maxgoodtry);
fprintf('Number of circles: %d\n', length(rx));


BOUND=sq;
BOUND(1,1:nx) = 1; BOUND(end,1:nx) = 1;
%BOUND=BOUND'
ON = find(BOUND); %matrix offset of each Occupied Node
TO_REFLECT=[ON+CI(1) ON+CI(2) ON+CI(3) ON+CI(4) ...
            ON+CI(5) ON+CI(6) ON+CI(7) ON+CI(8)];
REFLECTED= [ON+CI(5) ON+CI(6) ON+CI(7) ON+CI(8) ...
            ON+CI(1) ON+CI(2) ON+CI(3) ON+CI(4)];
avu=1; prevavu=1; ts=0; deltaU=.9; numactivenodes=sum(sum(1-BOUND));
while (ts<6000 & 1e-10<abs((prevavu-avu)/avu)) | ts<100
    % Propagate
    F(:,:,4)=F([2:nx 1],[ny 1:ny-1],4);F(:,:,3)=F(:,[ny 1:ny-1],3);
    F(:,:,2)=F([nx 1:nx-1],[ny 1:ny-1],2);F(:,:,5)=F([2:nx 1],:,5);
    F(:,:,1)=F([nx 1:nx-1],:,1);F(:,:,6)=F([2:nx 1],[2:ny 1],6);
    F(:,:,7)=F(:,[2:ny 1],7); F(:,:,8)=F([nx 1:nx-1],[2:ny 1],8);
    BOUNCEDBACK = F(TO_REFLECT); %Densities bouncing back at next timestep
    DENSITY = sum(F,3);
    UX = (sum(F(:,:,[1 2 8]),3)-sum(F(:,:,[4 5 6]),3))./DENSITY;
    UY = (sum(F(:,:,[2 3 4]),3)-sum(F(:,:,[6 7 8]),3))./DENSITY;
    UX(1,1:ny) = UX(1,1:ny)+deltaU; %Increase inlet pressure
    UX(ON) = 0; UY(ON) = 0; DENSITY(ON) = 0;
    U_SQU = UX.^2+UY.^2; U_C2=UX+UY; U_C4=-UX+UY; U_C6=-U_C2; U_C8=-U_C4;
    % Calculate equilibrium distribution: stationary
    FEQ(:,:,9) = t1*DENSITY.*(1-U_SQU/(2*c_squ));
    % nearest-neighbours
    FEQ(:,:,1) = t2*DENSITY.*(1+UX/c_squ+0.5*(UX/c_squ).^2-U_SQU/(2*c_squ));
    FEQ(:,:,3) = t2*DENSITY.*(1+UY/c_squ+0.5*(UY/c_squ).^2-U_SQU/(2*c_squ));
    FEQ(:,:,5) = t2*DENSITY.*(1-UX/c_squ+0.5*(UX/c_squ).^2-U_SQU/(2*c_squ));
    FEQ(:,:,7) = t2*DENSITY.*(1-UY/c_squ+0.5*(UY/c_squ).^2-U_SQU/(2*c_squ));
    % next-nearest neighbours
    FEQ(:,:,2) = t3*DENSITY.*(1+U_C2/c_squ+0.5*(U_C2/c_squ).^2-U_SQU/(2*c_squ));
    FEQ(:,:,4) = t3*DENSITY.*(1+U_C4/c_squ+0.5*(U_C4/c_squ).^2-U_SQU/(2*c_squ));
    FEQ(:,:,6) = t3*DENSITY.*(1+U_C6/c_squ+0.5*(U_C6/c_squ).^2-U_SQU/(2*c_squ));
    FEQ(:,:,8) = t3*DENSITY.*(1+U_C8/c_squ+0.5*(U_C8/c_squ).^2-U_SQU/(2*c_squ));
    F = omega*FEQ+(1-omega)*F;
    F(REFLECTED) = BOUNCEDBACK;
    prevavu = avu;
    avu = sum(sum(UX))/numactivenodes; ts = ts+1, abs((prevavu-avu)/avu), (ts<4000 & 1<abs((prevavu-avu)/avu))
end


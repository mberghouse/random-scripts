%This program computes the hydraulic gradient and specific discharge
%components for a simple 2D groundwater flow field using any number of
%measurements of hydraulic head
%Set Kmin and Kmax to acheive desired Kxx and Kyy values
clear al
m=[1,.5,1;
    6,3,1;
    4,2,1;
    8,4,1;
    20,10,1];
h=[1,6,4,8,20];
a=pinv(m)*h.';
mag=sqrt(a(1)^2+a(2)^2);
angle=atan(a(1)/a(2))*180/pi;
dhdx=a(1);
dhdy=a(2);
Kmax=6e-2;
Kmin=4e-2;

Kxx=Kmax*cos(angle)^2+Kmin*sin(angle)^2;
Kyy=Kmax*sin(angle)^2+Kmin*cos(angle)^2;
Kxy=(Kmax-Kmin)*sin(angle)*cos(angle);

qx=-Kxx*dhdx-Kxy*dhdy;
qy=-Kyy*dhdy-Kxy*dhdx;
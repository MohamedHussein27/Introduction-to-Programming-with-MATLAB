function out=assignment_A
R=500;
r=100;
delta_r=50;
delta_r=[1:15];
R1=R;
R2=R;
R3=R;
R4=R;
V=10;
Va=V*((R3+r)/(R1+R3+r));
Vb=V*((R4+r+delta_r)./(R4+r+delta_r+R2));
delta_v=Va-Vb;
out=plot(delta_r,delta_v);
 
title('delta_r versus delta_v')
xlabel('values of delta r');
ylabel('values of delta v');
title('delta r versus delta v')

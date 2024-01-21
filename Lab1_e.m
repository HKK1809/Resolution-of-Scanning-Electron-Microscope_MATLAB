% Plot how the emission current changes with tip radius from 10nm to 1μm for a
% fixed extraction voltage of 2.0kV

% cahnge current density 

me = 9.109*power(10,-31);
h  =  6.62607*power(10,-34);
k  = 1.380*power(10,-23);
T  = 293;
q  = 1.602*power(10,-19);
wf = 2.65*q;
mm = 10^(-6);
r = linspace(1e-8,1e-6,1000);
% r  = rr.*mm; 
V  = 2000;
E  = V./r;

a  = ((q^3)*me)/(8*pi*h*me);
pp = ((4*2*pi)/(3*h*q))*power(2*me,0.5)*power(wf,1.5)./E;
J  = (a/wf).*(E.^2).*exp(-pp);
semilogy (r,J)
title('Current Density of a CeB6 coated Field Emission Electron gun WRT Tip Radius')
xlabel('Radius (m)')
ylabel('Current Density (A/m^2)')
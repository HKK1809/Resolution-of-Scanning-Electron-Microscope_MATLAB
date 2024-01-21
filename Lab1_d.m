% Calculate and plot the current density, Jfe, for a CeB 6 coated field emission electron
% gun having a tip radius of 50nm as a function of extraction voltage V (0 to 2.0kV).
% Assume RT operation and that the work function is as given in (a).

me = 9.109*power(10,-31);
h  =  6.62607*power(10,-34);
k  = 1.380*power(10,-23);
T  = 293;
q  = 1.602*power(10,-19);
wf = 2.65*q;
r  = 50*power(10,-9);
V  = linspace(0, 2000, 100);
E  = V./r;
a  = ((q^3)*me)/(8*pi*h*me);
pp = ((4*2*pi)/(3*h*q))*power(2*me,0.5)*power(wf,1.5)./E;
J  = (a/wf).*(E.^2).*exp(-pp);
plot(V,J)
title('Current Density of a CeB6 coated Field Emission Electron gun WRT Potential')
xlabel('Potential (V)')
ylabel('Current Density (A/m^2)')
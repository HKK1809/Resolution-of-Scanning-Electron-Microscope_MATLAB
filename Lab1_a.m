% This File is to plot the current density of a cerium hexaboride coated
% electron gun vs temerature

me = 9.109*power(10,-31);
q  = 1.602*power(10,-19);
h  =  6.62607*power(10,-34);
k  = 1.380*power(10,-23);
wf = 2.65*q;
e  = 2.718281828459045;
T  = linspace(293,2000, 100);
wk = linspace(1,100,1);
J  = linspace(1,100,1);
pp = linspace(1,100,1);

J = (4*pi*me*q/(h^3)).*((k*T).^2).*exp(-wf./(k.*T));
plot(T,J)
title('Current Density of a Cerium Hexaboride coated SEM WRT Temperature')
xlabel('Temperature (K)')
ylabel('Current Density (A/m^2)')
%[t,j] = meshgrid(T,J);
%z = linspace(1,100,1);
%surf(t,j,z)









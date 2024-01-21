% Plot a 3-D representation of the relative number of electrons vs electron energy
% vs temperature for the conditions given in (a) above and an acceleration
% potential of Va = 10kV

q  = 1.602*power(10,-19);
k  = 1.380*power(10,-23);
wf = 2.65*q;
T  = linspace(293,2000, 100);

dE = linspace(wf,1.3*wf, 100);
[dde, tt] = meshgrid(dE,T);

f = linspace(1,100,1);
f = 1./(1+exp(dde./(k.*tt)));
% Normalizing fermi destribution
fnorm= f./sum(f,2);
surf(dde,tt,fnorm)
title('Realtionship of Electron Energy and Relative Number of Electrons with Temperature')
xlabel('Electron Energy (Joules)')
ylabel('Temperature (K)')
zlabel('Relative Number of Electrons')

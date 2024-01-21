% How would the results in (f) change if we were using a focused ion beam microscope
% with protons (H+ ions) instead of electrons? Recalculate and plot the resolution for the
% same energies as in (f).

V  =linspace(100,100000, 100000);
mp = 1.67262192*power(10,-27);
h  =  6.62607*power(10,-34);
q  = 1.602*power(10,-19);
Wlength = h./power(2*mp*q.*V,0.5);
R = 0.61.*Wlength./0.001;
semilogx(V,R)
title('Rayleigh Criterion of an SEM based on Accelaration Potential (Using Hydrogen Ions)')
xlabel('Acceleration Potential (V)')
ylabel('Rayleigh Criterion')
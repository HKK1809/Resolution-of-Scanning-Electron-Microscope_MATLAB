% Assuming the electrons are “monochromatic” and the system is “diffraction-limited”
% calculate and plot the resolution (using the Rayleigh criteria) of the microscope on a
% semilog plot as function of acceleration voltage from 100V to 100kV.

V  =linspace(100,100000, 100000);
me = 9.109*power(10,-31);
h  =  6.62607*power(10,-34);
q  = 1.602*power(10,-19);
Wlength = h./power(2*me*q.*V,0.5);
R = 0.61.*Wlength./0.001;
plot(V,R)
title('Rayleigh Criterion of an SEM based on Accelaration Potential')
xlabel('Acceleration Potential (V)')
ylabel('Rayleigh Criterion')



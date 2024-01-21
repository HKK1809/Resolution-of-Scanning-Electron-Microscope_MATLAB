% If other factors are neglected, the full-width half-maximum (FWHM) diameter of
% the focused electron spot on the sample may be limited due to chromatic
% aberration. Calculate and plot the electron beam spot size, dchrom, for parameters
% given in (a) and (b) if the SEM has a chromatic aberration coefficient of
% C chrom=2.0mm.

q  = 1.602*power(10,-19);
k  = 1.380*power(10,-23);
wf = 2.65*q;
T  = linspace(293,2000, 100);

dE = linspace(wf,1.3*wf, 100);
[dde, tt] = meshgrid(dE,T);

f = linspace(1,100,1);
f = 1./(1+exp(dde./(k.*tt)));
fnorm= f./sum(f,2);

[ee,ff] = meshgrid(dE,fnorm);
Fmax = max([ee,ff]);
Fmaxhalf = Fmax/2;

Em = dE.*ff;
Emean = sum(Em);








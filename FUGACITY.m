clear all; close all; clc;
Psat = 0.004 ; %bar from sublimation pressure at -5 deg C
sg = 0.915 ; %specific gravity of ice
density = 1000*sg ; % kg/m3
mol_wt = 18 ; % kg/kmol
V = mol_wt/(1000*density) ; %specific volume in m3/mol , divide by 1000 to convert kmol to mol
T = 268 % Kelvin
R = 8.314 % SI units
P1 = 1 ; % bar 1megapascal=10 bar
P2 = 1000 ; %bar
dP = 0.01 ; % bar (increment of pressure as given in the question in the text file
n = (P2-P1)/dP
P = (P1:dP:P2); % Pressure vector ranging from P1 to P2 with a step size of dP.
for i =1:(n+1)
f(i) = Psat*exp(V*(P(i)-Psat)*10^5/R/T); % bar, multipied by 10^5 to convert bar to Pa
fc(i) = f(i)/P(i);
end
subplot(2,1,1) %no of rows=2 no of columns=1 sets the current subplot to be the first one (top subplot).
plot(P,f,'rx-')
title('Fugacity of ice vs Pressure at -5 deg C')
xlabel('P(bar)')
ylabel('f(bar)')
subplot(2,1,2)
plot(P,fc,'rx-')
title('Fugacity coefficient of ice vs Pressure at -5 deg C')
xlabel('P(bar)')
ylabel('fc')


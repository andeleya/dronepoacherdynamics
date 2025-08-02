% Matlab plots
Rad = [25,50,75,100];
ProbSqArea1 = [24.25,25.94,29.26,30.65];
ProbSqArea2 = [25.36,28.49,31.09,31.63];
ProbSqArea3 = [27.06,30.16,33.14,34.10];
ProbSqArea4 = [31.31,33.15,36.28,37.48];
Radi = linspace(min(Rad), max(Rad), 10);        % Evenly-Spaced Interpolation Vector
ProbSqArea4i = interp1(Rad, ProbSqArea4, Radi, 'pchip');

figure;
grid on;
hold on;
%axis equal;
title('Probability v. Drone FoV (speed ratio: 3)');
xlabel('Drone FoV [m]');
ylabel('Probability [%]');
plot(Rad,ProbSqArea1,'-og','LineWidth',2);
hold on
plot(Rad,ProbSqArea2,'-squareb','LineWidth',2);
hold on
plot(Rad,ProbSqArea3,'-+k','LineWidth',2);
hold on
%plot(Rad,ProbSqArea4,'Radi','pchip');
plot(Radi,ProbSqArea4i,'-xr','LineWidth',2);
legend('1000m sq.','750m sq.','500m sq.','250m sq.','location','northwest');
hold off
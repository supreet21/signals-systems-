t = 0:.02:4;
y = zeros(10,length(t));
x = zeros(size(t));
for k = 1:2:15
   x = x + sin(k*t)/k;
   y((k+1)/2,:) = x;
end
plot(y(1:2:9,:)')
title('The building of a square wave: Gibbs'' effect')
hold on;
% surf(y);
% shading interp
% axis off ij
grid on
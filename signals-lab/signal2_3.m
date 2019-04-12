t = -20:0.1:20;
%fun_x1 = @x x*cos(x);
x1 = t.*cos(t);
t2 = 2*t;
x1_2 = t2.*cos(t2);
xc = sum1(x1)+sum1(x1_2);
x13 = sum1(t.*cos(t)+t*2.*cos(t*2));
disp('1st system');
if(xc == x13)
    disp('linear');
else
    disp('non-linear');
end

x2 = sin(t).^2;
%t2 = 2*t;
x2_2 = sin(t2).^2;
xc2 = sum1(x2)+sum1(x2_2);
x23 = sum1(t.*cos(t)+t*2.*cos(t*2));
disp('2nd system');
if(xc2 == x23)
    disp('linear');
else
    disp('non-linear');
end
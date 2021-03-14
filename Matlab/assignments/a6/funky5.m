function dydt = funky5(t,y)
% dydt = zeros(3,1);    % this creates an empty column 
% %vector that you can fill with your 3 derivatives:
% dydt(1) = y(2);
% dydt(2) = y(3);
% dydt(3) = 5*y(3) + 22*y(2) - 56*y(1);


dydt = [y(2);y(3);5*y(3) + 22*y(2) - 56*y(1)];
end
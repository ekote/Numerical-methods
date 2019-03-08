%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%         TODOR VACHEV         %%%%%%
%%%%%%% TECHNICAL UNIVERSITY - VARNA %%%%%%
%%%%%%%         MARCH, 2015          %%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

clc, clear, close all

%% Variables Initialization
step = 30;                         %steps between min/max angle

t1sa = -pi / 4; t1ea = pi / 1.5;   %start-end angle for theta1 (azimuth) 
step1 = abs(t1sa - t1ea) / step;   %   
theta1 = t1sa:step1:t1ea;          %vector with values for theta1 (azimuth)

p1sa = -pi / 2; p1ea = pi / 2;     %start-end angle for phi1 (elevation)          
step11 = abs(p1sa - p1ea) / step;  %   
phi1 = p1sa:step11:p1ea;           %vector with values for for phi1 (elevation)

t3sa = 0; t3ea = 2 * pi;           %variables for the sphere around point C      
step3 = abs(t3sa - t3ea) / step;   %
theta3 = t3sa:step3:t3ea;          %
p3sa = 0; p3ea = 2 * pi;           %
step33 = abs(p3sa - p3ea) / step;  %
phi3 = p3sa:step33:p3ea;           %

rxO=0; ryO=0; rzO=2;         %coordinates of the center of point O (the base)
rxC=40; ryC=40; rzC=6;       %coordinates of the desired end point C         
r1=10;  r2=43;  r3=10;       %length of bar 1, bar 2 and bar 3

xOyLimStart1 = -pi / 2; xOyLimEnd1 = pi / 2; %rotation limitations of joint 1 (point A)
yOzLimStart1 = -pi / 2; yOzLimEnd1 = pi / 2;

xOyLimStart2 = -pi / 2; xOyLimEnd2 = pi / 2; %rotation limitations of joint 2 (point B)
yOzLimStart2 = -pi / 2; yOzLimEnd2 = pi / 2;
error = 0.001;                %allowed +- error of the position

z = 0;                        %counter variable for the coords matrix (to keep track of the current row)
coords = zeros(step^4, 10);   %matrix where all viable coordinates will be stored
%% Finding All Accessible Points of Joint 1 and Joint 2
[theta1, phi1] = meshgrid(theta1, phi1);     %crunching some numbers to get
[xA, yA, zA] = sph2cart(theta1, phi1, r1);   %the X Y Z coordinates of all accessible
xA = xA + rxO; yA = yA + ryO; zA = zA + rzO; %points by joint 1 (point A)
 
[theta3, phi3] = meshgrid(theta3, phi3);     %crunching some numbers to get
[xB, yB, zB] = sph2cart(theta3, phi3, r3);   %the X Y Z coordinates of all accessible
xB = xB + rxC; yB = yB + ryC; zB = zB + rzC; %points by joint 2 (point B)
 
%% Plots and Cosmetics
sp1surf = surf(xA, yA, zA);         %plot the possible positions of the end point of bar 1 (point A) 
hold on                             %
sp3surf = surf(xB, yB, zB);         %and bar 2 (point B)
set(sp1surf, 'FaceColor', 'red');   %color of the surface with points for joint 1
set(sp3surf, 'FaceColor', 'green'); %color of the surface with points for joint 2
alpha(0.2)                          %transperancy
grid on                             %
axis([-(r1 + r2 + r3 + 5) - 5, r1 + r2 + r3 + 5 -(r1 + r2 + r3 + 5) - 5, r1 + r2 + r3 + 5 -(r1 + r2 + r3 + 5) - 5, r1 + r2 + r3 + 5])  % axis limitations
plot3([-(r1 + r2 + r3 + 5) - 5, r1 + r2 + r3 + 5, 0], [0, 0, 0], [0, 0, 0], 'black', 'LineWidth', 2)          % X axis - cosmetic line
plot3([0, 0, 0], [-(r1 + r2 + r3 + 5) - 5, r1 + r2 + r3 + 5, 0], [0, 0, 0], 'black', 'LineWidth', 2)          % Y axis - cosmetic line
plot3([0, 0, 0], [0, 0, 0], [-(r1 + r2 + r3 + 5) - 5, r1 + r2 + r3 + 5, 0], 'black', 'LineWidth', 2)          % Z axis - cosmetic line
plot3([rxO, rxC], [ryO, ryC], [rzO, rzC], 'oblack', 'MarkerSize', 12, 'MarkerFaceColor', 'white', 'LineWidth', 2)% Point O and Point C - cosmetic
xlabel('X AXIS'); ylabel('Y AXIS'); zlabel('Z AXIS')

%% The Magic

for nz = 1:(size(xA, 2))             %iteration over the Z coordinates of joint 1
    for n = 1:(size(xA, 2))          %iteration over the X, Y coordinates of joint 1
        for iz = 1:(size(xA, 2))     %iteration over the Z coordinates of joint 2
            for i = 1:(size(xA, 2))  %iteration over the X, Y coordinates of joint 2
                dist = sqrt(((xB(iz, i) - xA(nz, n))^2) + ((yB(iz, i) - yA(nz, n))^2) + ((zB(iz) - zA(nz))^2)); %calculate the distance between current points
                
 %% The Check
                if (dist > r2 && dist < r2 + error) || (dist < r2 && dist > r2 - error)    %check if the length is equal to the length of bar 2 within the allowed error
                     [result, anglexOy1, angleyOz1] = thecheck([xA(nz, n) - rxO, yA(nz, n) - ryO, zA(nz) - rzO], ...       %%%THE CHECK IS HAPPENING IN FILE-FUNCTION
                         [(xB(iz, i) - xA(nz, n)), yB(iz, i) - yA(nz, n), (zB(iz) - zA(nz))], ...                          %%%
                         xOyLimStart1, xOyLimEnd1, yOzLimStart1, yOzLimEnd1);                                        %%%             thecheck.m
                     if (result == 1)                                                                                %%%             
                         [result, anglexOy2, angleyOz2] = thecheck([(xB(iz, i) - xA(nz, n)), yB(iz, i) - yA(nz, n), ...  %%%PLEASE CHECK THIS FILE FOR BETTER 
                             (zB(iz) - zA(nz))], [rxC - xB(iz, i), ryC - yB(iz, i), rzC - zB(iz)],...                  %%%UNDERSTANDING OF WHAT THE CHECK 
                             xOyLimStart1, xOyLimEnd1, yOzLimStart1, yOzLimEnd1);                                    %%%ACTUALLY DOES
                         if (result == 1)                                                                            %%%
                            plot3([xA(nz, n), xB(iz, i)], [yA(nz, n), yB(iz, i)], [zA(nz), zB(iz)], 'red', 'LineWidth', 2) %plot the position of bar 2
                            plot3([rxO, xA(nz, n)], [ryO, yA(nz, n)], [rzO, zA(nz)] , 'blue', 'LineWidth', 2)               %plot the position of bar 1
                            plot3([xB(iz, i), rxC], [yB(iz, i), ryC], [zB(iz), rzC] , 'magenta', 'LineWidth', 2)            %plot the position of bar 3
                            plot3([xA(nz, n), xB(iz, i)], [yA(nz, n) yB(iz, i)], [zA(nz), zB(iz)], 'oblack',...
                            'MarkerSize', 8, 'MarkerFaceColor', 'white', 'LineWidth', 2) %plot the corresponding A and B points
                            z = z+1;                        %counter for the coords matrix rows
                            coords(z , 1) = xA(nz, n);      %save the X, Y, Z coordinates of point A
                            coords(z , 2) = yA(nz, n);      %and the corresponding angles
                            coords(z , 3) = zA(nz);         %
                            coords(z , 4) = anglexOy1;      %
                            coords(z , 5) = angleyOz1;      %
                            coords(z , 6) = xB(iz, i);      %save the X, Y, Z coordinates of point B
                            coords(z , 7) = yB(iz, i);      %and the corresponding angles
                            coords(z , 8) = zB(iz);         %
                            coords(z , 9) = anglexOy2;      %
                            coords(z , 10)= angleyOz2;      %
                            pause(0.0001)                   %enable or disable this row for animation (disabled = faster calculations)
                        end
                    end
                end            
            end
        end
    end
end

coords = coords(1:z, 1:10); %clear all unneeded preallocated rows
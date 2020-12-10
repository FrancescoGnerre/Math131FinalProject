clc; close all; clear variables;
%% This file is set up to test your code.

N = 10000;
% Number of divisions (for N+1 intervals)

% f(x,y) is needed as input

%% TEST CASES GO HERE
for q = 1:6
    % for q = 1 to number of tests
    % Loop ONLY sets which funtion set is the test case
    switch q
        case 1
            % tests case 1, x+y
            % 0<=x<=3
            % 1<=y<=4
            
            f = @(x,y)x+y;
            %function
            ax=0;
            %starting point x
            ay=1;
            %starting point y
            bx=3;
            %ending point x
            by=4;
            %ending point y
            
            fprintf('For case 1 f(x,y) = x+y, 0<=x<=3, 1<=y<=4, answer should be near 36\n');
            % appriximate answer of the double integral
        case 2
            % tests case 2, x^2-y^3
            % 0<=x<=1
            % 0<=y<=1
            
            f = @(x,y)x^2-y^3;
            %function
            ax=0;
            %starting point x
            ay=0;
            %starting point y
            bx=1;
            %ending point x
            by=1;
            %ending point y
            
            fprintf('For case 2 f(x,y) = x^2-y^3, 0<=x<=1, 0<=y<=1, answer should be near 0.0833\n');
            % appriximate answer of the double integral
        case 3
            % tests case 3, x*y
            % -2<=x<=4
            % -3<=y<=6
            
            f = @(x,y)x*y;
            %function
            ax=-2;
            %starting point x
            ay=-3;
            %starting point y
            bx=4;
            %ending point x
            by=6;
            %ending point y
            
            fprintf('For case 3 f(x,y) = x*y, -2<=x<=4, -3<=y<=6, answer should be near 81\n');
            % appriximate answer of the double integral
        case 4
            % tests case 4, x*sin(2x)+y^4
            % -pi/3<=x<=2pi
            % -1<=y<=2
            
            f = @(x,y)x*sin(2*x)+y^4;
            %function
            ax=-pi/3;
            %starting point x
            ay=-1;
            %starting point y
            bx=2*pi;
            %ending point x
            by=2;
            %ending point y
           
            fprintf('For case 4 f(x,y) = x*sin(2x)+y^4, -pi/3<=x<=2pi, -1<=y<=2 answer should be near 40.3907\n');
            % appriximate answer of the double integral
        case 5
            % tests case 5, cos(xy)
            % 0<=x<=pi
            % -2pi<=y<=2pi
            
            f = @(x,y)cos(x*y);
            %function
            ax=0;
            %starting point x
            ay=-2*pi;
            %starting point y
            bx=pi;
            %ending point x
            by=2*pi;
            %ending point y
            
            fprintf('For case 5 f(x,y) = cos(x*y), 0<=x<=pi, -2pi<=y<=2pi, answer should be near 3.0742\n');
            % appriximate answer of the double integral
        case 6
            % tests case 6, cos(x)*sin(x)*2^-2y
            % pi/3<=x<=7pi/3
            % 0<=y<=1
            
            f = @(x,y)cos(x)*sin(x)*2^(-2*y);
            %function
            ax=pi/3;
            %starting point x
            ay=0;
            %starting point y
            bx=7*pi/3;
            %ending point x
            by=1;
            %ending point y
            
            fprintf('For case 6 f(x,y) = cos(x)*sin(x)*2^-2y, pi/3<=x<=7pi/3, 0<=y<=1 answer should be near 0\n');
            % appriximate answer of the double integral
    end
    
    
    % here, we check each of 6 test cases against both functions
    composite_midpoint_rule = compMid2(f, ax, ay, bx, by, N)
    cm(q)= composite_midpoint_rule;
    % m is the composite midpoint function over a double integral
    % midpoint should be interpited as the geometric centre of a section
     composite_trapezoidal_rule = compTrap2(f, ax, ay, bx, by, N)
     ct(q) = composite_trapezoidal_rule;
    % t is the composite trapezoidal rule over a double integral
    % trapezoid should be interprted as the average of a sectoin
end

cm
cq
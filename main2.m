clc; close all; clear variables;
%% This file is set up to test your code.

N = 10000;
% Number of divisions (for N+1 intervals)

%% TEST CASES GO HERE
for q = 1:6
    % for q = 1 to number of tests
    % Loop ONLY sets which funtion set is the test case
    switch q
        case 1
            % tests case 1, a quarter circle with radius 1 in the first quadrant
            
            fxu = @(t,y)2;
            % upper limit of X function
            fxl = @(t,y)1;
            % lower limit of X function
            fyu = @(t,x)2;
            % upper limit of Y function
            fyl = @(t,x)1;
            % lower limit of Y function
            
            fprintf('Answer should be near 0.7854\n');
            % appriximate answer of the double integral
        case 2
            % tests case 2, TBD
            
            fxu = @(t,y)2;
            % upper limit of X function
            fxl = @(t,y)1;
            % lower limit of X function
            fyu = @(t,x)2;
            % upper limit of Y function
            fyl = @(t,x)1;
            % lower limit of Y function
            
            fprintf('Answer should be near 0\n');
            % appriximate answer of the double integral
        case 3
            % tests case 3, TBD
            
            fxu = @(t,y)2;
            % upper limit of X function
            fxl = @(t,y)1;
            % lower limit of X function
            fyu = @(t,x)2;
            % upper limit of Y function
            fyl = @(t,x)1;
            % lower limit of Y function
            
            fprintf('Answer should be near 0\n');
            % appriximate answer of the double integral
        case 4
            % tests case 4, TBD
            
            fxu = @(t,y)2;
            % upper limit of X function
            fxl = @(t,y)1;
            % lower limit of X function
            fyu = @(t,x)2;
            % upper limit of Y function
            fyl = @(t,x)1;
            % lower limit of Y function
            
            fprintf('Answer should be near 0\n');
            % appriximate answer of the double integral
        case 5
            % tests case 5, TBD
            
            fxu = @(t,y)2;
            % upper limit of X function
            fxl = @(t,y)1;
            % lower limit of X function
            fyu = @(t,x)2;
            % upper limit of Y function
            fyl = @(t,x)1;
            % lower limit of Y function
            
            fprintf('Answer should be near 0\n');
            % appriximate answer of the double integral
        case 6
            % tests case 6, TBD
            
            fxu = @(t,y)2;
            % upper limit of X function
            fxl = @(t,y)1;
            % lower limit of X function
            fyu = @(t,x)2;
            % upper limit of Y function
            fyl = @(t,x)1;
            % lower limit of Y function
            
            fprintf('Answer should be near 0\n');
            % appriximate answer of the double integral
    end
    
    m = compMid2(fxu, fxl, fyu, fyl, N)
    % m is the composite midpoint function over a double integral
    t = compTrap2(fux, fxl, fyu, fyl, N)
    % t is the composite trapezoidal rule over a double integral
    % here, we check each of 6 test cases against both functions
end
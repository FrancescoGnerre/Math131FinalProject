function I = compTrap2(f, ax, ay, bx, by, N)
    I = 0;
    % I will be the summation of the integral
    
    delx = (bx-ax)/N;
    % delx is the stepsize in the x direction
    dely = (by-ay)/N;
    % dely is the setpsize in the y directoin
    
    px = zeros(N+1,1);
    for k = 0:N
        px(k+1) = ax + delx*(k);
    end
    % px is an array to hold the points of the x direction
    
    py = zeros(N+1,1);
    for k = 0:N
        py(k+1) = ay + dely*(k);
    end
    % py is an array to hold the points of the y direction
    
    for q = 1:N-1
        for o = 1:N-1
            % this nested loop will travers each interval from 1 to N, by
            % step size delx or dely
            
            % q will measure x
            % o will measure y
            
            a1 = f(px(q),py(o));
            a2 = f(px(q+1),py(o));
            a3 = f(px(q),py(o+1));
            a4 = f(px(q+1),py(o+1));
            
            avg = (a1 + a2 + a3 + a4)/4;
            % avg is the average of f(x,y) at the points x,y, x+1,y, x,y+1,
            % and x+1,y+1
            
            I = I + avg*delx*dely;
            % increments I by the height at the midpoints
        end
    end
end
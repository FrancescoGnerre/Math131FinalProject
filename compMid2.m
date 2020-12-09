function I = compMid2(f, ax, ay, bx, by, N)
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
    
    for q = 1:N
        for o = 1:N
            % this nested loop will travers each interval from 1 to N, by
            % step size delx or dely
            
            % q will measure x
            % o will measure y
            
            avgx = (px(q)+px(q+1))/2;
            % avgx will calculate the midpoint in x
            avgy = (py(o)+py(o+1))/2;
            % avgy will calculate the midpoint in y
            
            I = I + f(((px(q)+px(q+1))/2),((py(o)+py(o+1))/2))*delx*dely;
            % increments I by the height at the midpoints
        end
    end    
end
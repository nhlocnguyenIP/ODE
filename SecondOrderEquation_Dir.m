function y = SecondOrderEquation_Dir(x, a, b, c, f, u, v)
    % Solve the equation a y''(x) + b y(x) + c y(x) = f, for x \in (0, R)
    % y(0) = u, y(R) = v

    %Define the N x N matrix A.
    N = length(x);
    A = zeros(N, N);
    dx = x(2) - x(1);
    A(1, 1) = 1; %the 1st row of A is [1 0 ... 0]
    A(N, N) = 1; %the Nth row of A is [0 0 ... 1]
    for i = 2:N-1      
        A(i, i-1) = a/dx^2;
        A(i, i) = -2*a/dx^2 - b/dx + c;
        A(i, i + 1) = a/dx^2 + b/dx;   
        % the ith row of A is [0 0 ... a/dx^2 -2a/dx^2 - b/dx + c a/dx^2 + b/dx 0 ... 0]
    end

    g = f;
    g(1) = u; 
    g(N) = v;
    %g = [u f_2 ... f_{N - 1} v]^T;

    y = A\g; % Solve the linear system A y = b 
end
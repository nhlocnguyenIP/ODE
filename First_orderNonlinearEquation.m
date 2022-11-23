function u = First_orderNonlinearEquation(t, f, u_0)
    % u'(t) = f(u(t)), u(0) = u_0;
    dt = t(2)-t(1);
    Nt = length(t);
    u = zeros(size(t));
    u(1) = u_0;
    for i = 2:Nt
        u(i) = u(i-1) + dt*f(u(i-1)); 
    end
end

%Exercise: 
% Let $f$ be a function from $[0, R] \times \mathbb{R} \to \mathbb{R}$
% Write script to solve the equation 
% u'(t) = f(t, u(t)), u(0) = u_0
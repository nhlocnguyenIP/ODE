function u = First_orderLinearEquations(t, a, f, u_0)
    %Find u satisfying u' + a(t) u = f, u(0) = u_0
    dt = t(2)-t(1);
    Nt = length(t);
    u = zeros(size(t));
    u(1) = u_0;
    for i = 2:Nt
        u(i) = u(i-1) - dt*a(i-1)*u(i-1) + dt*f(i-1); 
    end
end
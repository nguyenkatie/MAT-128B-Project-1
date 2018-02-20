phi = inline('z^3 - 1');
phiprime = inline('3*z^2');
z0 = -0.4 + 0.5i;

while abs(phi(z0)) > 10^-6
    z0 = z0 - (phi(z0) / phiprime(z0));
    disp(z0);
end
    


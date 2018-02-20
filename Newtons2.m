phi = inline('z^6 - 1');
phiprime = inline('6*z^5');
z0 = 0.6 + 0.4i;

while abs(phi(z0)) > 10^-6
    z0 = z0 - (phi(z0) / phiprime(z0));
    disp(z0);
end
    


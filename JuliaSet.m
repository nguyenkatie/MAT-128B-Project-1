c = 0;

hold on;
for j = 1:341
    y = -1.7 + (j-1) * .01;
    for i=1:80
        x = -0.4 + (i-1)*.01;
        z = x + 1i*y;
        zk = z;
        kount = 0;
        
   
        while kount < 100
            kount = kount + 1;
            r = sqrt((real(zk) - real(c))^2 + (imag(zk) - imag(c))^2);
            if (real(zk) - real(c)) > 0
                theta = atan(((imag(zk) - imag(c)) / (real(zk) - real(c))));
            elseif (real(zk) - real(c)) < 0
                theta = atan(((imag(zk) - imag(c)) / (real(zk) - real(c)))) + pi;  
            end
            random = randi(2);
            if random == 2
                random = -1;
            end
            zk = random * sqrt(r)*(cos(theta/2) + 1i*sin(theta/2));
        end
        plot(real(zk), imag(zk), 'o');
    end
  
end

hold off;

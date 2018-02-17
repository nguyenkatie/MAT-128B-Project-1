phi = inline('z^2 + i');
fixpt1 = (1 + sqrt(1 - 4i)) / 2;
fixpt2 = (1 - sqrt(1 - 4i)) / 2;

zk = 0;

kount = 0;

while abs(zk) < 100 && kount < 100
    kount = kount + 1;
    zk = phi(zk);
    disp (zk);
    
    if kount >= 100;
        fprintf('The Julia Set is connected!');
    end
    if abs(zk) >= 100
        fprintf('The Julia Set is not connected!');
    end

end

phi = inline('z^2+i');

zk = 0;

kount = 0;

while abs(zk) < 100 && kount < 100
    kount = kount + 1;
    zk = phi(zk);
    disp (zk);
    
end

if kount >= 100 && abs(zk) < 100
    fprintf('The Julia Set is connected!');
else
    fprintf('The Julia Set is not connected!');
end

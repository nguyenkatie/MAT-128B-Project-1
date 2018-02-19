phi = inline('z^2+i');
fixpt1 = (1+sqrt(1+4i)) / 2;
fixpt2 = (1 - sqrt(1+4i)) / 2;


zk = 0;
iflag1 = 0;
iflag2 = 0;
kount = 0;

while abs(zk) < 100 && kount < 100 && iflag1 < 5 && iflag2 < 5
    kount = kount + 1;
    zk = phi(zk);
    disp (zk);
    err1 = abs(zk - fixpt1);
    if err1 < 1.e-6
        iflag1 = iflag1 + 1;
    else 
        iflag1 = 0;
    end
    err2 = abs(zk - fixpt2);
    if err2 < 1.e-6
        iflag2 = iflag2 + 1;
    else 
        iflag2 = 0;
    end
end

if kount >= 100 && abs(zk) < 100 && (iflag1 <= 5 || iflag2 <= 5)
    fprintf('The Julia Set is connected!');
elseif iflag1 >= 5 || iflag2 >= 5
    fprintf('The Julia Set is connected!');
else 
    fprintf('The Julia is not connected!');
end

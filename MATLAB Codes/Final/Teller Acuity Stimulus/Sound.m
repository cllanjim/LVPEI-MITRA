function Sound

    freq = 0.2;
    cf = 2000;
    sf = 22050;
    d = 10.0;
    n = sf * d;
    s = (1:n) / sf;
    s = sin(2*pi*freq*s).*sin(2*pi*cf*s);
    sound(s, sf);
    
    for i = 1:10000
        disp(i)
    end
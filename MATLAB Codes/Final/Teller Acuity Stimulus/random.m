function random

    for i = 1:50
        rand_num = mod(round(rand()*100), 2) + 1;
        disp(rand_num);
    end
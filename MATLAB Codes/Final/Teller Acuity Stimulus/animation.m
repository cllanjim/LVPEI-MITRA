function animation

    whichScreen = max(Screen('Screens'));
    window = Screen('OpenWindow', whichScreen);
    
    step = pi / 500;
    phase1 = 0.5 * rand() * pi;
    phase2 = 0.5 * rand() * pi;
    phase3 = 0.5 * rand() * pi;
    
    for i = 1:15000
        
        red = 255 * abs(sin(i*step + phase1));
        blue = 255 * abs(sin(i*step + phase2));
        green = 255 * abs(sin(i*step + phase3));
        
        Screen('FillOval', window, [red blue green], [200 200 500 500]);
        Screen('Flip', window);
    end
end
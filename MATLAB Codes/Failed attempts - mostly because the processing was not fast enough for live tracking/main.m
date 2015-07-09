% clear all;
% close all;
%doesnt work for eye6, eye9

    %input = imread('eye.jpg');
    
    %input=rgb2gray(input);
    % resized_input = imresize(input, [189 189]);
    % eye1 = rgb2gray(resized_input);
    % eye = edge(eye1,'canny',0.4);
    tic;
    [r c rad] = circlefinder(f, 20, 50);
    toc;
    
    tic;
    for n=1:length(rad)
    frame = RGBCircle(w,r(1),c(1),rad(1), [0 255 0], 2);
    end
    toc;
    
    figure;
    imshow(frame);
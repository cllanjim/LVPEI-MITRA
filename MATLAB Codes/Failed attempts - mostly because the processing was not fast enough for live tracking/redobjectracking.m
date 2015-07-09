clear;
clc % Clearing Matlab desktop
vid=videoinput('winvideo',2,'YUY2_640X480'); % Defining the video input object
set(vid,'FramesPerTrigger',1); % Setting frames per trigger
preview(vid); %////// Showing the video of the moving Ball(TO BE USED %
% WHILE TESTING)
pause(10);% Waiting for a certain time for the system to get initialised
rgb_image = getsnapshot(vid);
[a b c]= size(rgb_image); % Determining the size of the captured frame.
y=a;
x=b;
% Defining Boundaries 
x1=x/2-120;
x2=x/2+120;
y1=y/2-30;
y2=y/2+30;
% ser=serial('COM34'); % Defining the specified COM Port to be used
% fopen(ser); % starting serial Communication,opening serial port
while(1)
frame = getsnapshot(vid); % Storing Image in an array variable 
flushdata(vid)
% frame = getsnapshot(vid); % storing image in an array variable 
% flushdata(vid); %Flushing the buffer
% [r c rad] = circlefinder(frame);
% [centers,radii] = imfindcircles(frame,70);
% finds the circles
[r c rad] = circlefinder(frame);

% draws the circles
for n=1:length(rad)
    frame = RGBCircle(frame,r(1),c(1),rad(1), [0 255 0], 2);
end
figure;
imshow(frame);
% pause(1);
% imshow(rgb_image);
end
vidDevice = imaq.VideoDevice('winvideo', 2, 'YUY2_640x480', ... % Acquire input video stream
'ROI', [1 1 300 400], ...
'ReturnedColorSpace', 'rgb');
EyeDetector = vision.CascadeObjectDetector('LeftEye');
frame = step(vidDevice);
xyz = step(EyeDetector, frame);
pause(20);
videoOut1 = insertObjectAnnotation(frame,'rectangle',xyz,'LeftEye');
figure, imshow(videoOut1), title('Detect Eye');

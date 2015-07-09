function TellerAcuity

echo off

viewingDistance = 50;       %Distance in cm from where subject is viewing the screen
viewingAngle = 8;           %Angle subtended by the pattern in degrees
numCycles = 15;              %Number of cycles in the grating

%Estimate standard deviation of the grating, given 'viewingDistance' and
%'viewingAngle'
sigma = EstimateSigma(viewingDistance, viewingAngle);

%Dimensions required for the construction of the grating pattern
%Depends on the screen being used, currently set for 1280 X 1024
widthArrayX1 = -320 : 959;
widthArrayX2 = -959 : 320;
widthArrayY  = -512 : 511;

try
    
    disp('1. Horizontal');
    disp('2. Vertical');
    disp('3. Random');
    orientationChoice = input('Enter 1, 2 or 3 : ');
    
    %NumberFrameDisplayPerSecond=5;
    %p = [0 0 1366 768];
    %set(0, 'DefaultFigurePosition', p);
    %hFigure=figure(1);
    %vid = videoinput('winvideo', 1, 'YUY2_1280x720');
    %set(vid,'FramesPerTrigger',1);
    %set(vid,'TriggerRepeat', Inf);
    %set(vid,'ReturnedColorSpace','RGB');
    %triggerconfig(vid, 'Manual');
    %TimerData=timer('TimerFcn', {@FrameRateDisplay,vid},'Period',1/NumberFrameDisplayPerSecond,'ExecutionMode','fixedRate','BusyMode','drop');
    %start(vid);
    %start(TimerData);
    
    %Supress screen configuration and performance checking
    oldVisualDebugLevel   = Screen('Preference', 'VisualDebugLevel', 3);
    oldSupressAllWarnings = Screen('Preference', 'SuppressAllWarnings', 1);
    
    %Displays output on external monitor if connected, otherwise output
    %goes to the default monitor
    whichScreen = max(Screen('Screens'));
    window = Screen('OpenWindow', whichScreen);
    
    %Assume a maximum of 1000 stimuli during a test
    frequencies = 1:1000;
    trials      = 1:1000;
    
    %Number of reversal points to look out for
    numReversals = 6;
    sumFrequency = 0;
	currentResponse = 'y';
    index = 1;
    
    while numReversals >= 0

        if orientationChoice == 1
            tiltInRadians = 0.5 * pi;
        elseif orientationChoice == 2
            tiltInRadians = 0;
        else
            tiltInRadians = mod(round(rand()*100), 2) * 0.5 * pi;
        end
        direction = mod(round(rand()*100), 2);
        
        if direction
            widthArrayX = widthArrayX1;
        else
            widthArrayX = widthArrayX2;
        end
        
        %Width of grating lines as a function of viewing distance, viewing
        %angle and number of cycles
        radiansPerPixel = (numCycles * 3 * pi) / (viewingAngle * viewingDistance);
        grayscaleImageMatrix = ConstructImage(window, widthArrayX, widthArrayY, tiltInRadians, radiansPerPixel, sigma);
        Screen('PutImage', window, grayscaleImageMatrix);
        Screen('Flip', window);
        
        frequencies(index) = numCycles / viewingAngle;
        index = index + 1;
        
        w = waitforbuttonpress;
        response = mytestcallback(hFigure, direction);
        %response = input('Press y or n : ', 's');
        
        if response ~= currentResponse
            numReversals = numReversals - 1;
            currentResponse = response;
            sumFrequency = sumFrequency + numCycles;
        end
        
        if response == 'y'
            numCycles = numCycles * 1.1;
        end
        if response == 'n'
            numCycles = numCycles / 1.1;
        end
    end

    index = index - 1;
    
    disp('Average Frequency(in CPD) : ');
    disp(sumFrequency / (6 * viewingAngle));
    
    figure
    plot(trials(1:index), frequencies(1:index));
    xlabel('Number of trials');
    ylabel('Spatial Frequency(in CPD)');
    
	Screen('CloseAll');
	 
	ShowCursor;

    Screen('Preference', 'VisualDebugLevel', oldVisualDebugLevel);
    Screen('Preference', 'SuppressAllWarnings', oldSupressAllWarnings);
    
    uiwait(hFigure);
    stop(TimerData);
    delete(TimerData);
    stop(vid);
    delete(vid);
    clear functions;

catch
   
	Screen('CloseAll');

	ShowCursor;
    
    %Screen('Preference', 'VisualDebugLevel', oldVisualDebugLevel);
    %Screen('Preference', 'SuppressAllWarnings', oldSupressAllWarnings);

	psychrethrow(psychlasterror);
    
end

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%Creates the image matrix for the Gabor grating
function grayscaleImageMatrix = ConstructImage(window, widthArrayX, widthArrayY, tiltInRadians, radiansPerPixel, sigma)

%Get black and white pixel values of the created window
black = BlackIndex(window);
white = WhiteIndex(window);

%Calculate gray pixel value and difference in pixel values of black and
%white
gray = (black + white) / 2;
absoluteDifference = abs(white - gray);

%Create a meshgrid depending on the resolution of the screen
[x y] = meshgrid(widthArrayX, widthArrayY);

%Calculate width parameters for the sine wave
a = cos(tiltInRadians) * radiansPerPixel;
b = sin(tiltInRadians) * radiansPerPixel;

%Calculate Gabor grating matrix
gratingMatrix = sin(a*x + b*y);

%Calculate the Gaussian mask
gaussianMask = exp(-((x .^ 2) + (y .^ 2)) / (sigma ^ 2));

%Get the imageMatrix by multiplying the sine wave and Gaussian mask
imageMatrix = gratingMatrix .* gaussianMask;

%Merge the image matrix with gray background
grayscaleImageMatrix = gray + absoluteDifference * imageMatrix;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%Function that estimates standard deviation of grating pattern
function sigma =  EstimateSigma(viewingDistance, viewingAngle)

%Compute tangent of the viewing angle
viewingAngleInRadians = viewingAngle * pi / 180;
viewingAngleTangent   = tan(viewingAngleInRadians);

%Estimate 'sigma' using the parameters
sigma = 15 * viewingDistance * viewingAngleTangent;

function FrameRateDisplay(obj, event,vid)
persistent IM;
persistent handlesRaw;
trigger(vid);
IM=getdata(vid,1,'uint8');

if isempty(handlesRaw)
   % if first execution, we create the figure objects
   handlesRaw=imagesc(IM);
   hold on;
   rectangle('Position',[100, 100, 150, 300]);
else
   % We only update what is needed
   set(handlesRaw,'CData',IM);
end

function response = mytestcallback(objectHandle, direction)
    
pos = get(objectHandle, 'CurrentPoint');
%global response;
%global direction;
disp(pos);

hold on;
c = plot(pos(1), pos(2), 'o', 'MarkerSize', 20);
pause(0.3);
delete(c);

if pos(1) < 683
    temp = 1;
else
    temp = 0;
end

if temp == direction
    response = 'y';
else
    response = 'n';
end

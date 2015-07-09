function realVideo()

% Define frame rate
NumberFrameDisplayPerSecond=10;

% Open figure
hFigure=figure(1);

% Set-up webcam video input
try
   % For windows
   vid = videoinput('winvideo', 1, 'YUY2_640x480');
catch
   try
      % For macs.
      vid = videoinput('macvideo', 1);
   catch
      errordlg('No webcam available');
   end
end

% Set parameters for video
% Acquire only one frame each time
set(vid,'FramesPerTrigger',1);
% Go on forever until stopped
set(vid,'TriggerRepeat', Inf);
% Get a grayscale image
set(vid,'ReturnedColorSpace','RGB');
triggerconfig(vid, 'Manual');

% set up timer object
TimerData=timer('TimerFcn', {@FrameRateDisplay,vid},'Period',1/NumberFrameDisplayPerSecond,'ExecutionMode','fixedRate','BusyMode','drop');

% Start video and timer object
start(vid);
start(TimerData);

% We go on until the figure is closed
uiwait(hFigure);

% Clean up everything
stop(TimerData);
delete(TimerData);
stop(vid);
delete(vid);
% clear persistent variables
clear functions;

% This function is called by the timer to display one frame of the figure

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
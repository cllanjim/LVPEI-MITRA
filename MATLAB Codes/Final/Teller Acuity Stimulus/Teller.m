function varargout = Teller(varargin)
% Teller M-file for Teller.fig
%      Teller, by itself, creates a new Teller or raises the existing
%      singleton*.
%
%      H = Teller returns the handle to a new Teller or the handle to
%      the existing singleton*.
%
%      Teller('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in Teller.M with the given input arguments.
%
%      Teller('Property','Value',...) creates a new Teller or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before Teller_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to Teller_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help Teller

% Last Modified by GUIDE v2.5 19-Feb-2014 13:08:59

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Teller_OpeningFcn, ...
                   'gui_OutputFcn',  @Teller_OutputFcn, ...
                   'gui_LayoutFcn',  @Teller_LayoutFcn, ...
                   'gui_Callback',   []);
if nargin && ischar(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end
% End initialization code - DO NOT EDIT


% --- Executes just before Teller is made visible.
function Teller_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to Teller (see VARARGIN)

% Choose default command line output for Teller
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes Teller wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = Teller_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes during object creation, after setting all properties.
function edit1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes during object creation, after setting all properties.
function edit2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes during object creation, after setting all properties.
function edit3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes during object creation, after setting all properties.
function edit4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes during object creation, after setting all properties.
function edit5_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes during object creation, after setting all properties.
function edit6_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes during object creation, after setting all properties.
function popupmenu1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



% --- Executes during object creation, after setting all properties.
function popupmenu2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

%Get data from edit boxes
name            = get(handles.edit1, 'String');
MRNo            = get(handles.edit2, 'String');
diagnosis       = get(handles.edit3, 'String');
distStr         = get(handles.edit4, 'String');
angleStr        = get(handles.edit5, 'String');
cyclesStr       = get(handles.edit6, 'String');
viewingDistance = str2double(distStr);
viewingAngle    = str2double(angleStr);
numCycles       = str2double(cyclesStr);

%Estimate standard deviation of the grating, given 'viewingDistance' and
%'viewingAngle'
sigma = EstimateSigma(viewingDistance, viewingAngle);

%Dimensions required for the construction of the grating pattern
%Depends on the screen being used
% screenWidth = 1680;
% screenHeight = 1050;
screenWidth = 2560;
screenHeight = 1080;
%Define useful variables dependent on screen dimensions
quarterWidth = screenWidth / 4;
halfHeight = screenHeight / 2;

widthArrayX1 = -quarterWidth : (3*quarterWidth - 1);
widthArrayX2 = -(3*quarterWidth - 1) : quarterWidth;
widthArrayY  = -halfHeight : halfHeight-1;

%Contrast of the grating, can be changed for low contrast acuity testing
contrast = 1;

try
    %Get orientation choice
    orientationChoice = get(handles.popupmenu1, 'Value');
    
    %Rate in FPS of the shown video
    framesPerSecond = 5;
    
    %Hack to get app displayed on the correct position, have to find a
    %generic solution
    p = [0 0 1366 768];
    set(0, 'DefaultFigurePosition', p);
    
    
    %Settings dependent on the camera and the desired properties of the
    %video
    vid = videoinput('winvideo', 1, 'YUY2_640x480');
    set(vid,'FramesPerTrigger', 1);
    set(vid,'TriggerRepeat', Inf);
    set(vid,'ReturnedColorSpace', 'RGB');
    triggerconfig(vid, 'Manual');
    
    %Define the timer used to get the video input
    timerData = timer('TimerFcn', {@FrameRateDisplay, vid}, 'Period', ...
                      1/framesPerSecond, 'ExecutionMode', 'fixedRate', ...
                      'BusyMode', 'drop');
    
    %Start the video and the timer               
    start(vid);
    start(timerData);
    
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
    
    numIgnore = 2;          %Number of reversal points to ignore
    numReversals = 6;       %Number of reversal points to take into account
    sumFrequency = 0;       %Sum of frequencies at reversal points
	previousResponse = 'y'; %Assume initial response as a 'yes'
    index = 1;              %Variable used to store frequency values at the correct location
    flag = 1;               %Flag to mark if first grating has been shown
    
    tempIgnore = numIgnore;
    tempReversals = numReversals;
    
    img = imread('1.jpg');
    
    while tempReversals > 0
        
        i = 1;
        
        %Set mouse selection type to enable click input functionality
        set(handles.figure1, 'SelectionType', 'extend');
        
        while 1
            
            %Make the screen background gray
            Screen('FillRect', window, [127 127 127]);
            
            %Dimensions o flashing image
            rows = size(img, 2);
            cols = size(img, 1);
            
            %Define rectangle dimensions to hold the image
            rect = [2*quarterWidth - rows/2, halfHeight - cols/2, 2*quarterWidth + rows/2, halfHeight + cols/2];
            
            %Variables to decide whether image sh
            quotient = i / 25;
            flash = mod(round(quotient), 2);
            
            if flash
                Screen('PutImage', window, img, rect);
            end
            
            Screen('Flip', window);
            
            %Check for a response through mouse click
            click = get(handles.figure1, 'SelectionType');
            
            %If it the first click, simply stop the animation
            if flag
                if strcmp(click, 'normal')
                    flag = 0;
                    break;
                end
            %Otherwise, check whether it is a left click or a right click,
            %and make changes accordingly
            else
                
                %If the click is a left click or right click
                if strcmp(click, 'normal') || strcmp(click, 'alt')
                    
                    %If the click and grating directions match, record
                    %response as a 'yes'
                    
                    leftclick = strcmp(click, 'normal');
                    rightclick = strcmp(click, 'alt');
                    
                    if leftclick && direction == 0
                        response = 'y';
                    
                    elseif rightclick && direction == 1
                        response = 'y';
                    
                    %Otherwise mark response as 'no'
                    else
                        response = 'n';
                    end
                    
                    %If current response is not the same as the previous
                    %response, it is a reversal point
                    if ~strcmp(response, previousResponse)
                        
                        %Decrement number of reversal points left to
                        %ignore, and change 'previousResponse'
                        if tempIgnore
                            tempIgnore = tempIgnore - 1;
                        end
                        
                        previousResponse = response;
                        
                        %If 'numIgnore' reversal points have been ignored,
                        %then this point needs to be taken into account for
                        %acuity calculation
                        if tempIgnore <= 0
                            tempReversals = tempReversals - 1;
                            sumFrequency = sumFrequency + numCycles;
                        end
                    end
                    
                    %If the response is a 'yes'
                    if strcmp(response, 'y')
                        
                        %If there are still reversal points to ignore,
                        %increase the frequency by 30%
                        if tempIgnore
                            numCycles = numCycles * 1.3;
                            
                        %Otherwise, increase it by 10%    
                        else
                            numCycles = numCycles * 1.1;
                        end
                        
                        break;
                    end
                    if strcmp(response, 'n')
                        
                        %If there are still reversal points to ignore,
                        %increase the frequency by 30%
                        if tempIgnore
                            numCycles = numCycles / 1.3;
                            
                        %Otherwise, increase it by 10%
                        else
                            numCycles = numCycles / 1.1;
                        end
                        
                        break;
                    end
                end
            end
            
            i = i + 1;
        end
        
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
        radiansPerPixel = (numCycles * 3 * pi) / (viewingDistance);
        grayscaleImageMatrix = ConstructImage(window, widthArrayX, widthArrayY, tiltInRadians, radiansPerPixel, sigma, contrast);
        Screen('PutImage', window, grayscaleImageMatrix);
        Screen('Flip', window);
        
        pause(1.8);
        
        frequencies(index) = numCycles;
        index = index + 1;     
        
    end
 
    stop(timerData);
    stop(vid);
    delete(timerData);
    delete(vid);
    clear functions;
    cla reset;
    newplot;
    
    averageFrequency = sumFrequency / (numReversals);
    disp('Average Frequency(in CPD) : ');
    disp(averageFrequency);
    
    index = index - 1;
    
    plot(trials(1:index), frequencies(1:index));
    hold on;
    plot(trials(1:index), averageFrequency*ones(index));
    xlabel('Number of trials');
    ylabel('Spatial Frequency(in CPD)');
    text(index/5, averageFrequency, ['Average Frequency : ', num2str(averageFrequency), ' CPD'], 'VerticalAlignment', 'bottom');
    
    Screen('CloseAll');

    Screen('Preference', 'VisualDebugLevel', oldVisualDebugLevel);
    Screen('Preference', 'SuppressAllWarnings', oldSupressAllWarnings);
    
catch
   
	Screen('CloseAll');

	ShowCursor;
    
    %Screen('Preference', 'VisualDebugLevel', oldVisualDebugLevel);
    %Screen('Preference', 'SuppressAllWarnings', oldSupressAllWarnings);

	psychrethrow(psychlasterror);
    
end

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%Creates the image matrix for the Gabor grating
function grayscaleImageMatrix = ConstructImage(window, widthArrayX, widthArrayY, tiltInRadians, radiansPerPixel, sigma, contrast)

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
gratingMatrix = cos(a*x + b*y);

%Calculate the Gaussian mask
gaussianMask = exp(-((x .^ 2) + (y .^ 2)) / (sigma ^ 2));

%Get the imageMatrix by multiplying the sine wave and Gaussian mask
imageMatrix = gratingMatrix .* gaussianMask;

%Merge the image matrix with gray background
grayscaleImageMatrix = gray + absoluteDifference * contrast * imageMatrix;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%Function that estimates standard deviation of grating pattern
function sigma =  EstimateSigma(viewingDistance, viewingAngle)

%Compute tangent of the viewing angle
viewingAngleInRadians = viewingAngle * pi / 180;
viewingAngleTangent   = tan(viewingAngleInRadians);

%Estimate 'sigma' using the parameters
sigma = 15 * viewingDistance * viewingAngleTangent;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function FrameRateDisplay(obj, event,vid)


persistent img;
persistent handlesRaw;
trigger(vid);
img = getdata(vid,1,'uint8');

if isempty(handlesRaw)
   % if first execution, we create the figure objects
   handlesRaw = imagesc(img);
   hold on;
   rectangle('Position',[320, 0, 321, 480]);
else
   % We only update what is needed
   set(handlesRaw,'CData',img);
end


% --- Creates and returns a handle to the GUI figure. 
function h1 = Teller_LayoutFcn(policy)
% policy - create a new figure or use a singleton. 'new' or 'reuse'.

persistent hsingleton;
if strcmpi(policy, 'reuse') & ishandle(hsingleton)
    h1 = hsingleton;
    return;
end

appdata = [];
appdata.GUIDEOptions = struct(...
    'active_h', [], ...
    'taginfo', struct(...
    'figure', 2, ...
    'text', 9, ...
    'edit', 7, ...
    'popupmenu', 3, ...
    'pushbutton', 3, ...
    'axes', 2), ...
    'override', 0, ...
    'release', 13, ...
    'resize', 'none', ...
    'accessibility', 'callback', ...
    'mfile', 1, ...
    'callbacks', 1, ...
    'singleton', 1, ...
    'syscolorfig', 1, ...
    'blocking', 0, ...
    'lastSavedFile', 'C:\Documents and Settings\shrikant.LVPEI-14B3FF554\Desktop\Siddharth\Teller.m', ...
    'lastFilename', 'C:\Documents and Settings\shrikant.LVPEI-14B3FF554\Desktop\Siddharth\untitled.fig');
appdata.lastValidTag = 'figure1';
appdata.GUIDELayoutEditor = [];
appdata.initTags = struct(...
    'handle', [], ...
    'tag', 'figure1');

h1 = figure(...
'Units','characters',...
'Color',[0.925490196078431 0.913725490196078 0.847058823529412],...
'Colormap',[0 0 0.5625;0 0 0.625;0 0 0.6875;0 0 0.75;0 0 0.8125;0 0 0.875;0 0 0.9375;0 0 1;0 0.0625 1;0 0.125 1;0 0.1875 1;0 0.25 1;0 0.3125 1;0 0.375 1;0 0.4375 1;0 0.5 1;0 0.5625 1;0 0.625 1;0 0.6875 1;0 0.75 1;0 0.8125 1;0 0.875 1;0 0.9375 1;0 1 1;0.0625 1 1;0.125 1 0.9375;0.1875 1 0.875;0.25 1 0.8125;0.3125 1 0.75;0.375 1 0.6875;0.4375 1 0.625;0.5 1 0.5625;0.5625 1 0.5;0.625 1 0.4375;0.6875 1 0.375;0.75 1 0.3125;0.8125 1 0.25;0.875 1 0.1875;0.9375 1 0.125;1 1 0.0625;1 1 0;1 0.9375 0;1 0.875 0;1 0.8125 0;1 0.75 0;1 0.6875 0;1 0.625 0;1 0.5625 0;1 0.5 0;1 0.4375 0;1 0.375 0;1 0.3125 0;1 0.25 0;1 0.1875 0;1 0.125 0;1 0.0625 0;1 0 0;0.9375 0 0;0.875 0 0;0.8125 0 0;0.75 0 0;0.6875 0 0;0.625 0 0;0.5625 0 0],...
'IntegerHandle','off',...
'InvertHardcopy',get(0,'defaultfigureInvertHardcopy'),...
'MenuBar','none',...
'Name','untitled',...
'NumberTitle','off',...
'PaperPosition',get(0,'defaultfigurePaperPosition'),...
'Position',[103.8 13.8461538461538 256.2 47.6153846153846],...
'Resize','off',...
'HandleVisibility','callback',...
'Tag','figure1',...
'UserData',[],...
'Visible','on',...
'CreateFcn', {@local_CreateFcn, blanks(0), appdata} );

appdata = [];
appdata.lastValidTag = 'text1';

h2 = uicontrol(...
'Parent',h1,...
'Units','characters',...
'Position',[9.6 45.0769230769231 30.2 1.15384615384615],...
'String','Patient Name',...
'Style','text',...
'Tag','text1',...
'CreateFcn', {@local_CreateFcn, blanks(0), appdata} );

appdata = [];
appdata.lastValidTag = 'edit1';

h3 = uicontrol(...
'Parent',h1,...
'Units','characters',...
'BackgroundColor',[1 1 1],...
'Position',[9.6 43.0769230769231 30.4 2],...
'String',blanks(0),...
'Style','edit',...
'CreateFcn', {@local_CreateFcn, @(hObject,eventdata)Teller('edit1_CreateFcn',hObject,eventdata,guidata(hObject)), appdata} ,...
'Tag','edit1');

appdata = [];
appdata.lastValidTag = 'text2';

h4 = uicontrol(...
'Parent',h1,...
'Units','characters',...
'Position',[9.6 40.923076923077 30.2 1.15384615384615],...
'String','MR No.',...
'Style','text',...
'Tag','text2',...
'CreateFcn', {@local_CreateFcn, blanks(0), appdata} );

appdata = [];
appdata.lastValidTag = 'edit2';

h5 = uicontrol(...
'Parent',h1,...
'Units','characters',...
'BackgroundColor',[1 1 1],...
'Position',[9.6 38.846153846154 30.4 2.07692307692308],...
'String',blanks(0),...
'Style','edit',...
'CreateFcn', {@local_CreateFcn, @(hObject,eventdata)Teller('edit2_CreateFcn',hObject,eventdata,guidata(hObject)), appdata} ,...
'Tag','edit2');

appdata = [];
appdata.lastValidTag = 'text3';

h6 = uicontrol(...
'Parent',h1,...
'Units','characters',...
'Position',[9.6 36.6153846153848 30.2 1.15384615384615],...
'String','Diagnosis',...
'Style','text',...
'Tag','text3',...
'CreateFcn', {@local_CreateFcn, blanks(0), appdata} );

appdata = [];
appdata.lastValidTag = 'edit3';

h7 = uicontrol(...
'Parent',h1,...
'Units','characters',...
'BackgroundColor',[1 1 1],...
'Position',[9.4 34.0000000000001 30.4 2.07692307692308],...
'String',blanks(0),...
'Style','edit',...
'CreateFcn', {@local_CreateFcn, @(hObject,eventdata)Teller('edit3_CreateFcn',hObject,eventdata,guidata(hObject)), appdata} ,...
'Tag','edit3');

appdata = [];
appdata.lastValidTag = 'text4';

h8 = uicontrol(...
'Parent',h1,...
'Units','characters',...
'Position',[9.6 31.6923076923078 30.2 1.15384615384615],...
'String','Viewing Distance',...
'Style','text',...
'Tag','text4',...
'CreateFcn', {@local_CreateFcn, blanks(0), appdata} );

appdata = [];
appdata.lastValidTag = 'edit4';

h9 = uicontrol(...
'Parent',h1,...
'Units','characters',...
'BackgroundColor',[1 1 1],...
'Position',[9.8 29.1538461538462 30.4 2.07692307692308],...
'String','38',...
'Style','edit',...
'CreateFcn', {@local_CreateFcn, @(hObject,eventdata)Teller('edit4_CreateFcn',hObject,eventdata,guidata(hObject)), appdata} ,...
'Tag','edit4');

appdata = [];
appdata.lastValidTag = 'text5';

h10 = uicontrol(...
'Parent',h1,...
'Units','characters',...
'Position',[9.8 26.5384615384616 30.2 1.15384615384615],...
'String','Viewing Angle',...
'Style','text',...
'Tag','text5',...
'CreateFcn', {@local_CreateFcn, blanks(0), appdata} );

appdata = [];
appdata.lastValidTag = 'edit5';

h11 = uicontrol(...
'Parent',h1,...
'Units','characters',...
'BackgroundColor',[1 1 1],...
'Position',[9.8 24.0769230769231 30.4 2.07692307692308],...
'String','5',...
'Style','edit',...
'CreateFcn', {@local_CreateFcn, @(hObject,eventdata)Teller('edit5_CreateFcn',hObject,eventdata,guidata(hObject)), appdata} ,...
'Tag','edit5');

appdata = [];
appdata.lastValidTag = 'text6';

h12 = uicontrol(...
'Parent',h1,...
'Units','characters',...
'Position',[9.8 21.6153846153847 30.2 1.15384615384615],...
'String','Cycles per Degree',...
'Style','text',...
'Tag','text6',...
'CreateFcn', {@local_CreateFcn, blanks(0), appdata} );

appdata = [];
appdata.lastValidTag = 'edit6';

h13 = uicontrol(...
'Parent',h1,...
'Units','characters',...
'BackgroundColor',[1 1 1],...
'Position',[9.60000000000001 18.6153846153846 30.4 2.07692307692308],...
'String','1',...
'Style','edit',...
'CreateFcn', {@local_CreateFcn, @(hObject,eventdata)Teller('edit6_CreateFcn',hObject,eventdata,guidata(hObject)), appdata} ,...
'Tag','edit6');

appdata = [];
appdata.lastValidTag = 'text7';

h14 = uicontrol(...
'Parent',h1,...
'Units','characters',...
'Position',[9.60000000000001 15.7692307692308 30.2 1.15384615384615],...
'String','Orientation',...
'Style','text',...
'Tag','text7',...
'CreateFcn', {@local_CreateFcn, blanks(0), appdata} );

appdata = [];
appdata.lastValidTag = 'pushbutton2';

h15 = uicontrol(...
'Parent',h1,...
'Units','characters',...
'Callback',@(hObject,eventdata)Teller('pushbutton2_Callback',hObject,eventdata,guidata(hObject)),...
'Position',[5.8 2.6923076923077 38.2 4],...
'String','START TEST',...
'Tag','pushbutton2',...
'CreateFcn', {@local_CreateFcn, blanks(0), appdata} );

appdata = [];
appdata.lastValidTag = 'axes1';

h16 = axes(...
'Parent',h1,...
'Units','characters',...
'Position',[55.6 3.92307692307692 186.4 41.3076923076923],...
'CameraPosition',[0.5 0.5 9.16025403784439],...
'CameraPositionMode',get(0,'defaultaxesCameraPositionMode'),...
'Color',get(0,'defaultaxesColor'),...
'ColorOrder',get(0,'defaultaxesColorOrder'),...
'LooseInset',[33.306 5.23769230769231 24.339 3.57115384615385],...
'XColor',get(0,'defaultaxesXColor'),...
'XTick',[],...
'XTickMode','manual',...
'YColor',get(0,'defaultaxesYColor'),...
'YTick',[],...
'YTickMode','manual',...
'ZColor',get(0,'defaultaxesZColor'),...
'ZTick',[],...
'ZTickMode','manual',...
'Tag','axes1',...
'CreateFcn', {@local_CreateFcn, blanks(0), appdata} );

appdata = [];
appdata.SerializedAnnotationV7 = struct(...
    'LegendInformation', struct(...
    'IconDisplayStyle', 'on'));

h17 = get(h16,'title');

set(h17,...
'Parent',h16,...
'Units','data',...
'FontUnits','points',...
'BackgroundColor','none',...
'Color',[0 0 0],...
'DisplayName',blanks(0),...
'EdgeColor','none',...
'EraseMode','normal',...
'DVIMode','auto',...
'FontAngle','normal',...
'FontName','Helvetica',...
'FontSize',10,...
'FontWeight','normal',...
'HorizontalAlignment','center',...
'LineStyle','-',...
'LineWidth',0.5,...
'Margin',2,...
'Position',[0.499463519313305 1.012104283054 1.00005459937205],...
'Rotation',0,...
'String',blanks(0),...
'Interpreter','tex',...
'VerticalAlignment','bottom',...
'ButtonDownFcn',[],...
'CreateFcn', {@local_CreateFcn, [], appdata} ,...
'DeleteFcn',[],...
'BusyAction','queue',...
'HandleVisibility','off',...
'HelpTopicKey',blanks(0),...
'HitTest','on',...
'Interruptible','on',...
'SelectionHighlight','on',...
'Serializable','on',...
'Tag',blanks(0),...
'UserData',[],...
'Visible','on',...
'XLimInclude','on',...
'YLimInclude','on',...
'ZLimInclude','on',...
'CLimInclude','on',...
'ALimInclude','on',...
'IncludeRenderer','on',...
'Clipping','off');

appdata = [];
appdata.SerializedAnnotationV7 = struct(...
    'LegendInformation', struct(...
    'IconDisplayStyle', 'on'));

h18 = get(h16,'xlabel');

set(h18,...
'Parent',h16,...
'Units','data',...
'FontUnits','points',...
'BackgroundColor','none',...
'Color',[0 0 0],...
'DisplayName',blanks(0),...
'EdgeColor','none',...
'EraseMode','normal',...
'DVIMode','auto',...
'FontAngle','normal',...
'FontName','Helvetica',...
'FontSize',10,...
'FontWeight','normal',...
'HorizontalAlignment','center',...
'LineStyle','-',...
'LineWidth',0.5,...
'Margin',2,...
'Position',[0.499463519313305 -0.0158286778398511 1.00005459937205],...
'Rotation',0,...
'String',blanks(0),...
'Interpreter','tex',...
'VerticalAlignment','cap',...
'ButtonDownFcn',[],...
'CreateFcn', {@local_CreateFcn, [], appdata} ,...
'DeleteFcn',[],...
'BusyAction','queue',...
'HandleVisibility','off',...
'HelpTopicKey',blanks(0),...
'HitTest','on',...
'Interruptible','on',...
'SelectionHighlight','on',...
'Serializable','on',...
'Tag',blanks(0),...
'UserData',[],...
'Visible','on',...
'XLimInclude','on',...
'YLimInclude','on',...
'ZLimInclude','on',...
'CLimInclude','on',...
'ALimInclude','on',...
'IncludeRenderer','on',...
'Clipping','off');

appdata = [];
appdata.SerializedAnnotationV7 = struct(...
    'LegendInformation', struct(...
    'IconDisplayStyle', 'on'));

h19 = get(h16,'ylabel');

set(h19,...
'Parent',h16,...
'Units','data',...
'FontUnits','points',...
'BackgroundColor','none',...
'Color',[0 0 0],...
'DisplayName',blanks(0),...
'EdgeColor','none',...
'EraseMode','normal',...
'DVIMode','auto',...
'FontAngle','normal',...
'FontName','Helvetica',...
'FontSize',10,...
'FontWeight','normal',...
'HorizontalAlignment','center',...
'LineStyle','-',...
'LineWidth',0.5,...
'Margin',2,...
'Position',[-0.00697424892703863 0.498137802607076 1.00005459937205],...
'Rotation',90,...
'String',blanks(0),...
'Interpreter','tex',...
'VerticalAlignment','bottom',...
'ButtonDownFcn',[],...
'CreateFcn', {@local_CreateFcn, [], appdata} ,...
'DeleteFcn',[],...
'BusyAction','queue',...
'HandleVisibility','off',...
'HelpTopicKey',blanks(0),...
'HitTest','on',...
'Interruptible','on',...
'SelectionHighlight','on',...
'Serializable','on',...
'Tag',blanks(0),...
'UserData',[],...
'Visible','on',...
'XLimInclude','on',...
'YLimInclude','on',...
'ZLimInclude','on',...
'CLimInclude','on',...
'ALimInclude','on',...
'IncludeRenderer','on',...
'Clipping','off');

appdata = [];
appdata.SerializedAnnotationV7 = struct(...
    'LegendInformation', struct(...
    'IconDisplayStyle', 'on'));

h20 = get(h16,'zlabel');

set(h20,...
'Parent',h16,...
'Units','data',...
'FontUnits','points',...
'BackgroundColor','none',...
'Color',[0 0 0],...
'DisplayName',blanks(0),...
'EdgeColor','none',...
'EraseMode','normal',...
'DVIMode','auto',...
'FontAngle','normal',...
'FontName','Helvetica',...
'FontSize',10,...
'FontWeight','normal',...
'HorizontalAlignment','right',...
'LineStyle','-',...
'LineWidth',0.5,...
'Margin',2,...
'Position',[-0.29881974248927 1.05493482309125 1.00005459937205],...
'Rotation',0,...
'String',blanks(0),...
'Interpreter','tex',...
'VerticalAlignment','middle',...
'ButtonDownFcn',[],...
'CreateFcn', {@local_CreateFcn, [], appdata} ,...
'DeleteFcn',[],...
'BusyAction','queue',...
'HandleVisibility','off',...
'HelpTopicKey',blanks(0),...
'HitTest','on',...
'Interruptible','on',...
'SelectionHighlight','on',...
'Serializable','on',...
'Tag',blanks(0),...
'UserData',[],...
'Visible','off',...
'XLimInclude','on',...
'YLimInclude','on',...
'ZLimInclude','on',...
'CLimInclude','on',...
'ALimInclude','on',...
'IncludeRenderer','on',...
'Clipping','off');

appdata = [];
appdata.lastValidTag = 'popupmenu1';

h21 = uicontrol(...
'Parent',h1,...
'Units','characters',...
'BackgroundColor',[1 1 1],...
'Position',[9.8 13.4615384615385 30.2 1.92307692307692],...
'String',{  'Horizontal'; 'Vertical'; 'Random' },...
'Style','popupmenu',...
'Value',1,...
'CreateFcn', {@local_CreateFcn, @(hObject,eventdata)Teller('popupmenu1_CreateFcn',hObject,eventdata,guidata(hObject)), appdata} ,...
'Tag','popupmenu1');

appdata = [];
appdata.lastValidTag = 'text8';

h22 = uicontrol(...
'Parent',h1,...
'Units','characters',...
'Position',[9.60000000000002 11 30.2 1.15384615384615],...
'String','Test Type',...
'Style','text',...
'Tag','text8',...
'CreateFcn', {@local_CreateFcn, blanks(0), appdata} );

appdata = [];
appdata.lastValidTag = 'popupmenu2';

h23 = uicontrol(...
'Parent',h1,...
'Units','characters',...
'BackgroundColor',[1 1 1],...
'Position',[9.80000000000001 8.61538461538462 30.2 1.92307692307692],...
'String',{  'Monocular - Left'; 'Monocular - Right'; 'Binocular' },...
'Style','popupmenu',...
'Value',1,...
'CreateFcn', {@local_CreateFcn, @(hObject,eventdata)Teller('popupmenu2_CreateFcn',hObject,eventdata,guidata(hObject)), appdata} ,...
'Tag','popupmenu2');


hsingleton = h1;


% --- Set application data first then calling the CreateFcn. 
function local_CreateFcn(hObject, eventdata, createfcn, appdata)

if ~isempty(appdata)
   names = fieldnames(appdata);
   for i=1:length(names)
       name = char(names(i));
       setappdata(hObject, name, getfield(appdata,name));
   end
end

if ~isempty(createfcn)
   if isa(createfcn,'function_handle')
       createfcn(hObject, eventdata);
   else
       eval(createfcn);
   end
end


% --- Handles default GUIDE GUI creation and callback dispatch
function varargout = gui_mainfcn(gui_State, varargin)

gui_StateFields =  {'gui_Name'
    'gui_Singleton'
    'gui_OpeningFcn'
    'gui_OutputFcn'
    'gui_LayoutFcn'
    'gui_Callback'};
gui_Mfile = '';
for i=1:length(gui_StateFields)
    if ~isfield(gui_State, gui_StateFields{i})
        error('MATLAB:gui_mainfcn:FieldNotFound', 'Could not find field %s in the gui_State struct in GUI M-file %s', gui_StateFields{i}, gui_Mfile);
    elseif isequal(gui_StateFields{i}, 'gui_Name')
        gui_Mfile = [gui_State.(gui_StateFields{i}), '.m'];
    end
end

numargin = length(varargin);

if numargin == 0
    % Teller
    % create the GUI only if we are not in the process of loading it
    % already
    gui_Create = true;
elseif local_isInvokeActiveXCallback(gui_State, varargin{:})
    % Teller(ACTIVEX,...)
    vin{1} = gui_State.gui_Name;
    vin{2} = [get(varargin{1}.Peer, 'Tag'), '_', varargin{end}];
    vin{3} = varargin{1};
    vin{4} = varargin{end-1};
    vin{5} = guidata(varargin{1}.Peer);
    feval(vin{:});
    return;
elseif local_isInvokeHGCallbak(gui_State, varargin{:})
    % Teller('CALLBACK',hObject,eventData,handles,...)
    gui_Create = false;
else
    % Teller(...)
    % create the GUI and hand varargin to the openingfcn
    gui_Create = true;
end

if ~gui_Create
    % In design time, we need to mark all components possibly created in
    % the coming callback evaluation as non-serializable. This way, they
    % will not be brought into GUIDE and not be saved in the figure file
    % when running/saving the GUI from GUIDE.
    designEval = false;
    if (numargin>1 && ishghandle(varargin{2}))
        fig = varargin{2};
        while ~isempty(fig) && ~isa(handle(fig),'figure')
            fig = get(fig,'parent');
        end
        
        designEval = isappdata(0,'CreatingGUIDEFigure') || isprop(fig,'__GUIDEFigure');
    end
        
    if designEval
        beforeChildren = findall(fig);
    end
    
    % evaluate the callback now
    varargin{1} = gui_State.gui_Callback;
    if nargout
        [varargout{1:nargout}] = feval(varargin{:});
    else       
        feval(varargin{:});
    end
    
    % Set serializable of objects created in the above callback to off in
    % design time. Need to check whether figure handle is still valid in
    % case the figure is deleted during the callback dispatching.
    if designEval && ishandle(fig)
        set(setdiff(findall(fig),beforeChildren), 'Serializable','off');
    end
else
    if gui_State.gui_Singleton
        gui_SingletonOpt = 'reuse';
    else
        gui_SingletonOpt = 'new';
    end

    % Check user passing 'visible' P/V pair first so that its value can be
    % used by oepnfig to prevent flickering
    gui_Visible = 'auto';
    gui_VisibleInput = '';
    for index=1:2:length(varargin)
        if length(varargin) == index || ~ischar(varargin{index})
            break;
        end

        % Recognize 'visible' P/V pair
        len1 = min(length('visible'),length(varargin{index}));
        len2 = min(length('off'),length(varargin{index+1}));
        if ischar(varargin{index+1}) && strncmpi(varargin{index},'visible',len1) && len2 > 1
            if strncmpi(varargin{index+1},'off',len2)
                gui_Visible = 'invisible';
                gui_VisibleInput = 'off';
            elseif strncmpi(varargin{index+1},'on',len2)
                gui_Visible = 'visible';
                gui_VisibleInput = 'on';
            end
        end
    end
    
    % Open fig file with stored settings.  Note: This executes all component
    % specific CreateFunctions with an empty HANDLES structure.

    
    % Do feval on layout code in m-file if it exists
    gui_Exported = ~isempty(gui_State.gui_LayoutFcn);
    % this application data is used to indicate the running mode of a GUIDE
    % GUI to distinguish it from the design mode of the GUI in GUIDE. it is
    % only used by actxproxy at this time.   
    setappdata(0,genvarname(['OpenGuiWhenRunning_', gui_State.gui_Name]),1);
    if gui_Exported
        gui_hFigure = feval(gui_State.gui_LayoutFcn, gui_SingletonOpt);

        % make figure invisible here so that the visibility of figure is
        % consistent in OpeningFcn in the exported GUI case
        if isempty(gui_VisibleInput)
            gui_VisibleInput = get(gui_hFigure,'Visible');
        end
        set(gui_hFigure,'Visible','off')

        % openfig (called by local_openfig below) does this for guis without
        % the LayoutFcn. Be sure to do it here so guis show up on screen.
        movegui(gui_hFigure,'onscreen');
    else
        gui_hFigure = local_openfig(gui_State.gui_Name, gui_SingletonOpt, gui_Visible);
        % If the figure has InGUIInitialization it was not completely created
        % on the last pass.  Delete this handle and try again.
        if isappdata(gui_hFigure, 'InGUIInitialization')
            delete(gui_hFigure);
            gui_hFigure = local_openfig(gui_State.gui_Name, gui_SingletonOpt, gui_Visible);
        end
    end
    if isappdata(0, genvarname(['OpenGuiWhenRunning_', gui_State.gui_Name]))
        rmappdata(0,genvarname(['OpenGuiWhenRunning_', gui_State.gui_Name]));
    end

    % Set flag to indicate starting GUI initialization
    setappdata(gui_hFigure,'InGUIInitialization',1);

    % Fetch GUIDE Application options
    gui_Options = getappdata(gui_hFigure,'GUIDEOptions');
    % Singleton setting in the GUI M-file takes priority if different
    gui_Options.singleton = gui_State.gui_Singleton;

    if ~isappdata(gui_hFigure,'GUIOnScreen')
        % Adjust background color
        if gui_Options.syscolorfig
            set(gui_hFigure,'Color', get(0,'DefaultUicontrolBackgroundColor'));
        end

        % Generate HANDLES structure and store with GUIDATA. If there is
        % user set GUI data already, keep that also.
        data = guidata(gui_hFigure);
        handles = guihandles(gui_hFigure);
        if ~isempty(handles)
            if isempty(data)
                data = handles;
            else
                names = fieldnames(handles);
                for k=1:length(names)
                    data.(char(names(k)))=handles.(char(names(k)));
                end
            end
        end
        guidata(gui_hFigure, data);
    end

    % Apply input P/V pairs other than 'visible'
    for index=1:2:length(varargin)
        if length(varargin) == index || ~ischar(varargin{index})
            break;
        end

        len1 = min(length('visible'),length(varargin{index}));
        if ~strncmpi(varargin{index},'visible',len1)
            try set(gui_hFigure, varargin{index}, varargin{index+1}), catch break, end
        end
    end

    % If handle visibility is set to 'callback', turn it on until finished
    % with OpeningFcn
    gui_HandleVisibility = get(gui_hFigure,'HandleVisibility');
    if strcmp(gui_HandleVisibility, 'callback')
        set(gui_hFigure,'HandleVisibility', 'on');
    end

    feval(gui_State.gui_OpeningFcn, gui_hFigure, [], guidata(gui_hFigure), varargin{:});

    if isscalar(gui_hFigure) && ishandle(gui_hFigure)
        % Handle the default callbacks of predefined toolbar tools in this
        % GUI, if any
        guidemfile('restoreToolbarToolPredefinedCallback',gui_hFigure); 
        
        % Update handle visibility
        set(gui_hFigure,'HandleVisibility', gui_HandleVisibility);

        % Call openfig again to pick up the saved visibility or apply the
        % one passed in from the P/V pairs
        if ~gui_Exported
            gui_hFigure = local_openfig(gui_State.gui_Name, 'reuse',gui_Visible);
        elseif ~isempty(gui_VisibleInput)
            set(gui_hFigure,'Visible',gui_VisibleInput);
        end
        if strcmpi(get(gui_hFigure, 'Visible'), 'on')
            figure(gui_hFigure);
            
            if gui_Options.singleton
                setappdata(gui_hFigure,'GUIOnScreen', 1);
            end
        end

        % Done with GUI initialization
        if isappdata(gui_hFigure,'InGUIInitialization')
            rmappdata(gui_hFigure,'InGUIInitialization');
        end

        % If handle visibility is set to 'callback', turn it on until
        % finished with OutputFcn
        gui_HandleVisibility = get(gui_hFigure,'HandleVisibility');
        if strcmp(gui_HandleVisibility, 'callback')
            set(gui_hFigure,'HandleVisibility', 'on');
        end
        gui_Handles = guidata(gui_hFigure);
    else
        gui_Handles = [];
    end

    if nargout
        [varargout{1:nargout}] = feval(gui_State.gui_OutputFcn, gui_hFigure, [], gui_Handles);
    else
        feval(gui_State.gui_OutputFcn, gui_hFigure, [], gui_Handles);
    end

    if isscalar(gui_hFigure) && ishandle(gui_hFigure)
        set(gui_hFigure,'HandleVisibility', gui_HandleVisibility);
    end
end

function gui_hFigure = local_openfig(name, singleton, visible)

% openfig with three arguments was new from R13. Try to call that first, if
% failed, try the old openfig.
if nargin('openfig') == 2
    % OPENFIG did not accept 3rd input argument until R13,
    % toggle default figure visible to prevent the figure
    % from showing up too soon.
    gui_OldDefaultVisible = get(0,'defaultFigureVisible');
    set(0,'defaultFigureVisible','off');
    gui_hFigure = openfig(name, singleton);
    set(0,'defaultFigureVisible',gui_OldDefaultVisible);
else
    gui_hFigure = openfig(name, singleton, visible);
end

function result = local_isInvokeActiveXCallback(gui_State, varargin)

try
    result = ispc && iscom(varargin{1}) ...
             && isequal(varargin{1},gcbo);
catch
    result = false;
end

function result = local_isInvokeHGCallbak(gui_State, varargin)

try
    fhandle = functions(gui_State.gui_Callback);
    result = ~isempty(findstr(gui_State.gui_Name,fhandle.file)) || ...
             (ischar(varargin{1}) ...
             && isequal(ishandle(varargin{2}), 1) ...
             && (~isempty(strfind(varargin{1},[get(varargin{2}, 'Tag'), '_'])) || ...
                ~isempty(strfind(varargin{1}, '_CreateFcn'))) );
catch
    result = false;
end



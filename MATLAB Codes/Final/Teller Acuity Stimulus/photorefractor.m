% photorefractor

close all; clear all; %pack
% Globals initialized in initvars
% global flags calcDone PIcoordsOD PIcoordsOS pupilCtrCoordsOD pupilCtrCoordsOS 
% global blurOD blurOS vergence  
% global clipODfig clipOSfig blurODfig blurOSfig
% global imageSource file video advanceFrame fullMovieFile
% global diagFlags
% global displayODhdl displayOShdl
% global lastMarkStatus markers
% global movieFig camera theMovie advanceFrame
% global patName camData MCdata
global trial_type
global monitor_status

initvars;
% Start SRB additions Sept 10th 2010
trial_type = input('Press 1 for step profile and 2 for ramp profile...');
    if trial_type == 1
        disp('Step profile initiated');
        disp('Make sure that you have set the framelimit to 3.75 for 60Hz and 7 for 30Hz. See doframes.m ln 154');
        monitor_status = [1 1 1 1 1 1 1 1]; % This will ensure that the stimulus starts at the same location every time (back or front)
        MCStepStim; pause;
    end
    if trial_type == 2
        disp('Ramp profile initiated');
        MCinit; % Motor controller MCinit(1)
    end
% End SRB additions Sept 10th 2010

useCamera = 0; %Set this to 0 for analyzing movie. Setting to 1 initializes livefeed. SRB Aug 11, 2009
usePulldowns = 1;  % If set, flag tells main program to replace Blur and
                   % Display checkboxes with pulldown menus
if strcmp(computer, 'PCWIN')
    if usePulldowns  % Which main program to call
        prguifig3;
    else
        h1 = prguiPC(); 
    end
    % camera code added July, 2009, KMH
    if 0  %useCamera  % TEMP code to test data cpollection
        camera = 0; % Tell cameraSet the camera struct doesn't exist yet
        option = 1; % = 0 to init camera to defaults, = 1 for interactive setting
        showPreview = 1; % Open preview window to view live feed
        mainInits;
        camera = cameraSet1(camera, option, showPreview); % PGR Dragonfly Express
        %camera = cameraSet2(camera, option, showPreview); % PGR FireFly
    end
elseif strcmp(computer, 'MAC') | strcmp(computer, 'MACI')
    if usePulldowns  % Which main program to call
        %prguifig;
        prguifig3; % Option to load camera as video source
    else
        h1 = prgui(); 
    end
else
    disp(['Exiting program: unknown computer type ' computer])
    return
end


function [camera camData] = cameraSet(camData, camera, option, showPreview)


if ~isstruct(camera)
    %'cameraSet initting camera struct', beep, keyboard

        if camData.useSampleImage
            vid_obj = 'Simulated vid_obj';
            src_obj = 'Simulated src_obj';
            info = 'Simulated imaqhwinfo(vid_obj';
        else
            %'cameraSet initting vid_obj, src_obj', beep, keyboard 
            imaqreset 
            vid_obj = videoinput('dcam', 1, 'Y8_640x480');  % OK
            %vid_obj = videoinput('dcam', 1, 'F7_Y8_648x242');
            src_obj = getselectedsource(vid_obj);% See propinfo(src_obj)
            %set(src_obj)  % Show options
            info = imaqhwinfo(vid_obj);
        end

    camera = struct('info', info, 'vid_obj', vid_obj, 'src_obj',...
        src_obj, 'status', []);
    status = struct('on', 1, 'initialized', 0, 'collect', 0);
    camera.status = status;
end

if ~camData.useSampleImage
    imaqmem(200000000); % Set memory that can be used by Imaq (2GB max)
end

switch camData.CamName
    case 'DragonFlyExpress'
        if camData.useSampleImage
            if isempty(camData.SampleImage), camData.SampleImage = 255*rand(camData.Height, camData.Width); end
        else
            %'cameraSet DragonFlyExpress', beep, camData, camera
            %keyboard
            set(camera.src_obj, 'FrameRate', num2str(camData.FrameRate)); % Select from camData.FrameRateList
            set(camera.src_obj, 'Gain', camData.Gain);  % See propinfo(camera.src_obj, 'Gain')
            set(camera.src_obj, 'Brightness', camData.Brightness);  
            set(camera.src_obj, 'AutoExposure', camData.AutoExposure);
            set(camera.src_obj, 'AutoExposureAbsolute', camData.AutoExposureAbsolute);
            set(camera.src_obj, 'Shutter', camData.Shutter);
            %set(camera.src_obj, 'ShutterAbsolute', camData.ShutterAbsolute);
            %set(camera.vid_obj, 'ROIPosition', [0     0   640   240]);  % This used to work
            set(camera.src_obj, 'FrameTimeout', 5000); % Default is 5000
            camera.status.initialized = 1;
            %keyboard
        end
    case 'FireFly'
        if camData.useSampleImage
            if isempty(camData.SampleImage), camData.SampleImage = 255*rand(camData.Height, camData.Width); end
        else
            set(camera.src_obj, 'FrameRate', num2str(camData.FrameRate)); % Select from camData.FrameRateList
            set(camera.src_obj, 'Gain', camData.Gain);  % See propinfo(camera.src_obj, 'Gain')
            set(camera.src_obj, 'Brightness', camData.Brightness);  
            set(camera.src_obj, 'AutoExposure', camData.AutoExposure);
            set(camera.src_obj, 'Shutter', camData.Shutter);
            set(camera.src_obj, 'ShutterAbsolute', camData.ShutterAbsolute);
            set(camera.src_obj, 'FrameTimeout', 5000); % Default is 5000
            camera.status.initialized = 1;
        end
    otherwise
        disp(['cameraSet err: camera name ' camData.CamName ' unknown';])
end

return

% Legacy code shown below for PGR Dragonfly Express camera

if showPreview
    preview(camera.vid_obj);
end

FrameRates = [ 60  30  15  7.5  3.75  1.75 ];
if option == 0 % Set to defaults
    set(camera.src_obj, 'FrameRate', '60'); % Select from FrameRates array
    set(camera.src_obj, 'Gain', 400)  % See propinfo(camera.src_obj, 'Gain'). Range [220 1023]
    set(camera.src_obj, 'Brightness', 255)  % Range [0 255]
    set(camera.src_obj, 'AutoExposure', 1000)% Range [1 1023]
    set(camera.src_obj, 'AutoExposureAbsolute', 2.4136)% Range [-7.5850 2.4136]
    set (camera.src_obj, 'Shutter', 645)% Range [0 645]
    set (camera.src_obj, 'ShutterAbsolute', .5)% Range [1.6451e-005 0.5330]
    %set(camera.vid_obj, 'ROIPosition', [0     0   640   240]);  % This works
    set(camera.src_obj, 'FrameTimeout', 5000); % Default is 5000
    camera.status.initialized = 1;
    if showPreview
        display('Close Preview window when finished positioning subject, then press Return'); pause 
    end
end

setFrameRate = 1; setGain = 1; setBrightness = 1; 
setAutoExposure = 1; setAutoExposureAbsolute = 1; 
setShutter = 1; setShutterAbsolute = 0;
if option == 1
    if setFrameRate
        FrameRate = 30; set(camera.src_obj, 'FrameRate', num2str(FrameRate));
        display('Set FrameRate, press return when finished:  '); 
        while ~isempty(FrameRate)
            FrameRate = input('Set FrameRate [60 (30) 15 7.5 3.75 1.75 ]:  ')
            if isempty(FrameRate)
                break
            elseif ~ismember(FrameRate, FrameRates)
                display('Invalid FrameRate');
                FrameRate = 30;
            else
                set(camera.src_obj, 'FrameRate', num2str(FrameRate));
            end
        end 
    end
    if setGain
        Gain = 400; minGain = 220; maxGain = 1023; 
        display('Set Gain, press return when finished:  '); 
        while ~isempty(Gain)
            Gain = input('Set Gain [220 1023]:  ')
            if ~isempty(Gain)
                if Gain < minGain; Gain = minGain; end
                if Gain > maxGain; Gain = maxGain; end
                set(camera.src_obj, 'Gain', Gain);
            end
        end 
    end
    if setBrightness
        Brightness = 255; minBrightness = 0; maxBrightness = 255; 
        display('Set Brightness, press return when finished:  '); 
        while ~isempty(Brightness)
            Brightness = input('Set Brightness [0 255]:  ')
            if ~isempty(Brightness)
                if Brightness < minBrightness; Brightness = minBrightness; end
                if Brightness > maxBrightness; Brightness = maxBrightness; end
                set(camera.src_obj, 'Brightness', Brightness);
            end
        end
    end
    if setAutoExposure
        AutoExposure = 1000; minAutoExposure = 1; maxAutoExposure = 1023; 
        display('Set AutoExposure, press return when finished:  '); 
        while ~isempty(AutoExposure)
            AutoExposure = input('Set AutoExposure [1 1023]:  ')
            if ~isempty(AutoExposure)
                if AutoExposure < minAutoExposure; AutoExposure = minAutoExposure; end
                if AutoExposure > maxAutoExposure; AutoExposure = maxAutoExposure; end
                set(camera.src_obj, 'AutoExposure', AutoExposure);
            end
        end
    end
    if setAutoExposureAbsolute
        AutoExposureAbsolute = 2.4136; minAutoExposureAbsolute = -7.5850 + .005; % Reported min need fudge factor
        maxAutoExposureAbsolute = 2.4136; 
        display('Set AutoExposureAbsolute, press return when finished:  '); 
        while ~isempty(AutoExposureAbsolute)
            AutoExposureAbsolute = input('Set AutoExposureAbsolute [-7.5850 2.4136]:  ')
            if ~isempty(AutoExposureAbsolute)
                if AutoExposureAbsolute < minAutoExposureAbsolute; AutoExposureAbsolute = minAutoExposureAbsolute; end
                if AutoExposureAbsolute > maxAutoExposureAbsolute; AutoExposureAbsolute = maxAutoExposureAbsolute; end
                set(camera.src_obj, 'AutoExposureAbsolute', AutoExposureAbsolute);
            end
        end
    end
    if setShutter
        Shutter = 645; minShutter = 0; maxShutter = 645; 
        display('Set Shutter, press return when finished:  '); 
        while ~isempty(Shutter)
            Shutter = input('Set Shutter [0 645]:  ')
            if ~isempty(Shutter)
                if Shutter < minShutter; Shutter = minShutter; end
                if Shutter > maxShutter; Shutter = maxShutter; end
                set(camera.src_obj, 'Shutter', Shutter);
            end
        end
    end
    if setShutterAbsolute
        ShutterAbsolute = .5; minShutterAbsolute = 1.6451e-005; maxShutterAbsolute = 0.5330; 
        display('Set ShutterAbsolute, press return when finished:  '); 
        while ~isempty(ShutterAbsolute)
            ShutterAbsolute = input('Set ShutterAbsolute [1.6451e-005 0.5330]:  ')
            while ~isempty(ShutterAbsolute)
                if ShutterAbsolute < minShutterAbsolute; ShutterAbsolute = minShutterAbsolute; end
                if ShutterAbsolute > maxShutterAbsolute; ShutterAbsolute = maxShutterAbsolute; end
                set(camera.src_obj, 'ShutterAbsolute', ShutterAbsolute);
            end
        end
    end
    camera.status.initialized = 1;
    if showPreview
        display('Close Preview window when finished positioning subject, then press Return'); pause 
    end
end



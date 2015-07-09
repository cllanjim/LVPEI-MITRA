function Fundus
    img = imread('2.jpg');
    imghandle = imshow(img);
    global numCalls;
    global pixelsPerDegree;
    global x_coords;
    global y_coords;
    numCalls = 0;
    pixelsPerDegree = 692 / 50;
    x_coords = [0, 0];
    y_coords = [0, 0];
    hold on;
    set(imghandle,'ButtonDownFcn',@mytestcallback);
    set(imghandle, 'UserData', numCalls);
end

function mytestcallback(objectHandle, eventData)
    global numCalls;
    global pixelsPerDegree;
    global x_coords;
    global y_coords;
    if numCalls == 2
        set(objectHandle, 'ButtonDownFcn', []);
        CalculateDistanceAndAngle;
        return;
    end
    numCalls = numCalls + 1;
    axesHandle  = get(objectHandle,'Parent');
    coordinates = get(axesHandle,'CurrentPoint'); 
    coordinates = coordinates(1,1:2);
    
    x_coords(numCalls) = coordinates(1);
    y_coords(numCalls) = coordinates(2);
    
    for i = 1:10
        plot(coordinates(1), coordinates(2), 'o', 'MarkerSize', pixelsPerDegree * i);
    end
end

function CalculateDistanceAndAngle

    global x_coords;
    global y_coords;
    delta_x = x_coords(2) - x_coords(1);
    delta_y = y_coords(2) - y_coords(1);
    distance = sqrt(delta_x * delta_x + delta_y * delta_y);
    disp('Distance : ');
    disp(distance);
    angle = atan(abs(delta_y / delta_x)) * 180 / pi;
    disp('Angle : ');
    disp(angle);
end
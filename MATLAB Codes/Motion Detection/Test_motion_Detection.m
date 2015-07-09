vid = videoinput('winvideo',2,'YUY2_640x480');

set(vid,'ReturnedColorSpace','rgb');
%if you are acquiring video from survillance camera through tv tuner card use this 
%Frame rate is good for such camera's
% Set video input object properties for this Intellicam project.
% Note that example uses both SET method and dot notation method.
set(vid,'TriggerRepeat',Inf);
vid.FrameGrabInterval = 5;
% Set value of a video source property.
vid_src = getselectedsource(vid);
set(vid_src,'Tag','Intellicam setup');

% Create a figure window.
figure; 

% Start acquiring frames.
start(vid)
% Calculate difference image and display it.
while(vid.FramesAcquired<=30) % Stop after 1000 frames
    data = getdata(vid,2); 
    diff_im = imabsdiff(data(:,:,:,1),data(:,:,:,2));
    diff = rgb2gray(diff_im);
    %diff_range = rangefilt(diff);
    %you can use the range filter for better analysis
    diff_bw = im2bw(diff,0.2);
    %noi_red = medfilt2(diff_bw,[3 3]);
    %if more noise then use median filter or weiner filt to remove salt n pepper noise
    %ulta = imadjust(diff_bw,[0;1],[1;0]);
    bw2 = imfill(diff_bw,'holes');%you can specify any other location
    s  = regionprops(bw2, 'centroid');
    cd = s.Centroid
    centroids = cat(1, s.Centroid);
    imshow(data(:,:,:,2));
    %imshow(diff_bw)
    hold(imgca,'on');
    plot(imgca,centroids(:,1),centroids(:,2),'g*');
   %imshow(diff_bw);
   %hold on;
   rectangle('Position',[cd 60 33],'LineWidth',1,'EdgeColor','b');%this is for edges
   hold(imgca,'off');
   
   %our default camera width x height is around 352 x 288
   %so width is 352 so i will set the threshold to 20 at left n 330 r 340 at the right
   %when ever my centroid reaches those threshold i will send 1 r 2 serially to pic to intimate it to rotate left or right

   if (cd(1)<=20)
     fprintf(ser, '%s','1');
          %cd(1) because we r considering width i.e X,u can change your threshold's
  elseif (cd(1) >= 330)
      fprintf(ser, '%s','2');
    end  
  %for normal webcam this program will work fine if you interface PIC then un comment required
end
fclose(ser);
stop(vid)
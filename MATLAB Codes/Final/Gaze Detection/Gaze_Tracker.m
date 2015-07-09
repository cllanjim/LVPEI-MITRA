clear all;
%w=cell(1,25)
% centroid=cell(1,25)
   
tic
imagefiles = dir('*.jpg');      
nfiles = length(imagefiles); 
w=cell(1,nfiles)
centroid=cell(1,nfiles)
a=cell(1,nfiles);% Number of files found

centeroid_main = [];

for ii=1:(nfiles)
   currentfilename = imagefiles(ii).name;
   w = imread(currentfilename);
   %images{ii} = w;

%w{i}=imread('b.jpg');
bin=im2bw(w,0.53);
f=edge(bin,'canny');
bw1=imfill(f, 'holes');
bw2=imsubtract(bw1,f);
bw3= bwareaopen(bw2, 500);
[B,L] = bwboundaries(bw3,'noholes');
figure, imshow(w)
hold on

% Find centroids of all objects
stats = regionprops(L,'Area','Centroid');

threshold = 0.70;

% loop over the boundaries
for k = 1:length(B)
    
    % obtain (X,Y) boundary coordinates corresponding to label 'k'
    boundary = B{k};
    
    % compute a simple estimate of the object's perimeter
    delta_sq = diff(boundary).^2;
    perimeter = sum(sqrt(sum(delta_sq,2)));
    
    % obtain the area calculation corresponding to label 'k'
    area = stats(k).Area;
    
    % compute the roundness metric
    metric = 4*pi*area/perimeter^2;
    
    % delete non circular objects
    if metric < threshold
        B{k}=[];
    end
    
    % mark objects above the threshold with a pointer and draw boundaries
    if metric > threshold
        boundary = B{k};
        plot(boundary(:,2), boundary(:,1), 'w', 'LineWidth', 2)
        centroid = stats(k).Centroid;
        plot(centroid(1),centroid(2),'*');
        text(centroid(:,1),centroid(:,2),['(' num2str(centroid(:,1)) ',' num2str(centroid(:,2)) ')'])
    end
    centeroid_main = [centeroid_main; centroid];
end

if centeroid_main(:,1) < 360
    text(100,100,'Right Gaze');
    Right_Gaze=1 ;
    Left_Gaze =0;
    
else if (centeroid_main(:,1) > 360 && centeroid_main(:,1) < 390)
    text(100,100,'Centre Gaze');
    
    else centeroid_main(:,1) > 390
        text(100,100,'Left Gaze');
        Left_Gaze=1;
        Right_Gaze=0;
        
end
end
end
toc
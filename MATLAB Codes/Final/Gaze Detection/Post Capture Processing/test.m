w=imread('retry.jpg'); %import image
bin=im2bw(w,0.53); %convert to binary
f=edge(bin,'canny'); %canny edge detection
% small object removal
bw1=imfill(f, 'holes'); 
bw2=imsubtract(bw1,f);
bw3= bwareaopen(bw2, 500);

% find boundaries
[B,L] = bwboundaries(bw3,'noholes');
imshow(w)
hold on

% find centroids of all objects
stats = regionprops(L,'Area','Centroid');

threshold = 0.7;

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
    end
    
end

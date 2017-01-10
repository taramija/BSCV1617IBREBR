%% Matlab Project IBR/EBR
%Groupe members:
%Khoi Pham (leader)
%Danie Sonizara
%Meldrick Reimmer
%Carlos Sauceda
%Selma Boudissa

%% Code

% load the picture
I = imread('test3.jpg');

% turn it into black and white
% we don't know if we should not turn the original into black and white
% the Harris function requires this type of image
grayImg = I(:,:,2);

% detect corners using Harris builtin function
corners = detectHarrisFeatures(grayImg);

% detect edges using Canny builtin function
edges = edge(grayImg,'Canny');

% plot edges and the original image 
imshow(grayImg); hold on;
imshow(edges);

% plot corner point using method from Harris
plot(corners.selectStrongest(150));

% speed of 2 points
% from here we got ideas but too many issues so we could not
% turn it into real work


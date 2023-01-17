close all;
clc;
clear;


% Laplace and Sobel Filters
inputimage1 = imread('moon.jpg');
 L = [0 1 0; 1 -4 1; 0 1 0];
Sx = [-1 0 1; -2 0 2; -1 0 1];
Sy = [-1 -2 -1; 0 0 0; 1 2 1];

i1 = conv2 (inputimage1, L, 'same');
inputimagei = uint8(inputimage1);
inputimagei = im2gray(inputimagei);
inputimagei = double(inputimagei);
i2 = zeros(size(inputimagei));

for i = 1:size(inputimagei, 1) - 2
    for j = 1:size(inputimagei, 2) - 2
        Gx = sum(sum(Sx.*inputimagei(i:i+2, j:j+2)));
        Gy = sum(sum(Sy.*inputimagei(i:i+2, j:j+2)));
        i2(i+1, j+1) = sqrt(Gx.^2 + Gy.^2); 
    end
end

figure
subplot(1,3,1),imshow(inputimage1),title('Original Image');
subplot(1,3,2),imshow(abs(i1)),title('Laplacian Filter');
subplot(1,3,3),imshow(abs(i2)),title('Sobel Filter');
i1 = uint8(i1);
i2 = uint8(i2);
figure
subplot(1,3,1),imshow(inputimage1),title('Original Image');
subplot(1,3,2),imshow(abs(inputimage1-i1)),title('Laplacian Sharpen');
subplot(1,3,3),imshow(abs(inputimage1-i2)),title('Sobel Sharpen');


% Morphological Operators/Filters: Open and Close
inputimage2 = imread('morphology.png');

se = strel('disk',4);
opened = imopen(inputimage2,se);
closed = imclose(inputimage2,se);

figure
subplot(1,3,1),imshow(inputimage2),title('Original Image');
subplot(1,3,2),imshow(opened),title('Open');
subplot(1,3,3),imshow(closed),title('Close');


% Morphological Filter and Median Filter
inputimage3 = imread('fingerprint_BW.png');

se = strel('disk',1);
morph = imopen(inputimage3,se);
i4 = imnoise(inputimage3,'salt & pepper',0.02);
med = medfilt2(rgb2gray(inputimage3));

figure
subplot(1,3,1),imshow(inputimage3),title('Original Image');
subplot(1,3,2),imshow(morph),title('Morphological Filter');
subplot(1,3,3),imshow(med),title('Median Filter');


% Thresholding & Connected Components
inputimage4 = imread('cell.jpg');
% i5 = convn(inputimage4, L, 'same');
gray =  graythresh(inputimage4);
i5 = imbinarize(inputimage4, gray);
count = bwconncomp(i5);
disp(struct2table(count));
fprintf("Number of cells in the image:\t\t%d\n",count.NumObjects);
numPixels = cellfun(@numel,count.PixelIdxList);
[biggest,idx] = max(numPixels);
%fprintf("Biggest connected component:\t\t%d\n",size(i5(count.PixelIdxList{idx})));
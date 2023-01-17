close all;
clc;
clear;

% Reading image
inputimage = imread('rose.jpg');

% Showing read image
figure,imshow(inputimage,[]);
[row,col,chan] = size(inputimage);
inputimage = double(inputimage);

% 1024 / 2 = 512
R = 2;

outimage2_downsample = zeros(round(row/R),round(col/R),chan);
for y = R:R:row
    for x = R:R:col
        for z=1:chan
            outimage2_downsample(round(y/R),round(x/R),z) = inputimage(y,x,z);
        end
    end
end
outimage2_downsample = uint8(outimage2_downsample);
figure,imshow(outimage2_downsample,[]);
imwrite(outimage2_downsample,'downsampled2.jpg','jpeg');

inputimage2 = outimage2_downsample;
outimage2_upsample = zeros(round(row),round(col),chan);
for y = R:R:row
    for x = R:R:col
        for z=1:chan
            outimage2_upsample(y-R+1:y,x-R+1:x,z) = inputimage2(round(y/R),round(x/R),z);
        end
    end
end
outimage2_upsample = uint8(outimage2_upsample);
figure,imshow(outimage2_upsample,[]);
imwrite(outimage2_upsample,'upsampled2.jpg','jpeg');

[row,col,chan] = size(inputimage);
outimage_grayscale = zeros(row,col,chan);

% 7-bit image i.e., 128 gray levels
N = 2;
for y = 1:1:row
    for x = 1:1:col
        for z=1:chan
            outimage_grayscale(y,x,z) = floor(double(inputimage(y,x,z))/(256/R));
        end
    end
end
for z=1:chan
    outimage_grayscale(:,:,z) = 255*(outimage_grayscale(:,:,z)-min(min(outimage_grayscale(:,:,z))))/max(max(outimage_grayscale(:,:,z)))-min(min(outimage_grayscale(:,:,z)));
end
outimage_grayscale = uint8(outimage_grayscale);
figure,imshow(outimage_grayscale,[]);
imwrite(outimage_grayscale,'grayscale7.jpg','jpg');

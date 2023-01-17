close all;
clc;
clear;

% log transformation and power law transformation
inputimage1 = imread('fourierspectrum.pgm');
norm1 = double(inputimage1)/255;
c = 2;
f = c*log(1 + (norm1));
g = 0.5;
p = c * double(norm1).^(double(g));
figure
subplot(1,3,1),imshow(inputimage1),title('Original Image');
subplot(1,3,2),imshow((f)),title('Log Transformation');
subplot(1,3,3),imshow(p),title('Power Law Transformation');


% histogram equalization
inputimage2 = imread('banker.jpeg');
figure
subplot(1,4,1)
imshow(inputimage2)
subplot(1,4,2)
imhist(inputimage2,64)
h = histeq(inputimage2);
subplot(1,4,3)
imshow(h)
subplot(1,4,4)
imhist(h,64)
fprintf("Mean of input image:\t\t%f\n",mean(imhist(inputimage2)));
fprintf("Mean of output image:\t\t%f\n",mean(imhist(h)));
fprintf("Std Dev of input image:\t\t%f\n",std(imhist(inputimage2)));
fprintf("Std Dev of output image:\t%f\n",std(imhist(h)));


% histogram equalization HIS intensity and RGB filter
inputimage3 = imread('strawberry.jpg');
red = inputimage3(:,:,1);
green = inputimage3(:,:,2);
blue = inputimage3(:,:,3);
figure
subplot(1,3,1)
imshow(red);
subplot(1,3,2)
imshow(green);
subplot(1,3,3)
imshow(blue);

figure
subplot(1,3,1)
imshow(red);
subplot(1,3,2)
imhist(red);
red_eq = histeq(red);
subplot(1,3,3)
imshow(red_eq);

figure
subplot(1,2,1)
imshow(inputimage3);
outputimage3 = cat(3, red_eq, green, blue);
subplot(1,2,2)
imshow(outputimage3);


% noise removal average and median filters in spatial domain
inputimage4 = imread('wizardofoznoisesquare.pgm');
n = imnoise(inputimage4, 'salt & pepper', 0.05);
average3 = filter2(fspecial('average',3),n)/255;
average5 = filter2(fspecial('average',5),n)/255;
average7 = filter2(fspecial('average',7),n)/255;
figure
subplot(1,4,1)
imshow(inputimage4)
subplot(1,4,2)
imshow(average3)
subplot(1,4,3)
imshow(average5)
subplot(1,4,4)
imshow(average7)

median3 = medfilt2(n, [3 3]);
median5 = medfilt2(n, [5 5]);
median7 = medfilt2(n, [7 7]);
figure
subplot(1,4,1)
imshow(inputimage4)
subplot(1,4,2)
imshow(median3)
subplot(1,4,3)
imshow(median5)
subplot(1,4,4)
imshow(median7)

figure
subplot(1,3,1)
imshow(inputimage4)
subplot(1,3,2)
imshow(average3)
subplot(1,3,3)
imshow(median3)

clc, clear, close all

img = imread('test1.jpg');

halfHeight = floor(size(img, 1) / 2);
halfWidth = floor(size(img, 2) / 2);

topLeft = img(1:halfHeight, 1:halfWidth, :);
topRight = img(1:halfHeight, (halfWidth + 1):end, :);
bottomLeft = img((halfHeight + 1):end, 1:halfWidth, :);
bottomRight = img((halfHeight + 1):end, (halfWidth + 1):end, :);

reconstructedImg = [topLeft topRight; bottomLeft bottomRight];
flippedImg = [bottomRight bottomLeft; topRight topLeft];

figure
imshow(img)

figure
imshow(flippedImg)
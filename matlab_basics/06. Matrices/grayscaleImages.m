clc, clear, close all

% 1.	Generate a random image, that is 500 by 500 pixels, and visualize it
% 2.	Extract the pixels that have a gradient over 180 and visualize them
% 3.	Increase the whiteness of gray gradients that are bellow 150 by 50% and visualize it
% 4.	Read a black and white image and visualize it
% 5.	Extract a subimage from the image and visualize it

% Initial Data
blackAndWhiteImage = randi([0 255], 500, 500);
chess = imread('chessBandW.jpg');

%% Converting The Data to Grayscale and Extracting Colors
% Convert the generated image to Grayscale
imageToGrayscale = mat2gray(blackAndWhiteImage, [0 255]);

% Extract Gray Gradients Over 180
mostlyWhiteImage = blackAndWhiteImage(blackAndWhiteImage > 180);
mostlyWhiteMat = vec2mat(mostlyWhiteImage, floor(sqrt(length(mostlyWhiteImage))));
mostlyWhiteMat = mostlyWhiteMat(1:end - (size(mostlyWhiteMat, 1) - (size(mostlyWhiteMat, 2))), :);
mostlyWhiteGrayscale = mat2gray(mostlyWhiteMat, [0 255]);

% Increase Black towards White by 80%
blackToWhiteImage = blackAndWhiteImage;
blackToWhiteImage(blackToWhiteImage(:, :) < 150) = blackToWhiteImage(blackToWhiteImage(:, :) < 150) * 1.8;
blackToWhiteGrayscale2 = mat2gray(blackToWhiteImage, [0 255]);
blackToWhiteGrayscale = uint8(blackToWhiteImage);

% Extract a Specific Piece from the Image
% row 87, col 870, height 300, width 170
chessFigureCol = 870;
chessFigureRow = 87;
chessFigureWidth = 170;
chessFigureHeight = 300;

chessFigure = chess(chessFigureRow:(chessFigureRow + chessFigureHeight),...
    chessFigureCol:(chessFigureCol + chessFigureWidth));

%% Visualize the Images
% Figure creates a new window for each image
figure
imshow(imageToGrayscale)

figure
imshow(blackToWhiteGrayscale)

figure
imshow(mostlyWhiteGrayscale)

figure
imshow(chess)

figure
imshow(chessFigure)
%%Lab2
img = imread('coloredChips.png');%importing image 
figure(1), imshow(img);%displaying original image(pre adjustment)
%Create menu for color selection
disp('Welcome the the color conversion program, please select the color to be converted') %Introduction to the program
disp('The list of colors to be converted:')
disp('r for red');
disp('g for green');
disp('y for yellow');
disp('b for blue');
disp('c for cyan');
disp('o for orange');
disp('m for magneta');
disp('w for white');
color_seletion = input('Enter the color you want to change to black: ', 's');%prompting user to select color
color_change = color_conversion(img, color_seletion); %Call the function in to color_change
figure(2), imshow(color_change);%Show the image after using color conversion function
title('Color Conversion Program');%Add the title for the program
clc %automatically clear the command window

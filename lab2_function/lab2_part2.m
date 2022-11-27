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
image_row = size(img, 1);%get rows of the image
image_col = size(img, 2);%get coloumns of image
figure(2), imshow(color_conversion(img, color_seletion));%Show the image after using color conversion function
title('Color Conversion Program');%Add the title for the program

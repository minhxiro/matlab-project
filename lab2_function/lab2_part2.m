%%Lab2
img = imread('coloredChips.png');
figure(1), imshow(img);
%Create menu for color selection
disp('The list of colors to be converted:')
disp('r for red');
disp('g for green');
disp('y for yellow');
disp('b for blue');
disp('c for cyan');
disp('o for orange');
disp('m for magneta');
disp('w for white');
color_seletion = input('Enter the color you want to change to black: ', 's');
image_row = size(img, 1);
image_col = size(img, 2);
figure(2), imshow(color_conversion(img, color_seletion));
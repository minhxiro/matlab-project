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
copy = img;
image_row = size(img, 1);
image_col = size(img, 2);
switch color_seletion
    case 'r'
        for row = 1 : image_row
            for col = 1: image_col
                if(copy(row,col,1) >= 200 && copy(row,col,2) <= 55 && copy(row,col,2) >= 5 && copy(row,col,3) <= 90 && copy(row,col,3) >= 15)
                    copy(row,col,1) = 0;
                    copy(row,col,2) = 0;
                    copy(row,col,3) = 0;
                end
            end
        end
    case 'g'
        for row = 1: image_row
            for col = 1 : image_col
                if(copy(row,col,1) <= 50 && copy(row,col,2) >= 100 && copy(row,col,2) <=250 && copy(row,col,3) <= 150 && copy(row,col,3) >= 56)
                    copy(row,col,1) = 0;
                    copy(row,col,2) = 0;
                    copy(row,col,3) = 0;
                end
            end
        end
    case 'b'
        for row = 1: image_row
            for col = 1 : image_col
                if(copy(row,col,1) <= 20 && copy(row,col,2) <= 100 && copy(row,col,2) >= 45 && copy(row,col,3) >= 150)
                    copy(row,col,1) = 0;
                    copy(row,col,2) = 0;
                    copy(row,col,3) = 0;
                end
            end
        end
     case 'y'
        for row = 1: image_row
            for col = 1 : image_col
                if(copy(row,col,1) >=200 && copy(row,col,2) >= 200 && copy(row,col,3) <= 60)
                    copy(row,col,1) = 0;
                    copy(row,col,2) = 0;
                    copy(row,col,3) = 0;
                end
            end
        end
      case 'o'
        for row = 1: image_row
            for col = 1 : image_col
                if(copy(row,col,1) >=200 && copy(row,col,2) <= 120 && copy(row,col,2) >= 40 && copy(row,col,3) <= 60)
                    copy(row,col,1) = 0;
                    copy(row,col,2) = 0;
                    copy(row,col,3) = 0;
                end
            end
        end
    otherwise
        disp('Incorrect selection');
end
figure(2), imshow(copy);

function [copy, choice] = color_conversion(img, color_selection)
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
copy = img;
choice = color_selection;
image_row = size(img, 1);
image_col = size(img, 2);
switch choice
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
                if(copy(row,col,1) >=119 && copy(row,col,2) <= 120 && copy(row,col,2) >= 40 && copy(row,col,3) <= 60 || (copy(row,col,1) >=130 && copy(row,col,2) <= 140 && copy(row,col,2) >= 20 && copy(row,col,3) <= 20))
                    copy(row,col,1) = 0;
                    copy(row,col,2) = 0;
                    copy(row,col,3) = 0;
                end
            end
        end
      case 'c'
        for row = 1: image_row
            for col = 1 : image_col
                if(copy(row,col,1) <= 55 && copy(row,col,2) >= 140 && copy(row,col,3) >= 140)
                    copy(row,col,1) = 0;
                    copy(row,col,2) = 0;
                    copy(row,col,3) = 0;
                end
            end
        end
      case 'w'
        for row = 1: image_row
            for col = 1 : image_col
                if(copy(row,col,1) >= 62 && copy(row,col,2) >= 62 && copy(row,col,3) >= 62)
                    copy(row,col,1) = 0;
                    copy(row,col,2) = 0;
                    copy(row,col,3) = 0;
                end
            end
        end 
       case 'm'
        for row = 1: image_row
            for col = 1 : image_col
                if(copy(row,col,1) >= 90 && copy(row,col,2) <= 100 && copy(row,col,3) >= 120)
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
end
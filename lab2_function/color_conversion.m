function [copy, choice] = color_conversion(img, color_selection) % Declare each output argument for each input argument of the function
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
copy = img; % Make sure input and output arguement are equal to each other
choice = color_selection;% Make sure input and output arguement are equal to each other
image_row = size(copy, 1);%get rows of the copy image
image_col = size(copy, 2);%get rows of the copy image
switch choice %switch case to determine which color is gonna be changed
    case 'r' %Case red
        for row = 1 : image_row % iterate from first row to the final row of image
            for col = 1: image_col % iterate from first coloumn to the final coloumn of image
                if(copy(row,col,1) >= 200 && copy(row,col,2) <= 60 && copy(row,col,3) <= 90)% setting color range of desired pixels using RGB values
                    copy(row,col,1) = 0;% turning red value to black
                    copy(row,col,2) = 0;% turning green value to black
                    copy(row,col,3) = 0;% turning blue value to black
                end
            end
        end
    case 'g' %Case green
        for row = 1: image_row% iterate from first row to the final row of image
            for col = 1 : image_col% iterate from first coloumn to the final coloumn of image
                if(copy(row,col,1) <= 50 && copy(row,col,2) >= 100 && copy(row,col,2) <=250 && copy(row,col,3) <= 150 && copy(row,col,3) >= 56)% setting color range of desired pixels using RGB values
                    copy(row,col,1) = 0;% turning red value to black
                    copy(row,col,2) = 0;% turning green value to black
                    copy(row,col,3) = 0;% turning blue value to black
                end
            end
        end
    case 'b' %Case blue
        for row = 1: image_row% iterate from first row to the final row of image
            for col = 1 : image_col% iterate from first coloumn to the final coloumn of image
                if(copy(row,col,1) <= 20 && copy(row,col,2) <= 100 && copy(row,col,2) >= 45 && copy(row,col,3) >= 150)% setting color range of desired pixels using RGB values
                    copy(row,col,1) = 0;% turning red value to black
                    copy(row,col,2) = 0;% turning green value to black
                    copy(row,col,3) = 0;% turning blue value to black
                end
            end
        end
    case 'y'%Case yellow
        for row = 1: image_row% iterate from first row to the final row of image
            for col = 1 : image_col% iterate from first coloumn to the final coloumn of image
                if(copy(row,col,1) >=200 && copy(row,col,2) >= 200 && copy(row,col,3) <= 60)% setting color range of desired pixels using RGB values
                    copy(row,col,1) = 0;% turning red value to black
                    copy(row,col,2) = 0;% turning green value to black
                    copy(row,col,3) = 0;% turning blue value to black
                end
            end
        end
    case 'o'%Case orange
        for row = 1: image_row% iterate from first row to the final row of image
            for col = 1 : image_col% iterate from first coloumn to the final coloumn of image
                % setting color range of desired pixels using RGB values
                if(copy(row,col,1) >=119 && copy(row,col,2) <= 120 && copy(row,col,2) >= 40 && copy(row,col,3) <= 60 || (copy(row,col,1) >=130 && copy(row,col,2) <= 140 && copy(row,col,2) >= 20 && copy(row,col,3) <= 20))
                    copy(row,col,1) = 0;% turning red value to black
                    copy(row,col,2) = 0;% turning green value to black
                    copy(row,col,3) = 0;% turning blue value to black
                end
            end
        end
    case 'c'%Case cyan
        for row = 1: image_row% iterate from first row to the final row of image
            for col = 1 : image_col% iterate from first coloumn to the final coloumn of image
                if(copy(row,col,1) <= 55 && copy(row,col,2) >= 140 && copy(row,col,3) >= 140)% setting color range of desired pixels using RGB values
                    copy(row,col,1) = 0;% turning red value to black
                    copy(row,col,2) = 0;% turning green value to black
                    copy(row,col,3) = 0;% turning blue value to black
                end
            end
        end
    case 'w' %Case Background
        for row = 1: image_row% iterate from first row to the final row of image
            for col = 1 : image_col % iterate from first coloumn to the final coloumn of image
                if(copy(row,col,1) >= 62 && copy(row,col,2) >= 62 && copy(row,col,3) >= 62) % setting color range of desired pixels using RGB values
                    copy(row,col,1) = 0;% turning red value to black
                    copy(row,col,2) = 0;% turning green value to black
                    copy(row,col,3) = 0;% turning blue value to black
                end
            end
        end 
    case 'm' %Case magenta
        for row = 1: image_row% iterate from first row to the final row of image
            for col = 1 : image_col% iterate from first coloumn to the final coloumn of image
                if(copy(row,col,1) >= 90 && copy(row,col,2) <= 100 && copy(row,col,3) >= 120)% setting color range of desired pixels using RGB values
                    copy(row,col,1) = 0;% turning red value to black
                    copy(row,col,2) = 0;% turning green value to black
                    copy(row,col,3) = 0;% turning blue value to black
                end
            end
        end 
    otherwise
        disp('Incorrect selection'); %Print out the error message for invalid selection
end
end

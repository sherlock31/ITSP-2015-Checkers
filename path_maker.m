function [vecX,vecY]= path_maker(binary_image)

%[vecX, vecY] = 
    global copy_thres;
    global r;
    global c;
    copy_thres =binary_image;
    global vecX;
    global vecY;  

    vecX=[1,zeros(1,500)];   %origin setting and preallocating array
    vecY=[1,zeros(1,500)];   %origin setting and preallocating array

       %disp(vecX(1));
       %disp(vecY(1));
    counter=2;
    [not_finished,vecX(counter),vecY(counter)]=near_one();
    
    while(counter<500)
%         disp(vecX(counter));
%         disp(vecY(counter));
        [check,newX,newY] = check_adj(vecX(counter),vecY(counter));
        counter=counter+1;

        if(check && not_finished)    %when there is adj element as one
            vecX(counter)=newX;
            vecY(counter)=newY;

        elseif( not(check) && not_finished)    %when there is no adj element as one
            [not_finished,vecX(counter),vecY(counter)]=near_one();
            if(~not_finished)
                break;
            end
            
        else    %when all elements are zero
            break;
        end
        
    end
    
    vecX(counter)= 1;
    vecY(counter)= c;
    
    
end     %end of function


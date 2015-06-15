function [not_finished,temp_i,temp_j] = near_one()
% disp('near one');
global copy_thres;
temp_i=1;
temp_j=1;

global r;       %the rows and columns of the instantaneous value of copy_thres are made global becuase we need the value in send_signal in order to
global c;       %order the bot to move to new origin

[r,c] = size(copy_thres);
not_finished= false;
for i= 1:1:r
    for j= 1:1:c
        if(copy_thres(i,j)==1)
                not_finished = true;
                temp_i=i;
                temp_j=j;
                copy_thres(i,j)=0;
%                  disp('value of newx =');
%                  disp(temp_i);
%                  disp('value of newy=');
%                  disp(temp_j);
                break;            
        end
    end
    if(not_finished==true)
        break;
    end
end

end


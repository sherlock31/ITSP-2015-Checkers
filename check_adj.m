function [output,newX,newY] = check_adj(currX,currY)
%disp('check_adj');
%disp('adjacent called withx =');
% disp(currX);
% disp('adjacent called with y=');
% disp(currY);

global copy_thres;
%copy_thres=thresholdedimage
[r,c] = size(copy_thres);

if (currX == 1 || currX == r || currY == 1 || currY == c)
    
    %If the element is on the boundary of the array, then Don't Do
    %Anything. Since there is no true element of the letter on the boundary
    
elseif (copy_thres(currX+1,currY)==1 && currX<r )
    output = true;
    copy_thres(currX,currY)=0;
    newX=currX+1;
    newY=currY;
%     disp('value of newx =');
%     disp(newX);
%     disp('value of newy=');
%     disp(newY);
    
elseif (copy_thres(currX+1,currY+1)==1 && currX<r && currY<c )
    output = true;
    copy_thres(currX,currY)=0;
    newX=currX+1;
    newY=currY+1;
%      disp('value of newx =');
%     disp(newX);
%     disp('value of newy=');
%     disp(newY);
elseif (copy_thres(currX,currY+1)==1 && currY<c )
    output=true;
    copy_thres(currX,currY)=0;
    newX=currX;
    newY=currY+1;
%      disp('value of newx =');
%     disp(newX);
%     disp('value of newy=');
%     disp(newY);
elseif ( copy_thres(currX-1,currY+1) && currX>1 && currY<c)
    output=true;
    copy_thres(currX,currY)=0;
    newX=currX-1;
    newY=currY+1;
%      disp('value of newx =');
%     disp(newX);
%     disp('value of newy=');
%     disp(newY);
elseif (copy_thres(currX-1,currY)==1 && currX>1)
    output=true;
    copy_thres(currX,currY)=0;
    newX=currX-1;
    newY=currY;
%      disp('value of newx =');
%     disp(newX);
%     disp('value of newy=');
%     disp(newY);
elseif (copy_thres(currX-1,currY-1)==1 && currX>1 && currY>1)
    output=true;
    copy_thres(currX,currY)=0;
    newX=currX-1;
    newY=currY-1;
%      disp('value of newx =');
%     disp(newX);
%     disp('value of newy=');
%     disp(newY);
elseif (copy_thres(currX,currY-1)==1 && currY>1)
    output=true;
    copy_thres(currX,currY)=0;
    newX=currX;
    newY=currY-1;
%      disp('value of newx =');
%     disp(newX);
%     disp('value of newy=');
%     disp(newY);
elseif (copy_thres(currX+1,currY-1)==1 && currY>=2 && currX<r)
    output=true;
    copy_thres(currX,currY)=0;
    newX=currX+1;
    newY=currY-1;
%     disp('value of newx =');
%     disp(newX);
%     disp('value of newy=');
%     disp(newY);
else
    output = false;
    newX = 2;
    newY = 2;
%      disp('value of newx =');
%     disp(newX);
%     disp('value of newy=');
%     disp(newY);
end  %end of function

end

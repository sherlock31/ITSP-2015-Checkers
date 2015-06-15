function send_signal_sketcher()

global vecX;
global vecY;
% global r;
% global c;

    curr=1;
    % vecX and vecY contain the coordinates where there is one in such an order
    % that the motor can write. We have declared vecX and vecY global in
    % path_maker.m file. curr is a variable which represents the current
    % coordinate.
    %The movement of the pen is always Position_final - Position_initial

    last = size(vecX);  %size of vecX and vecY is the same

    while(curr<last && vecX(curr)~=0)
        if( abs(vecX(curr)-vecX(curr+1))~=1 || abs(vecY(curr)-vecY(curr+1))~=1)
           pen_up();  %calling a function that will send signal to arduino to move the pen accordingly
           pen_motion(vecX(curr+1)-vecX(curr),vecY(curr+1)-vecY(curr));  %this condition will only be true when
           pen_down();               %vec(curr+1) is not adjacent
        else
            pen_motion(vecX(curr+1)-vecX(curr),vecY(curr+1)-vecY(curr));    
                              %calling function that will send signal to arduino to move the pen to new adjacent location
                              %else if the vec(curr+1) block is adjacent, send
                              %correct signal
        end
        
%         curr=curr+1;
    end
    
    pen_motion(c-vecX(end), 1-vecY(end));

end
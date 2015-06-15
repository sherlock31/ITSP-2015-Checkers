function send_signal(X,Y)

 vecX=X;
 vecY=Y;
global r;
global c;

%global arduinox;
%global arduinoy;

arduinox=arduino('COM6'); % create serial communication object on port COM4
arduinoy=arduino('COM8');
%fopen(arduinox); % initiate arduino communication
pause(0.15);
%fopen(arduinoy); % initiate arduino communication
pause(0.15);
pinMode(arduinox,2,'output');
pinMode(arduinox,6,'output');
pinMode(arduinox,7,'output');
pinMode(arduinoy,6,'output');
pinMode(arduinoy,7,'output');
pinMode(arduinoy,2,'output');
pinMode(arduinoy,3,'output');



    curr=1;
    % vecX and vecY contain the coordinates where there is one in such an order
    % that the motor can write. We have declared vecX and vecY global in
    % pat h_maker.m file. curr is a variable which represents the current
    % coordinate.
    %The movement of the pen is always Position_final - Position_initial

    [temp,last] = size(vecX);  %size of vecX and vecY is the same

    while(curr<last & vecX(curr)~=0)
        
        xdiff=vecX(curr+1)-vecX(curr);
        ydiff=vecY(curr+1)-vecY(curr);
        
        if(abs(vecX(curr)-vecX(curr+1))~=1 |abs(vecY(curr)-vecY(curr+1))~=1)
          
            % pen_up();  %calling a function that will send signal to arduino to move the pen accordingly
            digitalWrite(arduinox,2,1); 
            pause(0.15);
            %pen_motion(vecX(curr+1)-vecX(curr),vecY(curr+1)-vecY(curr));  %this condition will only be true when
           
            
            if(xdiff>0)
            digitalWrite(arduinox,7,0);
            pause(0.15);
            analogWrite(arduinox,6,2*abs(xdiff));
            pause(0.15);
            end

            if(xdiff<0)
            digitalWrite(arduinox,7,1);
            pause(0.15);
            analogWrite(arduinox,6,2*abs(xdiff));
            pause(0.15);
            end
    
            if(ydiff>0)
            digitalWrite(arduinoy,7,0);
            pause(0.15);
            analogWrite(arduinoy,6,2*abs(ydiff));
            pause(2*ydiff/150);
            end
            
            if(ydiff<0)
            digitalWrite(arduinoy,7,1);
            pause(0.15);
            analogWrite(arduinoy,6,2*abs(ydiff));
            pause(2*ydiff/150);
            end 
        end  
         % pen_down();               %vec(curr+1) is not adjacent
            digitalWrite(arduinox,2,0)
        pause(0.15);
       if(abs(vecX(curr)-vecX(curr+1))==1 | abs(vecY(curr)-vecY(curr+1))==1)
            %pen_motion(vecX(curr+1)-vecX(curr),vecY(curr+1)-vecY(curr));    
          
            if(xdiff>0)
             digitalWrite(arduinox,7,0);
             pause(0.15);
             analogWrite(arduinox,6,2*abs(xdiff));
             pause(0.15);
             end

             if(xdiff<0)
             digitalWrite(arduinox,7,1);
             pause(0.15);
             analogWrite(arduinox,6,2*abs(xdiff));
             pause(0.15);
             end
    
             if(ydiff>0)
             digitalWrite(arduinoy,7,0);
             pause(0.15);
             analogWrite(arduinoy,6,2*abs(ydiff));
             pause(2*ydiff/150);
             end
             if(ydiff<0)
             digitalWrite(arduinoy,7,1);
             pause(0.15);
             analogWrite(arduinoy,6,2*abs(ydiff));
             pause(2*ydiff/150);
             end                                                                       %calling function that will send signal to arduino to move the pen to new adjacent location
                                                                                    %else if the vec(curr+1) block is adjacent, send
                                                                                    %correct signal
        end
        
        curr=curr+1;
    end
    
    %pen_motion(c-vecX(end), 1-vecY(end));
delete(arduinox);
delete(arduinoy);
end
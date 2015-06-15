% function pen_motion(xdiff,ydiff )
% %UNTITLED2 Summary of this function goes here
% %   Detailed explanation goes here
% global arduinox;
% global arduinoy;
% 
% 
% if(xdiff>0)
%     digitalWrite(arduinox,7,0);
%     pause(0.15);
%     AnalogWrite(arduinox,6,2*abs(xdiff));
%     pause(0.15);
% end
% 
%  if(xdiff<0)
%     digitalWrite(arduinox,7,1);
%     pause(0.15);
%     AnalogWrite(arduinox,6,2*abs(xdiff));
%     pause(0.15);
%     end
%     
%     if(ydiff>0)
%         digitalWrite(arduinoy,7,0);
%         pause(0.15);
%         AnalogWrite(arduinoy,6,2*abs(ydiff);
%         pause(0.15);
%     end
%     if(ydiff<0)
%         digitalWrite(arduinoy,7,1);
%         pause(0.15);
%         AnalogWrite(arduinoy,6,2*abs(ydiff));
%         pause(0.15);
%     end
%     
%     end
% 

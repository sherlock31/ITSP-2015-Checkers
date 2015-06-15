function[ ] = Ultimate_Final_Sketcher(str )
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
image1=process_image(str);
[x,y]=path_maker(image1);
send_signal(x,y);


end


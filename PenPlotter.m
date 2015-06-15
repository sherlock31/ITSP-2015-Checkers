global old_file;        %OBSERVE: this variable has been mentioned at the appropriate position in write_document_old_user    
global new_file;        %OBSERVE: this variable has been mentioned at the appropriate position in write_document_new_user
global arduinox;
global arduinoy;

load('username.mat');

prompt = {'Enter Username'};
dlg_title = 'Username';
num_lines= 1;
new_username = inputdlg(prompt, dlg_title, num_lines);
str_username = cellstr(new_username);

already_entered = 0;

for k = 1:length(vec_username)
    if(isequal(vec_username(k),str_username))
        already_entered = 1;
        break;
    end
end

if(already_entered == 1)
    str = char(new_username); 
    old_file = strcat(str, '.mat');
    write_document_old_user; %yet to declare 
else
    vec_username = [vec_username ; str_username];  
    save('username.mat', 'vec_username');
    str = char(new_username); 
    new_file = strcat(str, '.mat');
    %clear;              %clear was done becuase when we save a file, al the variables in the workspace gets stored in it! :-P
    save(new_file);     %all the path of the letters chosen by the new user will be store in this!
    write_document_new_user; %yet to declare the gui and its functions
end


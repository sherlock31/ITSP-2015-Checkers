function varargout = write_document_new_user(varargin)
% WRITE_DOCUMENT_NEW_USER MATLAB code for write_document_new_user.fig
%      WRITE_DOCUMENT_NEW_USER, by itself, creates a new WRITE_DOCUMENT_NEW_USER or raises the existing
%      singleton*.
%
%      H = WRITE_DOCUMENT_NEW_USER returns the handle to a new WRITE_DOCUMENT_NEW_USER or the handle to
%      the existing singleton*.
%
%      WRITE_DOCUMENT_NEW_USER('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in WRITE_DOCUMENT_NEW_USER.M with the given input arguments.
%
%      WRITE_DOCUMENT_NEW_USER('Property','Value',...) creates a new WRITE_DOCUMENT_NEW_USER or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before write_document_new_user_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to write_document_new_user_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help write_document_new_user

% Last Modified by GUIDE v2.5 10-Jun-2015 05:31:05

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @write_document_new_user_OpeningFcn, ...
                   'gui_OutputFcn',  @write_document_new_user_OutputFcn, ...
                   'gui_LayoutFcn',  [] , ...
                   'gui_Callback',   []);
if nargin && ischar(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end
% End initialization code - DO NOT EDIT

end
% --- Executes just before write_document_new_user is made visible.
function write_document_new_user_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to write_document_new_user (see VARARGIN)

% Choose default command line output for write_document_new_user
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes write_document_new_user wait for user response (see UIRESUME)
% uiwait(handles.figure1);
end

% --- Outputs from this function are returned to the command line.
function varargout = write_document_new_user_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;
end

% --- Executes on button press in select_document.
function select_document_Callback(hObject, eventdata, handles)
% hObject    handle to select_document (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
disp('selecting text file');
[filename,pathname] = uigetfile('*.txt','Select The Text File');
%disp(filename);
str= strcat(pathname,filename);
%disp(str);
global fID;      %this is global as it is going to be used in write_document
fID = fopen(str);
disp('text file selected');

end

% --- Executes on button press in select_images.
function select_images_Callback(hObject, eventdata, handles)
% hObject    handle to select_images (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
i=1;
while(i<2)
    [filenameA,pathnameA] = uigetfile({'*.jpg';'*.jpeg'}, 'Select the letter A');
    strA = strcat(pathnameA,filenameA);

%     [filenameB,pathnameB] = uigetfile({'*.jpg';'*.jpeg'}, 'Select the letter B');
%     strB = strcat(pathnameB,filenameB);
% 
%     [filenameC,pathnameC] = uigetfile({'*.jpg';'*.jpeg'}, 'Select the letter C');
%     strC = strcat(pathnameC,filenameC);
% 
%     [filenameD,pathnameD] = uigetfile({'*.jpg';'*.jpeg'}, 'Select the letter D');
%     strD = strcat(pathnameD,filenameD);
% 
%     [filenameE,pathnameE] = uigetfile({'*.jpg';'*.jpeg'}, 'Select the letter E');
%     strE = strcat(pathnameE,filenameE);
% 
%     [filenameF,pathnameF] = uigetfile({'*.jpg';'*.jpeg'}, 'Select the letter F');
%     strF = strcat(pathnameF,filenameF);
% 
%     [filenameG,pathnameG] = uigetfile({'*.jpg';'*.jpeg'}, 'Select the letter G');
%     strG = strcat(pathnameG,filenameG);
% 
%     [filenameH,pathnameH] = uigetfile({'*.jpg';'*.jpeg'}, 'Select the letter H');
%     strH = strcat(pathnameH,filenameH);
% 
%     [filenameI,pathnameI] = uigetfile({'*.jpg';'*.jpeg'}, 'Select the letter I');
%     strI = strcat(pathnameI,filenameI);
% 
%     [filenameJ,pathnameJ] = uigetfile({'*.jpg';'*.jpeg'}, 'Select the letter J');
%     strJ = strcat(pathnameJ,filenameJ);
% 
%     [filenameK,pathnameK] = uigetfile({'*.jpg';'*.jpeg'}, 'Select the letter K');
%     strK = strcat(pathnameK,filenameK);
% 
%     [filenameL,pathnameL] = uigetfile({'*.jpg';'*.jpeg'}, 'Select the letter L');
%     strL = strcat(pathnameL,filenameL);
% 
%     [filenameM,pathnameM] = uigetfile({'*.jpg';'*.jpeg'}, 'Select the letter M');
%     strM = strcat(pathnameM,filenameM);
% 
%     [filenameN,pathnameN] = uigetfile({'*.jpg';'*.jpeg'}, 'Select the letter N');
%     strN = strcat(pathnameN,filenameN);
% 
%     [filenameO,pathnameO] = uigetfile({'*.jpg';'*.jpeg'}, 'Select the letter O');
%     strO = strcat(pathnameO,filenameO);
% 
%     [filenameP,pathnameP] = uigetfile({'*.jpg';'*.jpeg'}, 'Select the letter P');
%     strP = strcat(pathnameP,filenameP);
% 
%     [filenameQ,pathnameQ] = uigetfile({'*.jpg';'*.jpeg'}, 'Select the letter Q');
%     strQ = strcat(pathnameQ,filenameQ);
% 
%     [filenameR,pathnameR] = uigetfile({'*.jpg';'*.jpeg'}, 'Select the letter R');
%     strR = strcat(pathnameR,filenameR);
% 
%     [filenameS,pathnameS] = uigetfile({'*.jpg';'*.jpeg'}, 'Select the letter S');
%     strS = strcat(pathnameS,filenameS);
% 
%     [filenameT,pathnameT] = uigetfile({'*.jpg';'*.jpeg'}, 'Select the letter T');
%     strT = strcat(pathnameT,filenameT);
% 
%     [filenameU,pathnameU] = uigetfile({'*.jpg';'*.jpeg'}, 'Select the letter U');
%     strU = strcat(pathnameU,filenameU);
% 
%     [filenameV,pathnameV] = uigetfile({'*.jpg';'*.jpeg'}, 'Select the letter V');
%     strV = strcat(pathnameV,filenameV);
% 
%     [filenameW,pathnameW] = uigetfile({'*.jpg';'*.jpeg'}, 'Select the letter W');
%     strW = strcat(pathnameW,filenameW);
% 
%     [filenameX,pathnameX] = uigetfile({'*.jpg';'*.jpeg'}, 'Select the letter X');
%     strX = strcat(pathnameX,filenameX);
% 
%     [filenameY,pathnameY] = uigetfile({'*.jpg';'*.jpeg'}, 'Select the letter Y');
%     strY = strcat(pathnameY,filenameY);
% 
%     [filenameZ,pathnameZ] = uigetfile({'*.jpg';'*.jpeg'}, 'Select the letter Z');
%     strZ = strcat(pathnameZ,filenameZ);
%     
%       % asking for input of small alphabets
%       
%     [filenamea,pathnamea] = uigetfile({'*.jpg';'*.jpeg'}, 'Select the letter a');
%     stra = strcat(pathnamea,filenamea);
% 
%     [filenameb,pathnameb] = uigetfile({'*.jpg';'*.jpeg'}, 'Select the letter b');
%     strb = strcat(pathnameb,filenameb);
% 
%     [filenamec,pathnamec] = uigetfile({'*.jpg';'*.jpeg'}, 'Select the letter c');
%     strc = strcat(pathnamec,filenamec);
% 
%     [filenamed,pathnamed] = uigetfile({'*.jpg';'*.jpeg'}, 'Select the letter d');
%     strd = strcat(pathnamed,filenamed);
% 
%     [filenamee,pathnamee] = uigetfile({'*.jpg';'*.jpeg'}, 'Select the letter e');
%     stre = strcat(pathnamee,filenamee);
% 
%     [filenamef,pathnamef] = uigetfile({'*.jpg';'*.jpeg'}, 'Select the letter f');
%     strf = strcat(pathnamef,filenamef);
% 
%     [filenameg,pathnameg] = uigetfile({'*.jpg';'*.jpeg'}, 'Select the letter g');
%     strg = strcat(pathnameg,filenameg);
% 
%     [filenameh,pathnameh] = uigetfile({'*.jpg';'*.jpeg'}, 'Select the letter h');
%     strh = strcat(pathnameh,filenameh);
% 
%     [filenamei,pathnamei] = uigetfile({'*.jpg';'*.jpeg'}, 'Select the letter i');
%       stri = strcat(pathnamei,filenamei);
% 
%     [filenamej,pathnamej] = uigetfile({'*.jpg';'*.jpeg'}, 'Select the letter j');
%     strj = strcat(pathnamej,filenamej);
% 
%     [filenamek,pathnamek] = uigetfile({'*.jpg';'*.jpeg'}, 'Select the letter k');
%     strk = strcat(pathnamek,filenamek);
% 
%     [filenamel,pathnamel] = uigetfile({'*.jpg';'*.jpeg'}, 'Select the letter l');
%     strl = strcat(pathnamel,filenamel);
% 
%     [filenamem,pathnamem] = uigetfile({'*.jpg';'*.jpeg'}, 'Select the letter m');
%     strm = strcat(pathnamem,filenamem);
% 
%     [filenamen,pathnamen] = uigetfile({'*.jpg';'*.jpeg'}, 'Select the letter n');
%     strn = strcat(pathnamen,filenamen);
% 
%     [filenameo,pathnameo] = uigetfile({'*.jpg';'*.jpeg'}, 'Select the letter o');
%     stro = strcat(pathnameo,filenameo);
% 
%     [filenamep,pathnamep] = uigetfile({'*.jpg';'*.jpeg'}, 'Select the letter p');
%     strp = strcat(pathnamep,filenamep);
% 
%     [filenameq,pathnameq] = uigetfile({'*.jpg';'*.jpeg'}, 'Select the letter q');
%     strq = strcat(pathnameq,filenameq);
% 
%     [filenamer,pathnamer] = uigetfile({'*.jpg';'*.jpeg'}, 'Select the letter r');
%     strr = strcat(pathnamer,filenamer);
% 
%     [filenames,pathnames] = uigetfile({'*.jpg';'*.jpeg'}, 'Select the letter s');
%     strs = strcat(pathnames,filenames);
% 
%     [filenamet,pathnamet] = uigetfile({'*.jpg';'*.jpeg'}, 'Select the letter t');
%     strt = strcat(pathnamet,filenamet);
% 
%     [filenameu,pathnameu] = uigetfile({'*.jpg';'*.jpeg'}, 'Select the letter u');
%     stru = strcat(pathnameu,filenameu);
% 
%     [filenamev,pathnamev] = uigetfile({'*.jpg';'*.jpeg'}, 'Select the letter v');
%     strv = strcat(pathnamev,filenamev);
% 
%     [filenamew,pathnamew] = uigetfile({'*.jpg';'*.jpeg'}, 'Select the letter w');
%     strw = strcat(pathnamew,filenamew);
% 
%     [filenamex,pathnamex] = uigetfile({'*.jpg';'*.jpeg'}, 'Select the letter x');
%     strx = strcat(pathnamex,filenamex);
% 
%     [filenamey,pathnamey] = uigetfile({'*.jpg';'*.jpeg'}, 'Select the letter y');
%     stry = strcat(pathnamey,filenamey);
% 
%     [filenamez,pathnamez] = uigetfile({'*.jpg';'*.jpeg'}, 'Select the letter z');
%     strz = strcat(pathnamez,filenamez);
    
  % asking for paths of numbers
  
%     [filename0,pathname0] = uigetfile({'*.jpg';'*.jpeg'}, 'Select the number 0');
%     str0= strcat(pathname0,filename0);
% 
%     [filename1,pathname1] = uigetfile({'*.jpg';'*.jpeg'}, 'Select the number 1');
%     str1 = strcat(pathname1,filename1);
% 
%     [filename2,pathname2] = uigetfile({'*.jpg';'*.jpeg'}, 'Select the number 2');
%     str2 = strcat(pathname2,filename2);
% 
%     [filename3,pathname3] = uigetfile({'*.jpg';'*.jpeg'}, 'Select the number 3');
%     str3 = strcat(pathname3,filename3);
% 
%     [filename4,pathname4] = uigetfile({'*.jpg';'*.jpeg'}, 'Select the number 4');
%     str4 = strcat(pathname4,filename4);
% 
%     [filename5,pathname5] = uigetfile({'*.jpg';'*.jpeg'}, 'Select the number 5');
%     str5 = strcat(pathname5,filename5);
% 
%     [filename6,pathname6] = uigetfile({'*.jpg';'*.jpeg'}, 'Select the letter 6');
%     str6 = strcat(pathname6,filename6);
% 
%     [filename7,pathname7] = uigetfile({'*.jpg';'*.jpeg'}, 'Select the letter 7');
%     str7 = strcat(pathname7,filename7);
% 
%     [filename8,pathname8] = uigetfile({'*.jpg';'*.jpeg'}, 'Select the letter 8');
%     str8 = strcat(pathname8,filename8);
% 
%     [filename9,pathname9] = uigetfile({'*.jpg';'*.jpeg'}, 'Select the letter 9');
%     str9 = strcat(pathname9,filename9);

    i=i+1;
end      %Setting the computer path for each letter chosen by the user from computer
disp('Strings containing paths are selected');

global vecX;
global vecY;
global new_file;     %this is the mat file for the new user
global vecA; %global vecB; global vecC; global vecD; global vecE; global vecF; global vecG; global vecH; global vecI; global vecJ; global vecK; global vecL; global vecM; global vecN; global vecO; global vecP; global vecQ; global vecR; global vecS; global vecT; global vecU; global vecV; global vecW; global vec_X; global vec_Y; global vecZ;
global vecx_A;
global vecy_A;

%global veca; global vecb; global vecc; global vecd; global vece; global vecf; global vecg; global vech; global veci; global vecj; global veck; global vecl; global vecm; global vecn; global veco; global vecp; global vecq; global vecr; global vecs; global vect; global vecu; global vecv; global vecw; global vec_x; global vec_y; global vecz;
%global vec0; global vec1; global vec2; global vec3; global vec4; global vec5; global vec6; global vec7; global vec8; global vec9;
%global arduinox;
%global arduinoy;
%global arduinox; % create serial communication object on port COM6
%global arduinoy;

% arduinox = arduino('COM2');
% arduinoy = arduino('COM3');
% fopen(arduinox); % initiate arduino communication
% pause(0.15);
% fopen(arduinoy); % initiate arduino communication
% pause(0.15);
% pinMode(arduinox,2,'output');
% pinMode(arduinox,6,'output');
% pinMode(arduinox,7,'output');
% pinMode(arduinoy,6,'output');
% pinMode(arduinoy,6,'output');
% pinMode(arduinoy,2,'output');
% pinMode(arduinoy,3,'output');
%there are made global because they will be used in write_document part :-)

disp('Processing images to get path coordinates');
i=1;
while(i<2)
    binaryA = process_image(strA);
    path_maker(binaryA);
    %vecA = [vecX ; vecY];
    vecx_A = vecX;
    vecy_A = vecY
    
    disp('Processed A');
    
%     binaryB = process_image(strB); 
%     path_maker(binaryB);
%     vecB = [vecX ; vecY];
%     disp('Processed B');
% 
%     binaryC = process_image(strC);
%     path_maker(binaryC);
%     vecC = [vecX ; vecY];
%     disp('Processed C'); 
% 
%     binaryD = process_image(strD);
%     path_maker(binaryD);
%     vecD = [vecX ; vecY];
%     disp('Processed D'); 
% 
%     binaryE = process_image(strE);
%     path_maker(binaryE);
%     vecE = [vecX ; vecY];
%     disp('Processed E');
% 
%     binaryF = process_image(strF);
%     path_maker(binaryF); 
%     vecF = [vecX ; vecY];
%     disp('Processed F');
% 
%     binaryG = process_image(strG);
%     path_maker(binaryG); 
%     vecG = [vecX ; vecY];
%     disp('Processed G');
% 
%     binaryH = process_image(strH);
%     path_maker(binaryH); 
%     vecH = [vecX ; vecY];
%     disp('Processed H');
%     
%     binaryI = process_image(strI);
%     path_maker(binaryI);
%     vecI = [vecX ; vecY];
%     disp('Processed I');
% 
%     binaryJ = process_image(strJ);
%     path_maker(binaryJ);
%     vecJ = [vecX ; vecY];
%     disp('Processed J');
% 
%     binaryK = process_image(strK);
%     path_maker(binaryK);
%     vecK = [vecX ; vecY];
%     disp('Processed K');
% 
%     binaryL = process_image(strL);
%     path_maker(binaryL); 
%     vecL = [vecX ; vecY];
%     disp('Processed L');
% 
%     binaryM = process_image(strM);
%     path_maker(binaryM);
%     vecM = [vecX ; vecY];
%     disp('Processed M');
% 
%     binaryN = process_image(strN); 
%     path_maker(binaryN);
%     vecN = [vecX ; vecY];
%     disp('Processed N');
% 
%     binaryO = process_image(strO);
%     path_maker(binaryO); 
%     vecO = [vecX ; vecY];
%     disp('Processed O');
% 
%     binaryP = process_image(strP);  %Attempted to access copy_thres(127,100); index out of bounds because size(copy_thres)=[126,101].
%     path_maker(binaryP);            %Error in check_adj (line 11)  if (copy_thres(currX+1,currY)==1 && currX<r )
%     vecP = [vecX ; vecY];
%     disp('Processed P');
% 
%     binaryQ = process_image(strQ);
%     path_maker(binaryQ);
%     vecQ = [vecX ; vecY];
%     disp('Processed Q'); 
% 
%     binaryR = process_image(strR);
%     path_maker(binaryR); 
%     vecR = [vecX ; vecY];
%     disp('Processed R');
% 
%     binaryS = process_image(strS);
%     path_maker(binaryS);
%     vecS = [vecX ; vecY];
%     disp('Processed S');
% 
%     binaryT = process_image(strT);
%     path_maker(binaryT);
%     vecT = [vecX ; vecY];
%     disp('Processed T');
% 
%     binaryU = process_image(strU);
%     path_maker(binaryU);
%     vecU = [vecX ; vecY];
%     disp('Processed U');
% 
%     binaryV = process_image(strV);
%     path_maker(binaryV);
%     vecV = [vecX ; vecY];
%     disp('Processed V');
% 
%     binaryW = process_image(strW);
%     path_maker(binaryW); 
%     vecW = [vecX ; vecY];
%     disp('Processed W');
% 
%     binaryX = process_image(strX);
%     path_maker(binaryX); 
%     vec_X = [vecX ; vecY];
%     disp('Processed X');
% 
%     binaryY = process_image(strY);
%     path_maker(binaryY); 
%     vec_Y = [vecX ; vecY];
%     disp('Processed Y');
% 
%     binaryZ = process_image(strZ);
%     path_maker(binaryZ); 
%     vecZ = [vecX ; vecY];
%     disp('Processed Z');
%     
%     
%      %small alphabets
%     binarya = process_image(stra);
%     path_maker(binarya);
%     veca = [vecX ; vecY];
%    
%     binaryb = process_image(strb); 
%     path_maker(binaryb);
%     vecb = [vecX ; vecY];
% 
%     binaryc = process_image(strC);
%     path_maker(binaryc);
%     vecc = [vecX ; vecY]; 
% 
%     binaryd = process_image(strd);
%     path_maker(binaryd);
%     vecd = [vecX ; vecY]; 
% 
%     binarye = process_image(stre);
%     path_maker(binarye);
%     vece = [vecX ; vecY];
% 
%     binaryf = process_image(strf);
%     path_maker(binaryf); 
%     vecf = [vecX ; vecY];
% 
%     binaryg = process_image(strg);
%     path_maker(binaryg); 
%     vecg = [vecX ; vecY];
% 
%     binaryh = process_image(strh);
%     path_maker(binaryh); 
%     vech = [vecX ; vecY];
% 
%     binaryi = process_image(stri);
%     path_maker(binaryi);
%     veci = [vecX ; vecY];
% 
%     binaryj = process_image(strj);
%     path_maker(binaryj);
%     vecj = [vecX ; vecY];
% 
%     binaryk = process_image(strk);
%     path_maker(binaryk);
%     veck = [vecX ; vecY];
% 
%     binaryl = process_image(strl);
%     path_maker(binaryl); 
%     vecl = [vecX ; vecY];
% 
%     binarym = process_image(strm);
%     path_maker(binarym);
%     vecm = [vecX ; vecY];
% 
%     binaryn = process_image(strn); 
%     path_maker(binaryn);
%     vecn = [vecX ; vecY];
% 
%     binaryo = process_image(stro);
%     path_maker(binaryo); 
%     veco = [vecX ; vecY];
% 
%     binaryp = process_image(strp);
%     path_maker(binaryp); 
%     vecp = [vecX ; vecY];
% 
%     binaryq = process_image(strq);
%     path_maker(binaryq);
%     vecq = [vecX ; vecY]; 
% 
%     binaryr = process_image(strr);
%     path_maker(binaryr); 
%     vecr = [vecX ; vecY];
% 
%     binarys = process_image(strs);
%     path_maker(binarys);
%     vecs = [vecX ; vecY];
% 
%     binaryt = process_image(strt);
%     path_maker(binaryt);
%     vect = [vecX ; vecY];
% 
%     binaryu = process_image(stru);
%     path_maker(binaryu);
%     vecu = [vecX ; vecY];
% 
%     binaryv = process_image(strv);
%     path_maker(binaryv);
%     vecv = [vecX ; vecY];
% 
%     binaryw = process_image(strw);
%     path_maker(binaryw); 
%     vecw = [vecX ; vecY];
% 
%     binaryx = process_image(strx);
%     path_maker(binaryx); 
%     vec_x = [vecX ; vecY];
% 
%     binaryy = process_image(stry);
%     path_maker(binaryy); 
%     vec_y = [vecX ; vecY];
% 
%     binaryz = process_image(strz);
%     path_maker(binaryz); 
%     vecz = [vecX ; vecY];
%     
%    %numbers
%     binary0 = process_image(str0);
%     path_maker(binary0);
%     vec0 = [vecX ; vecY];
%     
%     binary1 = process_image(str1); 
%     path_maker(binary1);
%     vec1 = [vecX ; vecY];
% 
%     binary2 = process_image(str2);
%     path_maker(binary2);
%     vec2 = [vecX ; vecY]; 
% 
%     binary3 = process_image(str3);
%     path_maker(binary3);
%     vec3 = [vecX ; vecY]; 
% 
%     binary4 = process_image(str4);
%     path_maker(binary4);
%     vec4 = [vecX ; vecY];
% 
%     binary5 = process_image(str5);
%     path_maker(binary5); 
%     vec5 = [vecX ; vecY];
% 
%     binary6 = process_image(str6);
%     path_maker(binary6); 
%     vec6 = [vecX ; vecY];
% 
%     binary7 = process_image(str7);
%     path_maker(binary7); 
%     vec7 = [vecX ; vecY];
% 
%     binary8 = process_image(str8);
%     path_maker(binary8);
%     vec8 = [vecX ; vecY];
% 
%     binary9 = process_image(str9);
%     path_maker(binary9);
%     vec9 = [vecX ; vecY];
%     
%     
%     
    
    disp('paths all selected');
    
    save(new_file,'vecx_A','vecy_A');% 'vecB', 'vecC', 'vecD', 'vecE', 'vecF', 'vecG', 'vecH', 'vecI', 'vecJ', 'vecK', 'vecL', 'vecM', 'vecN', 'vecO', 'vecP', 'vecQ', 'vecR', 'vecS', 'vecT', 'vecU', 'vecV', 'vec_X', 'vec_Y', 'vecZ');
    disp('path of coordinates of all the letters saved');
    
    i=i+1;
end   %saving the path of coordinates of every image in the name of the username

end

% --- Executes on button press in write_document.
function write_document_Callback(hObject, eventdata, handles)
% hObject    handle to write_document (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


%global arduinox;
%global arduinoy;

global vecX;
global vecY;
global fID;
global vecx_A;
global vecy_A;
global vecA; %global vecB; global vecC; global vecD; global vecE; global vecF; global vecG; global vecH; global vecI; global vecJ; global vecK; global vecL; global vecM; global vecN; global vecO; global vecP; global vecQ; global vecR; global vecS; global vecT; global vecU; global vecV; global vecW; global vec_X; global vec_Y; global vecZ
%global veca; global vecb; global vecc; global vecd; global vece; global vecf; global vecg; global vech; global veci; global vecj; global veck; global vecl; global vecm; global vecn; global veco; global vecp; global vecq; global vecr; global vecs; global vect; global vecu; global vecv; global vecw; global vec_x; global vec_y; global vecz;
%global vec0; global vec1; global vec2; global vec3; global vec4; global vec5; global vec6; global vec7; global vec8; global vec9;
disp('writing document');
%digitalWrite(arduinoy,2,1);
%pause(0.05);
%digitalWrite(arduinoy,3,0);
while ~feof(fID)
    curr = fscanf(fID,'%c',1);
        
%     if curr=='e'
%           vecX = vece(1,:);
%           vecY = vece(2,:);
%           send_signal();
%       
%       elseif curr=='t'
%           vecX = vect(1,:);
%           vecY = vect(2,:);
%           send_signal();
%       
%       elseif curr=='a'
%           vecX = veca(1,:);
%           vecY = veca(2,:);
%           send_signal();
%          
%       elseif curr=='o'
%           vecX = veco(1,:);
%           vecY = veco(2,:);
%           send_signal();
%          
%       elseif curr=='i'
%           vecX = veci(1,:);
%           vecY = veci(2,:);
%           send_signal();
%       
%       elseif curr=='n'
%           vecX = vecn(1,:);
%           vecY = vecn(2,:);
%           send_signal();
%       
%       elseif curr=='s'
%           vecX = vecs(1,:);
%           vecY = vecs(2,:);
%           send_signal();
%       
%       elseif curr=='r'
%           vecX = vecr(1,:);
%           vecY = vecr(2,:);
%           send_signal();
%      
%       elseif curr=='h'
%           vecX = vech(1,:);
%           vecY = vech(2,:);
%           send_signal();
%       
%       elseif curr=='d'
%           vecX = vecd(1,:);
%           vecY = vecd(2,:);
%           send_signal();
%       
%       elseif curr=='l'
%           vecX = vecl(1,:);
%           vecY = vecl(2,:);
%           send_signal();
%       
%       elseif curr=='u'
%           vecX = vecu(1,:);
%           vecY = vecu(2,:);
%           send_signal();
%       
%       elseif curr=='c'
%           vecX = vecc(1,:);
%           vecY = vecc(2,:);
%           send_signal();
%       
%       elseif curr=='m'
%           vecX = vecm(1,:);
%           vecY = vecm(2,:);
%           send_signal();
%       
%       elseif curr=='f'
%           vecX = vecf(1,:);
%           vecY = vecf(2,:);
%           send_signal();
%       
%       elseif curr=='y'
%           vecX = vec_y(1,:);
%           vecY = vec_y(2,:);
%           send_signal();
%       
%       elseif curr=='w'
%           vecX = vecw(1,:);
%           vecY = vecw(2,:);
%           send_signal();
%       
%       elseif curr=='g'
%           vecX = vecg(1,:);
%           vecY = vecg(2,:);
%           send_signal();
%       
%       elseif curr=='p'
%           vecX = vecp(1,:);
%           vecY = vecp(2,:);
%           send_signal();
%       
%       elseif curr=='b'
%           vecX = vecb(1,:);
%           vecY = vecb(2,:);
%           send_signal();
%       
%       elseif curr=='v'
%           vecX = vecv(1,:);
%           vecY = vecv(2,:);
%           send_signal();
%       
%       elseif curr=='k'
%           vecX = veck(1,:);
%           vecY = veck(2,:);
%           send_signal();
%       
%       elseif curr=='x'
%           vecX = vec_x(1,:);
%           vecY = vec_x(2,:);
%           send_signal();
%       
%       elseif curr=='q'
%           vecX = vecq(1,:);
%           vecY = vecq(2,:);
%           send_signal();
%       
%       elseif curr=='j'
%           vecX = vecj(1,:);
%           vecY = vecj(2,:);
%           send_signal();
%       
%       elseif curr=='z'
%           vecX = vecz(1,:);
%           vecY = vecz(2,:);
%           send_signal();
%     
%           %checking for capital alphabets
%     
%      elseif curr==' '
%         pen_motion(0,200);
%        
%      elseif curr=='E'
%           vecX = vecE(1,:);
%           vecY = vecE(2,:);
%           send_signal();
%       
%       elseif curr=='T'
%           vecX = vecT(1,:);
%            vecY = vecT(2,:);
%           send_signal();
      
      if curr=='A'
          vecX = vecx_A;
          vecY = vecy_A;
          send_signal();
      end
      
         
%       elseif curr=='O'
%           vecX = vecO(1,:);
%           vecY = vecO(2,:);
%           send_signal();
%          
%       elseif curr=='I'
%           vecX = vecI(1,:);
%           vecY = vecI(2,:);
%           send_signal();
%       
%       elseif curr=='N'
%           vecX = vecN(1,:);
%           vecY = vecN(2,:);
%           send_signal();
%       
%       elseif curr=='S'
%           vecX = vecS(1,:);
%           vecY = vecS(2,:);
%           send_signal();
%       
%       elseif curr=='R'
%           vecX = vecR(1,:);
%           vecY = vecR(2,:);
%           send_signal();
%      
%       elseif curr=='H'
%           vecX = vecH(1,:);
%           vecY = vecH(2,:);
%           send_signal();
%       
%       elseif curr=='D'
%           vecX = vecD(1,:);
%           vecY = vecD(2,:);
%           send_signal();
%       
%       elseif curr=='L'
%           vecX = vecL(1,:);
%           vecY = vecL(2,:);
%           send_signal();
%       
%       elseif curr=='U'
%           vecX = vecU(1,:);
%           vecY = vecU(2,:);
%           send_signal();
%       
%       elseif curr=='C'
%           vecX = vecC(1,:);
%           vecY = vecC(2,:);
%           send_signal();
%       
%       elseif curr=='M'
%           vecX = vecM(1,:);
%           vecY = vecM(2,:);
%           send_signal();
%       
%       elseif curr=='F'
%           vecX = vecF(1,:);
%           vecY = vecF(2,:);
%           send_signal();
%       
%       elseif curr=='Y'
%           vecX = vec_Y(1,:);
%           vecY = vec_Y(2,:);
%           send_signal();
%       
%       elseif curr=='W'
%           vecX = vecW(1,:);
%           vecY = vecW(2,:);
%           send_signal();
%       
%       elseif curr=='G'
%           vecX = vecG(1,:);
%           vecY = vecG(2,:);
%           send_signal();
%       
%       elseif curr=='P'
%           vecX = vecP(1,:);
%           vecY = vecP(2,:);
%           send_signal();
%       
%       elseif curr=='B'
%           vecX = vecB(1,:);
%           vecY = vecB(2,:);
%           send_signal();
%       
%       elseif curr=='V'
%           vecX = vecV(1,:);
%           vecY = vecV(2,:);
%           send_signal();
%       
%       elseif curr=='K'
%           vecX = vecK(1,:);
%           vecY = vecK(2,:);
%           send_signal();
%       
%       elseif curr=='X'
%           vecX = vec_X(1,:);
%           vecY = vec_X(2,:);
%           send_signal();
%       
%       elseif curr=='Q'
%           vecX = vecQ(1,:);
%           vecY = vecQ(2,:);
%           send_signal();
%       
%       elseif curr=='J'
%           vecX = vecJ(1,:);
%           vecY = vecJ(2,:);
%           send_signal();
%       
%       elseif curr=='Z'
%           vecX = vecZ(1,:);
%           vecY = vecZ(2,:);
%           send_signal();
%      
%        %checking for numbers
%        
%        elseif curr=='0'
%           vecX = vec0(1,:);
%           vecY = vec0(2,:);
%           send_signal();
%       
%       elseif curr=='1'
%           vecX = vec1(1,:);
%           vecY = vec1(2,:);
%           send_signal();
%       
%       elseif curr=='2'
%           vecX = vec2(1,:);
%           vecY = vec2(2,:);
%           send_signal();
%          
%       elseif curr=='3'
%           vecX = vec3(1,:);
%           vecY = vec3(2,:);
%           send_signal();
%          
%       elseif curr=='4'
%           vecX = vec4(1,:);
%           vecY = vec4(2,:);
%           send_signal();
%       
%       elseif curr=='5'
%           vecX = vec5(1,:);
%           vecY = vec5(2,:);
%           send_signal();
%       
%       elseif curr=='6'
%           vecX = vec6(1,:);
%           vecY = vec6(2,:);
%           send_signal();
%       
%       elseif curr=='7'
%           vecX = vec7(1,:);
%           vecY = vec7(2,:);
%           send_signal();
%      
%       elseif curr=='8'
%           vecX = vec8(1,:);
%           vecY = vec8(2,:);
%           send_signal();
%       
%       elseif curr=='9'
%           vecX = vec9(1,:);
%           vecY = vec9(2,:);
%           send_signal(); 
%     
%     
%       else
%           continue;
%       end
end%checks the letter and ordering bot to write
% digitalWrite(arduinoy,2,0);
% pause(0.05);
% digitalWrite(arduinoy,3,1);
% fclose(arduinox); % end communication with arduino
 %fclose(arduinoy); % end communication with arduino
% delete(arduinox);
% delete(arduinoy);
 disp('document written');

end
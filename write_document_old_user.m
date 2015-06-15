function varargout = write_document_old_user(varargin)
%WRITE_DOCUMENT_OLD_USER M-file for write_document_old_user.fig
%      WRITE_DOCUMENT_OLD_USER, by itself, creates a new WRITE_DOCUMENT_OLD_USER or raises the existing
%      singleton*.
%
%      H = WRITE_DOCUMENT_OLD_USER returns the handle to a new WRITE_DOCUMENT_OLD_USER or the handle to
%      the existing singleton*.
%
%      WRITE_DOCUMENT_OLD_USER('Property','Value',...) creates a new WRITE_DOCUMENT_OLD_USER using the
%      given property value pairs. Unrecognized properties are passed via
%      varargin to write_document_old_user_OpeningFcn.  This calling syntax produces a
%      warning when there is an existing singleton*.
%
%      WRITE_DOCUMENT_OLD_USER('CALLBACK') and WRITE_DOCUMENT_OLD_USER('CALLBACK',hObject,...) call the
%      local function named CALLBACK in WRITE_DOCUMENT_OLD_USER.M with the given input
%      arguments.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help write_document_old_user

% Last Modified by GUIDE v2.5 10-Jun-2015 05:16:24

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @write_document_old_user_OpeningFcn, ...
                   'gui_OutputFcn',  @write_document_old_user_OutputFcn, ...
                   'gui_LayoutFcn',  [], ...
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


% --- Executes just before write_document_old_user is made visible.
function write_document_old_user_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   unrecognized PropertyName/PropertyValue pairs from the
%            command line (see VARARGIN)

% Choose default command line output for write_document_old_user
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes write_document_old_user wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = write_document_old_user_OutputFcn(hObject, eventdata, handles)
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in write_document.
function write_document_Callback(hObject, eventdata, handles)
% hObject    handle to write_document (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global vecX;
global vecY;
global fID;
global vecx_A;
global vecy_A;

global vecA;% global vecB; global vecC; global vecD; global vecE; global vecF; global vecG; global vecH; global vecI; global vecJ; global vecK; global vecL; global vecM; global vecN; global vecO; global vecP; global vecQ; global vecR; global vecS; global vecT; global vecU; global vecV; global vecW; global vec_X; global vec_Y; global vecZ
%global veca; global vecb; global vecc; global vecd; global vece; global vecf; global vecg; global vech; global veci; global vecj; global veck; global vecl; global vecm; global vecn; global veco; global vecp; global vecq; global vecr; global vecs; global vect; global vecu; global vecv; global vecw; global vec_x; global vec_y; global vecz;
%global vec0; global vec1; global vec2; global vec3; global vec4; global vec5; global vec6; global vec7; global vec8; global vec9;
global old_file;


% global arduinox;
% global arduinoy;
% arduinox=arduino('COM6'); % create serial communication object on port COM4
% arduinoy=arduino('COM7');
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


load(old_file);
%global vecA; global vecB; global vecC; global vecD; global vecE; global vecF; global vecG; global vecH; global vecI; global vecJ; global vecK; global vecL; global vecM; global vecN; global vecO; global vecP; global vecQ; global vecR; global vecS; global vecT; global vecU; global vecV; global vecW; global vec_X; global vec_Y; global vecZ
%here there is warning that vecABCD are not declared....but once old_file
%is loaded in the workspace, vecABCD can be used.
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
%       elseif curr==' '
%         pen_motion(0,200);
%           
%        elseif curr=='E'
%           vecX = vecE(1,:);
%           vecY = vecE(2,:);
%           send_signal();
%       
%       elseif curr=='T'
%           vecX = vecT(1,:);
%           vecY = vecT(2,:);
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
end     %checks the letter and ordering bot to write
% digitalWrite(arduinoy,2,1);
% pause(0.05);
% digitalWrite(arduinoy,3,0);
% fclose(arduinox); % end communication with arduino
% fclose(arduinoy); % end communication with arduino
disp('document written');


% --- Executes on button press in select_document.
function select_document_Callback(hObject, eventdata, handles)
% hObject    handle to select_document (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

global old_file;    
disp(old_file);%this is the mat file for the old user. in this the path of every letter is stored. we are going to use this.
load(old_file);      %loading the path of all the saved letters in the workspace
                     %now all the paths are loaded in the workspace. using them we are going to write the selected documnet.
disp('selecting text file');
[filename,pathname] = uigetfile('*.txt','Select The Text File');
%disp(filename);
str= strcat(pathname,filename);
%disp(str);

global fID;
fID = fopen(str); %using fID in write document part above
disp('text file selected');



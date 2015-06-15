function varargout = Sketcher(varargin)
% SKETCHER MATLAB code for Sketcher.fig
%      SKETCHER, by itself, creates a new SKETCHER or raises the existing
%      singleton*.
%
%      H = SKETCHER returns the handle to a new SKETCHER or the handle to
%      the existing singleton*.
%
%      SKETCHER('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in SKETCHER.M with the given input arguments.
%
%      SKETCHER('Property','Value',...) creates a new SKETCHER or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before Sketcher_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to Sketcher_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help Sketcher

% Last Modified by GUIDE v2.5 13-Jun-2015 23:57:53

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Sketcher_OpeningFcn, ...
                   'gui_OutputFcn',  @Sketcher_OutputFcn, ...
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


% --- Executes just before Sketcher is made visible.
function Sketcher_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to Sketcher (see VARARGIN)

% Choose default command line output for Sketcher
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes Sketcher wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = Sketcher_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in select_image.
function select_image_Callback(hObject, eventdata, handles)
% hObject    handle to select_image (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

disp('Selecting the image');
[filename,pathname] = uigetfile({'*.jpg';'*.jpeg'},'Select The Text File');
%disp(filename);
str= strcat(pathname,filename);
%disp(str);
disp('image selected');
global image_to_draw;
image_to_draw = process_image_sketcher(str);
save('timepass.mat', 'image_to_draw');
disp('image processed');

% --- Executes on button press in draw_image.
function draw_image_Callback(hObject, eventdata, handles)
% hObject    handle to draw_image (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

global image_to_draw;

path_maker_sketcher(image_to_draw);
disp('Path of coordinates of image saved');
send_signal_sketcher();
disp('Image Drawn');



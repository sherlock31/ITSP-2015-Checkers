function varargout = PP_S(varargin)
% PP_S MATLAB code for PP_S.fig
%      PP_S, by itself, creates a new PP_S or raises the existing
%      singleton*.
%
%      H = PP_S returns the handle to a new PP_S or the handle to
%      the existing singleton*.
%
%      PP_S('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in PP_S.M with the given input arguments.
%
%      PP_S('Property','Value',...) creates a new PP_S or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before PP_S_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to PP_S_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help PP_S

% Last Modified by GUIDE v2.5 14-Jun-2015 03:57:27

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @PP_S_OpeningFcn, ...
                   'gui_OutputFcn',  @PP_S_OutputFcn, ...
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


% --- Executes just before PP_S is made visible.
function PP_S_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to PP_S (see VARARGIN)

% Choose default command line output for PP_S
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes PP_S wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = PP_S_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in penplotter.
function penplotter_Callback(hObject, eventdata, handles)
% hObject    handle to penplotter (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
close(PP_S);
PenPlotter;

% --- Executes on button press in sketcher.
function sketcher_Callback(hObject, eventdata, handles)
% hObject    handle to sketcher (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
close(PP_S);
open('Sketcher.fig');
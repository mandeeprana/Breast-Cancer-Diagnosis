function varargout = test_gui_p(varargin)
% TEST_GUI_P MATLAB code for test_gui_p.fig
%      TEST_GUI_P, by itself, creates a new TEST_GUI_P or raises the existing
%      singleton*.
%
%      H = TEST_GUI_P returns the handle to a new TEST_GUI_P or the handle to
%      the existing singleton*.
%
%      TEST_GUI_P('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in TEST_GUI_P.M with the given input arguments.
%
%      TEST_GUI_P('Property','Value',...) creates a new TEST_GUI_P or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before test_gui_p_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to test_gui_p_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help test_gui_p

% Last Modified by GUIDE v2.5 14-Apr-2015 10:49:43

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @test_gui_p_OpeningFcn, ...
                   'gui_OutputFcn',  @test_gui_p_OutputFcn, ...
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


% --- Executes just before test_gui_p is made visible.
function test_gui_p_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to test_gui_p (see VARARGIN)

% Choose default command line output for test_gui_p
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes test_gui_p wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = test_gui_p_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function d1_Callback(hObject, eventdata, handles)
% hObject    handle to d1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of d1 as text
%        str2double(get(hObject,'String')) returns contents of d1 as a double


% --- Executes during object creation, after setting all properties.
function d1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to d1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function d2_Callback(hObject, eventdata, handles)
% hObject    handle to d2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of d2 as text
%        str2double(get(hObject,'String')) returns contents of d2 as a double


% --- Executes during object creation, after setting all properties.
function d2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to d2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function d3_Callback(hObject, eventdata, handles)
% hObject    handle to d3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of d3 as text
%        str2double(get(hObject,'String')) returns contents of d3 as a double


% --- Executes during object creation, after setting all properties.
function d3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to d3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function d4_Callback(hObject, eventdata, handles)
% hObject    handle to d4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of d4 as text
%        str2double(get(hObject,'String')) returns contents of d4 as a double


% --- Executes during object creation, after setting all properties.
function d4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to d4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function d5_Callback(hObject, eventdata, handles)
% hObject    handle to d5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of d5 as text
%        str2double(get(hObject,'String')) returns contents of d5 as a double


% --- Executes during object creation, after setting all properties.
function d5_CreateFcn(hObject, eventdata, handles)
% hObject    handle to d5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function d6_Callback(hObject, eventdata, handles)
% hObject    handle to d6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of d6 as text
%        str2double(get(hObject,'String')) returns contents of d6 as a double


% --- Executes during object creation, after setting all properties.
function d6_CreateFcn(hObject, eventdata, handles)
% hObject    handle to d6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function d7_Callback(hObject, eventdata, handles)
% hObject    handle to d7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of d7 as text
%        str2double(get(hObject,'String')) returns contents of d7 as a double


% --- Executes during object creation, after setting all properties.
function d7_CreateFcn(hObject, eventdata, handles)
% hObject    handle to d7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function d8_Callback(hObject, eventdata, handles)
% hObject    handle to d8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of d8 as text
%        str2double(get(hObject,'String')) returns contents of d8 as a double


% --- Executes during object creation, after setting all properties.
function d8_CreateFcn(hObject, eventdata, handles)
% hObject    handle to d8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function d9_Callback(hObject, eventdata, handles)
% hObject    handle to d9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of d9 as text
%        str2double(get(hObject,'String')) returns contents of d9 as a double


% --- Executes during object creation, after setting all properties.
function d9_CreateFcn(hObject, eventdata, handles)
% hObject    handle to d9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function d10_Callback(hObject, eventdata, handles)
% hObject    handle to d10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of d10 as text
%        str2double(get(hObject,'String')) returns contents of d10 as a double


% --- Executes during object creation, after setting all properties.
function d10_CreateFcn(hObject, eventdata, handles)
% hObject    handle to d10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function d11_Callback(hObject, eventdata, handles)
% hObject    handle to d11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of d11 as text
%        str2double(get(hObject,'String')) returns contents of d11 as a double


% --- Executes during object creation, after setting all properties.
function d11_CreateFcn(hObject, eventdata, handles)
% hObject    handle to d11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in submit.
function submit_Callback(hObject, eventdata, handles)
% hObject    handle to submit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
a=str2double(get(handles.d1,'string'));
b=str2double(get(handles.d2,'string'));
c=str2double(get(handles.d3,'string'));
d=str2double(get(handles.d4,'string'));
e=str2double(get(handles.d5,'string'));
f=str2double(get(handles.d6,'string'));
g=str2double(get(handles.d7,'string'));
h=str2double(get(handles.d8,'string'));
i=str2double(get(handles.d9,'string'));
j=str2double(get(handles.d10,'string'));
k=str2double(get(handles.d11,'string'));
x=[k,a,b,c,d,e,f,g,h,i,j];

uisave('x','testgui.mat');
load('progtrain.mat');

C = 0.5;
linearpmodel = svmTrain(Xptrain, yptrain, C, @linearKernel, 1e-3, 20);

pptrainlinear = svmPredict(linearpmodel, Xptrain);

load('progtest.mat');
pptestlinear = svmPredict(linearpmodel, x);
pgt=num2str(pptestlinear);
set(handles.da1,'string',pgt);


% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
a=str2double(get(handles.d1,'string'));
b=str2double(get(handles.d2,'string'));
c=str2double(get(handles.d3,'string'));
d=str2double(get(handles.d4,'string'));
e=str2double(get(handles.d5,'string'));
f=str2double(get(handles.d6,'string'));
g=str2double(get(handles.d7,'string'));
h=str2double(get(handles.d8,'string'));
i=str2double(get(handles.d9,'string'));
j=str2double(get(handles.d10,'string'));
k=str2double(get(handles.d11,'string'));
x=[k,a,b,c,d,e,f,g,h,i,j];
uisave('x','testgui.mat');
load('progtrain.mat');
% SVM Parameters
C = 0.05; sigma = 6;

modelp1= svmTrain(Xptrain, yptrain, C, @(x1, x2) gaussianKernel(x1, x2, sigma)); 
%visualizeBoundary(Xtrain, ytrain, model);

predp1train = svmPredict(modelp1, Xptrain);

load('progtest.mat');
predp1test = svmPredict(modelp1, x);
pgt=num2str(predp1test);
set(handles.da1,'string',pgt);

% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
a=str2double(get(handles.d1,'string'));
b=str2double(get(handles.d2,'string'));
c=str2double(get(handles.d3,'string'));
d=str2double(get(handles.d4,'string'));
e=str2double(get(handles.d5,'string'));
f=str2double(get(handles.d6,'string'));
g=str2double(get(handles.d7,'string'));
h=str2double(get(handles.d8,'string'));
i=str2double(get(handles.d9,'string'));
j=str2double(get(handles.d10,'string'));
k=str2double(get(handles.d11,'string'));
x=[k,a,b,c,d,e,f,g,h,i,j];

uisave('x','testgui.mat');

load('progtrain1.mat');
% Try different SVM Parameters here
[C1, sigma1] = dataset3Params(Xptrain1, yptrain1, Xval, yval);

% Train the SVM
modelp2= svmTrain(Xptrain1, yptrain1, C1, @(x1, x2) gaussianKernel(x1, x2, sigma1));
%visualizeBoundary(Xtrain, ytrain, model);

predp2train = svmPredict(modelp2, Xptrain1);

load('progtest.mat');
predp2test = svmPredict(modelp2, x);
pgt=num2str(predp2test);
set(handles.da1,'string',pgt);



% --- Executes on button press in pushbutton4.
function pushbutton4_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
a=str2double(get(handles.d1,'string'));
b=str2double(get(handles.d2,'string'));
c=str2double(get(handles.d3,'string'));
d=str2double(get(handles.d4,'string'));
e=str2double(get(handles.d5,'string'));
f=str2double(get(handles.d6,'string'));
g=str2double(get(handles.d7,'string'));
h=str2double(get(handles.d8,'string'));
i=str2double(get(handles.d9,'string'));
j=str2double(get(handles.d10,'string'));
k=str2double(get(handles.d11,'string'));
x=[k,a,b,c,d,e,f,g,h,i,j];

uisave('x','testgui.mat');
load('progtrain.mat');
load('progtest.mat');


pnorm1train = knn(Xptrain,yptrain,Xptrain,1,'1norm');

pnorm1test = knn(Xptrain,yptrain,x,11,'1norm');
pgt=num2str(pnorm1test);
set(handles.da1,'string',pgt);


% --- Executes on button press in pushbutton5.
function pushbutton5_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
a=str2double(get(handles.d1,'string'));
b=str2double(get(handles.d2,'string'));
c=str2double(get(handles.d3,'string'));
d=str2double(get(handles.d4,'string'));
e=str2double(get(handles.d5,'string'));
f=str2double(get(handles.d6,'string'));
g=str2double(get(handles.d7,'string'));
h=str2double(get(handles.d8,'string'));
i=str2double(get(handles.d9,'string'));
j=str2double(get(handles.d10,'string'));
k=str2double(get(handles.d11,'string'));
x=[k,a,b,c,d,e,f,g,h,i,j];
uisave('x','testgui.mat');
load('progtrain.mat');


initial_theta = zeros(size(Xptrain, 2), 1);
lambda = 1;

% Compute and display initial cost and gradient for regularized logistic regression
[cost, grad] = costFunctionReg(initial_theta, Xptrain, yptrain, lambda);


initial_theta = zeros(size(Xptrain, 2), 1);

% Set regularization parameter lambda to 1 (you should vary this)
lambda = 100;

% Set Options
options = optimset('GradObj', 'on', 'MaxIter', 400);
% Optimize
[theta, J, exit_flag] = ...
	fminunc(@(t)(costFunctionReg(t, Xptrain, yptrain, lambda)), initial_theta, options);

pptrain = predict(theta, Xptrain);

load('progtest.mat');
pptest = predict(theta, x);
pgt=num2str(pptest);
set(handles.da1,'string',pgt);



% --- Executes on button press in pushbutton6.
function pushbutton6_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
a=str2double(get(handles.d1,'string'));
b=str2double(get(handles.d2,'string'));
c=str2double(get(handles.d3,'string'));
d=str2double(get(handles.d4,'string'));
e=str2double(get(handles.d5,'string'));
f=str2double(get(handles.d6,'string'));
g=str2double(get(handles.d7,'string'));
h=str2double(get(handles.d8,'string'));
i=str2double(get(handles.d9,'string'));
j=str2double(get(handles.d10,'string'));
k=str2double(get(handles.d11,'string'));
x=[k,a,b,c,d,e,f,g,h,i,j];
uisave('x','testgui.mat');
load('progtrain.mat');
load('progtest.mat');


pnormalNB1 = NBayes(Xptrain,yptrain,Xptrain,'normal');

pnormalNB2 = NBayes(Xptrain,yptrain,x,'normal');
pgt=num2str(pnormalNB2);
set(handles.da1,'string',pgt);

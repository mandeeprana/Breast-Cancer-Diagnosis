function varargout = test_gui(varargin)
% TEST_GUI MATLAB code for test_gui.fig
%      TEST_GUI, by itself, creates a new TEST_GUI or raises the existing
%      singleton*.
%
%      H = TEST_GUI returns the handle to a new TEST_GUI or the handle to
%      the existing singleton*.
%
%      TEST_GUI('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in TEST_GUI.M with the given input arguments.
%
%      TEST_GUI('Property','Value',...) creates a new TEST_GUI or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before test_gui_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to test_gui_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help test_gui

% Last Modified by GUIDE v2.5 14-Apr-2015 10:42:29

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @test_gui_OpeningFcn, ...
                   'gui_OutputFcn',  @test_gui_OutputFcn, ...
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


% --- Executes just before test_gui is made visible.
function test_gui_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to test_gui (see VARARGIN)

% Choose default command line output for test_gui
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes test_gui wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = test_gui_OutputFcn(hObject, eventdata, handles) 
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
x=[a,b,c,d,e,f,g,h,i,j];
uisave('x','testgui.mat');
load('datatrain.mat');

C = 5;
linearmodel = svmTrain(Xtrain, ytrain, C, @linearKernel, 1e-3, 20);

ptrainlinear = svmPredict(linearmodel, Xtrain);

load('datatest.mat');
ptestlinear = svmPredict(linearmodel, x);
pgt=num2str(ptestlinear);
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
x=[a,b,c,d,e,f,g,h,i,j];
uisave('x','testgui.mat');
load('datatrain.mat');
% SVM Parameters
C = 1; sigma = 0.1;

% We set the tolerance and max_passes lower here so that the code will run
% faster. However, in practice, you will want to run the training to
% convergence.

model1= svmTrain(Xtrain, ytrain, C, @(x1, x2) gaussianKernel(x1, x2, sigma)); 

pred1train = svmPredict(model1, Xtrain);
load('datatest.mat');
pred1test = svmPredict(model1, x);
pgt=num2str(pred1test);
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
x=[a,b,c,d,e,f,g,h,i,j];
uisave('x','testgui.mat');

load('datatrain1.mat');
% Try different SVM Parameters here
[C1, sigma1] = dataset3Params(Xtrain1, Ytrain1, Xval, Yval);

% Train the SVM
model2= svmTrain(Xtrain1, Ytrain1, C1, @(x1, x2) gaussianKernel(x1, x2, sigma1));

pred2train = svmPredict(model2, Xtrain1);

load('datatest.mat');
pred2test = svmPredict(model2, x);
pgt=num2str(pred2test);
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
x=[a,b,c,d,e,f,g,h,i,j];
uisave('x','testgui.mat');
load('datatrain.mat');
load('datatest.mat');


norm1train = knn(Xtrain,ytrain,Xtrain,1,'1norm');

norm1test = knn(Xtrain,ytrain,x,30,'1norm');
pgt=num2str(norm1test);
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
x=[a,b,c,d,e,f,g,h,i,j];
uisave('x','testgui.mat');
load('datatrain.mat');
initial_theta = zeros(size(Xtrain, 2), 1);
lambda = 1;

% Compute and display initial cost and gradient for regularized logistic regression
[cost, grad] = costFunctionReg(initial_theta, Xtrain, ytrain, lambda);

initial_theta = zeros(size(Xtrain, 2), 1);

% Set regularization parameter lambda to 1 (you should vary this)
lambda = 0;


options = optimset('GradObj', 'on', 'MaxIter', 400);

[theta, J, exit_flag] = ...
	fminunc(@(t)(costFunctionReg(t, Xtrain, ytrain, lambda)), initial_theta, options);
ptrain = predict(theta, Xtrain);
load('datatest.mat');
ptest = predict(theta, x);

pgt=num2str(ptest);
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
x=[a,b,c,d,e,f,g,h,i,j];
uisave('x','testgui.mat');
load('datatrain.mat');
load('datatest.mat');

normalNB2 = NBayes(Xtrain,ytrain,Xtest,'normal');
pgt=num2str(normalNB2);
set(handles.da1,'string',pgt);

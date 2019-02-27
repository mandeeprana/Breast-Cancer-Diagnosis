function varargout = Train_gui(varargin)
% TRAIN_GUI MATLAB code for Train_gui.fig
%      TRAIN_GUI, by itself, creates a new TRAIN_GUI or raises the existing
%      singleton*.
%
%      H = TRAIN_GUI returns the handle to a new TRAIN_GUI or the handle to
%      the existing singleton*.
%
%      TRAIN_GUI('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in TRAIN_GUI.M with the given input arguments.
%
%      TRAIN_GUI('Property','Value',...) creates a new TRAIN_GUI or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before Train_gui_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to Train_gui_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help Train_gui

% Last Modified by GUIDE v2.5 14-Apr-2015 11:17:26

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Train_gui_OpeningFcn, ...
                   'gui_OutputFcn',  @Train_gui_OutputFcn, ...
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


% --- Executes just before Train_gui is made visible.
function Train_gui_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to Train_gui (see VARARGIN)

% Choose default command line output for Train_gui
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes Train_gui wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = Train_gui_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in s1.
function s1_Callback(hObject, eventdata, handles)
% hObject    handle to s1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
load('datatrain.mat');
C = 5;
linearmodel = svmTrain(Xtrain, ytrain, C, @linearKernel, 1e-3, 20);

ptrainlinear = svmPredict(linearmodel, Xtrain);
a=mean(double(ptrainlinear == ytrain)) * 100;
pgt=num2str(a);
set(handles.acc1,'string',pgt);
load('datatest.mat');
ptestlinear = svmPredict(linearmodel, Xtest);
b=mean(double(ptestlinear == ytest)) * 100;
pgt1=num2str(b);
set(handles.acc2,'string',pgt1);

% --- Executes on button press in s2.
function s2_Callback(hObject, eventdata, handles)
% hObject    handle to s2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
test_gui

% --- Executes on button press in s3.
function s3_Callback(hObject, eventdata, handles)
% hObject    handle to s3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
fprintf('\nTraining SVM with RBF Kernel (this may take 1 to 2 minutes) ...\n');
load('datatrain.mat');
% SVM Parameters
C = 1; sigma = 0.1;
model1= svmTrain(Xtrain, ytrain, C, @(x1, x2) gaussianKernel(x1, x2, sigma)); 

pred1train = svmPredict(model1, Xtrain);
c= mean(double(pred1train == ytrain)) * 100;
pgt=num2str(c);
set(handles.acc1,'string',pgt);
load('datatest.mat');
pred1test = svmPredict(model1, Xtest);
d=mean(double(pred1test == ytest)) * 100;
pgt1=num2str(d);
set(handles.acc2,'string',pgt1);


% --- Executes on button press in s4.
function s4_Callback(hObject, eventdata, handles)
% hObject    handle to s4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
load('datatrain1.mat');
% Try different SVM Parameters here
[C1, sigma1] = dataset3Params(Xtrain1, Ytrain1, Xval, Yval);

% Train the SVM
model2= svmTrain(Xtrain1, Ytrain1, C1, @(x1, x2) gaussianKernel(x1, x2, sigma1));

pred2train = svmPredict(model2, Xtrain1);
e= mean(double(pred2train == Ytrain1)) * 100;
pgt=num2str(e);
set(handles.acc1,'string',pgt);
load('datatest.mat');
pred2test = svmPredict(model2, Xtest);
f=mean(double(pred2test == ytest)) * 100;
pgt1=num2str(f);
set(handles.acc2,'string',pgt1);

% --- Executes on button press in s5.
function s5_Callback(hObject, eventdata, handles)
% hObject    handle to s5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
load('progtrain.mat');
fprintf('\nTraining Linear SVM ...\n')
% You should try to change the C value below and see how the decision
% boundary varies (e.g., try C = 1000)
C = 5;
linearpmodel = svmTrain(Xptrain, yptrain, C, @linearKernel, 1e-3, 20);

pptrainlinear = svmPredict(linearpmodel, Xptrain);
f= mean(double(pptrainlinear == yptrain)) * 100;
pgt=num2str(f);
set(handles.acc1,'string',pgt);
load('progtest.mat');
pptestlinear = svmPredict(linearpmodel, Xptest);
f1=mean(double(pptestlinear == yptest)) * 100;
pgt1=num2str(f1);
set(handles.acc2,'string',pgt1);


% --- Executes on button press in s6.
function s6_Callback(hObject, eventdata, handles)
% hObject    handle to s6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
test_gui_p

% --- Executes on button press in s7.
function s7_Callback(hObject, eventdata, handles)
% hObject    handle to s7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
load('datatrain.mat');
norm1train = knn(Xtrain,ytrain,Xtrain,1,'1norm');
g=mean(double(norm1train == ytrain)) * 100;
pgt=num2str(g);
set(handles.acc1,'string',pgt);
load('datatest.mat');
norm1test = knn(Xtrain,ytrain,Xtest,30,'1norm');
 h=mean(double(norm1test == ytest)) * 100;
 pgt1=num2str(h);
set(handles.acc2,'string',pgt1);
 

% --- Executes on button press in s8.
function s8_Callback(hObject, eventdata, handles)
% hObject    handle to s8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
load('progtrain.mat');
pnorm1train = knn(Xptrain,yptrain,Xptrain,1,'1norm');
i=mean(double(pnorm1train == yptrain)) * 100;
pgt=num2str(i);
set(handles.acc1,'string',pgt);
load('progtest.mat');
pnorm1test = knn(Xptrain,yptrain,Xptest,11,'1norm');
j=mean(double(pnorm1test == yptest)) * 100;
 pgt1=num2str(j);
set(handles.acc2,'string',pgt1);

% --- Executes on button press in s9.
function s9_Callback(hObject, eventdata, handles)
% hObject    handle to s9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
load('datatrain.mat');
initial_theta = zeros(size(Xtrain, 2), 1);
lambda = 1;

% Compute and display initial cost and gradient for regularized logistic regression
[cost, grad] = costFunctionReg(initial_theta, Xtrain, ytrain, lambda);

initial_theta = zeros(size(Xtrain, 2), 1);
% Set regularization parameter lambda to 1 (you should vary this)
lambda = 0;

% Set Options
options = optimset('GradObj', 'on', 'MaxIter', 400);
% Optimize
[theta, J, exit_flag] = ...
	fminunc(@(t)(costFunctionReg(t, Xtrain, ytrain, lambda)), initial_theta, options);
ptrain = predict(theta, Xtrain);
lg1= mean(double(ptrain == ytrain)) * 100;
 pgt=num2str(lg1);
set(handles.acc1,'string',pgt);

load('datatest.mat');
ptest = predict(theta, Xtest);
lg2= mean(double(ptest == ytest)) * 100;
 pgt1=num2str(lg2);
set(handles.acc2,'string',pgt1);



% --- Executes on button press in s10.
function s10_Callback(hObject, eventdata, handles)
% hObject    handle to s10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
load('progtrain.mat');


initial_theta = zeros(size(Xptrain, 2), 1);
lambda = 1;

% Compute and display initial cost and gradient for regularized logistic regression
[cost, grad] = costFunctionReg(initial_theta, Xptrain, yptrain, lambda);

initial_theta = zeros(size(Xptrain, 2), 1);


lambda = 100;

% Set Options
options = optimset('GradObj', 'on', 'MaxIter', 400);
% Optimize
[theta, J, exit_flag] = ...
	fminunc(@(t)(costFunctionReg(t, Xptrain, yptrain, lambda)), initial_theta, options);

pptrain = predict(theta, Xptrain);
lgp1= mean(double(pptrain == yptrain)) * 100;
 pgt=num2str(lgp1);
set(handles.acc1,'string',pgt);

load('progtest.mat');
pptest = predict(theta, Xptest);
lgp2= mean(double(pptest == yptest)) * 100;
 pgt1=num2str(lgp2);
set(handles.acc2,'string',pgt1);


% --- Executes on button press in s11.
function s11_Callback(hObject, eventdata, handles)
% hObject    handle to s11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in s12.
function s12_Callback(hObject, eventdata, handles)
% hObject    handle to s12 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton13.
function pushbutton13_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton13 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
load('datatrain.mat');
load('datatest.mat');

%% ============ Part 1: Implementing normal ============
normalNB1 = NBayes(Xtrain,ytrain,Xtrain,'normal');
nb1= mean(double(normalNB1 == ytrain)) * 100;
 pgt=num2str(nb1);
set(handles.acc1,'string',pgt);

normalNB2 = NBayes(Xtrain,ytrain,Xtest,'normal');
nbt1= mean(double(normalNB2 == ytest)) * 100;
 pgt1=num2str(nbt1);
set(handles.acc2,'string',pgt1);

% --- Executes on button press in pushbutton14.
function pushbutton14_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton14 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
load('progtrain.mat');
load('progtest.mat');


pnormalNB1 = NBayes(Xptrain,yptrain,Xptrain,'normal');
nb2=mean(double(pnormalNB1 == yptrain)) * 100;
pgt=num2str(nb2);
set(handles.acc1,'string',pgt);

pnormalNB2 = NBayes(Xptrain,yptrain,Xptest,'normal');
nbt2=mean(double(pnormalNB2 == yptest)) * 100;
pgt1=num2str(nbt2);
set(handles.acc2,'string',pgt1);

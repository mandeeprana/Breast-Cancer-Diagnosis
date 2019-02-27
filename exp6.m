%% =============== Visualizing Dataset ================

fprintf('Loading and Visualizing Data ...\n')
load('progtrain.mat');
%Plot training data
%plotData(X, y);
fprintf('Program paused. Press enter to continue.\n');
pause;

%% =============== Implementing linear Kernel ===============

load('progtrain.mat');
fprintf('\nTraining Linear SVM ...\n')
% You should try to change the C value below and see how the decision
% boundary varies (e.g., try C = 1000)
C = 0.5;
linearpmodel = svmTrain(Xptrain, yptrain, C, @linearKernel, 1e-3, 20);

pptrainlinear = svmPredict(linearpmodel, Xptrain);
fprintf('Train Accuracy: %f\n', mean(double(pptrainlinear == yptrain)) * 100);

load('progtest.mat');
pptestlinear = svmPredict(linearpmodel, Xptest);
fprintf('Test Accuracy: %f\n', mean(double(pptestlinear == yptest)) * 100);

fprintf('Program paused. Press enter to continue.\n');
pause;



%% =============== Implementing Gaussian Kernel ===============
fprintf('\nEvaluating the Gaussian Kernel ...\n')

x1 = [1 2 1]; x2 = [0 4 -1]; sigma = 2;
sim1 = gaussianKernel(x1, x2, sigma);

fprintf(['Gaussian Kernel between x1 = [1; 2; 1], x2 = [0; 4; -1], sigma = 2 :' ...
         '\n\t%f\n(this value should be about 0.324652)\n'], sim1);

fprintf('Program paused. Press enter to continue.\n');
pause;

%% =============== Visualizing Dataset ================

fprintf('Loading and Visualizing Data ...\n')
load('progtrain.mat');
%Plot training data
%plotData(X, y);
fprintf('Program paused. Press enter to continue.\n');
pause;

%% ========== Training SVM with RBF Kernel ==========
 
fprintf('\nThis is it ----- Training SVM with RBF Kernel (this may take 1 to 2 minutes) ...\n');
load('progtrain.mat');
% SVM Parameters
C = 0.05; sigma = 5;

% We set the tolerance and max_passes lower here so that the code will run
% faster. However, in practice, you will want to run the training to
% convergence.

modelp1= svmTrain(Xptrain, yptrain, C, @(x1, x2) gaussianKernel(x1, x2, sigma)); 
%visualizeBoundary(Xtrain, ytrain, model);

predp1train = svmPredict(modelp1, Xptrain);
fprintf('Train Accuracy: %f\n', mean(double(predp1train == yptrain)) * 100);

load('progtest.mat');
predp1test = svmPredict(modelp1, Xptest);
fprintf('Test Accuracy: %f\n', mean(double(predp1test == yptest)) * 100);

fprintf('Program paused. Press enter to continue.\n');
pause;


%% =============== Visualizing Dataset ================
fprintf('Loading and Visualizing Data ...\n')
load('progtrain1.mat');
% Plot training data
%plotData(X, y);
fprintf('Program paused. Press enter to continue.\n');
pause;

%% ========== Training SVM with RBF Kernel when values of C and sigma are not static ==========
load('progtrain1.mat');
% Try different SVM Parameters here
[C1, sigma1] = dataset3Params(Xptrain1, yptrain1, Xval, yval);

% Train the SVM
modelp2= svmTrain(Xptrain1, yptrain1, C1, @(x1, x2) gaussianKernel(x1, x2, sigma1));
%visualizeBoundary(Xtrain, ytrain, model);

predp2train = svmPredict(modelp2, Xptrain1);
fprintf('Train Accuracy: %f\n', mean(double(predp2train == yptrain1)) * 100);

load('progtest.mat');
predp2test = svmPredict(modelp2, Xptest);
fprintf('Test Accuracy: %f\n', mean(double(predp2test == yptest)) * 100);

fprintf('Program paused. Press enter to continue.\n');
pause;



%% =============== Implementing Polynomial Kernel ===============
fprintf('\nEvaluating the Polynomial Kernel ...\n')

x1 = [1 2 1]; x2 = [0 4 -1]; coef = 2; e = 5; sigma=0.1;
sim2 = polynomialKernel(x1, x2, sigma, coef, e);

fprintf(['Polynomial Kernel between x1 = [1; 2; 1], x2 = [0; 4; -1], coef=2 and e=5 :' ...
         '\n\t%f\n(this value should be about 143.489070)\n'], sim2);

fprintf('Program paused. Press enter to continue.\n');
pause;

%% =============== Visualizing Data ================
fprintf('Loading and Visualizing Data ...\n')
load('progtrain.mat');
% Plot training data
%plotData(X, y);
fprintf('Program paused. Press enter to continue.\n');
pause;

%% ==================== Training SVM with polynomial kernel ====================
load('progtrain.mat');

% You should try to change the C value below and see how the decision
% boundary varies (e.g., try C = 1000)
%C = 1;
%model3 = svmTrain(Xtrain, ytrain, C, @(x1, x2) polynomialKernel(x1, x2, 0.1, 10, 4));

%load('datatest.mat');
%pred3 = svmPredict(model3,Xtest);

%fprintf('Program paused. Press enter to continue.\n');
%pause;

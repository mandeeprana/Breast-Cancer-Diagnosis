%% =============== Visualizing Dataset ================

fprintf('Loading and Visualizing Data ...\n')
load('datatrain.mat');
%Plot training data
%plotData(X, y);
fprintf('Program paused. Press enter to continue.\n');
pause;

%% =============== Implementing linear Kernel ===============

load('datatrain.mat');
fprintf('\nTraining Linear SVM ...\n')
% You should try to change the C value below and see how the decision
% boundary varies (e.g., try C = 1000)
C = 1;
linearmodel = svmTrain(Xtrain, ytrain, C, @linearKernel, 1e-3, 20);

ptrainlinear = svmPredict(linearmodel, Xtrain);
fprintf('Train Accuracy: %f\n', mean(double(ptrainlinear == ytrain)) * 100);

load('datatest.mat');
ptestlinear = svmPredict(linearmodel, Xtest);
fprintf('Test Accuracy: %f\n', mean(double(ptestlinear == ytest)) * 100);

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
load('datatrain.mat');
%Plot training data
%plotData(X, y);
fprintf('Program paused. Press enter to continue.\n');
pause;

%% ========== Training SVM with RBF Kernel ==========
 
fprintf('\nTraining SVM with RBF Kernel (this may take 1 to 2 minutes) ...\n');
load('datatrain.mat');
% SVM Parameters
C = 0.5; sigma = 1;

% We set the tolerance and max_passes lower here so that the code will run
% faster. However, in practice, you will want to run the training to
% convergence.

model1= svmTrain(Xtrain, ytrain, C, @(x1, x2) gaussianKernel(x1, x2, sigma)); 

pred1train = svmPredict(model1, Xtrain);
fprintf('Train Accuracy: %f\n', mean(double(pred1train == ytrain)) * 100);

load('datatest.mat');
pred1test = svmPredict(model1, Xtest);
fprintf('Test Accuracy: %f\n', mean(double(pred1test == ytest)) * 100);

fprintf('Program paused. Press enter to continue.\n');
pause;


%% =============== Visualizing Dataset ================
fprintf('Loading and Visualizing Data ...\n')
load('datatrain1.mat');
% Plot training data
%plotData(X, y);
fprintf('Program paused. Press enter to continue.\n');
pause;

%% ========== Training SVM with RBF Kernel when values of C and sigma are not static ==========
load('datatrain1.mat');
% Try different SVM Parameters here
[C1, sigma1] = dataset3Params(Xtrain1, Ytrain1, Xval, Yval);

% Train the SVM
model2= svmTrain(Xtrain1, Ytrain1, C1, @(x1, x2) gaussianKernel(x1, x2, sigma1));

pred2train = svmPredict(model2, Xtrain1);
fprintf('Train Accuracy: %f\n', mean(double(pred2train == Ytrain1)) * 100);

load('datatest.mat');
pred2test = svmPredict(model2, Xtest);
fprintf('Test Accuracy: %f\n', mean(double(pred2test == ytest)) * 100);

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
load('datatrain.mat');
% Plot training data
%plotData(X, y);
fprintf('Program paused. Press enter to continue.\n');
pause;

%% ==================== Training SVM with polynomial kernel ====================
load('datatrain.mat');

% You should try to change the C value below and see how the decision
% boundary varies (e.g., try C = 1000)
%C = 1;
%model3 = svmTrain(Xtrain, ytrain, C, @(x1, x2) polynomialKernel(x1, x2, 0.1, 10, 4));

%load('datatest.mat');
%pred3 = svmPredict(model3,Xtest);

%fprintf('Program paused. Press enter to continue.\n');
%pause;

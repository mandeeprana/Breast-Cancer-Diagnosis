fprintf('\nProgram paused. Press enter to continue.\n');
pause;
%% Initialization
clear ; close all; clc
load('datatrain.mat');
load('datatest.mat');

%% ============ Part 1: Implementing 1norm (Euclidean Distance) ============
norm1train = knn(Xtrain,ytrain,Xtrain,1,'1norm');
fprintf('Train Accuracy: %f\n', mean(double(norm1train == ytrain)) * 100);

norm1test = knn(Xtrain,ytrain,Xtest,30,'1norm');
fprintf('Test Accuracy: %f\n', mean(double(norm1test == ytest)) * 100);

fprintf('\nProgram paused. Press enter to continue.\n');
pause;

display('norm1 part done');
display('Now Implementing norm2 part');
fprintf('\nProgram paused. Press enter to continue.\n');
pause;

%% ============ Part 2: Implementing 2norm (Manhattan Distance) ============
norm2train = knn(Xtrain,ytrain,Xtrain,1,'2norm');
fprintf('Train Accuracy: %f\n', mean(double(norm2train == ytrain)) * 100);

norm2test = knn(Xtrain,ytrain,Xtest,30,'2norm');
fprintf('Test Accuracy: %f\n', mean(double(norm2test == ytest)) * 100);

fprintf('\nProgram paused. Press enter to continue.\n');
pause;


display('Now we check for prognosis part');
fprintf('\nProgram paused. Press enter to continue.\n');
pause;
%% Initialization
load('progtrain.mat');
load('progtest.mat');

%% ============ Part 3: Implementing 1norm (Euclidean Distance) ============
pnorm1train = knn(Xptrain,yptrain,Xptrain,1,'1norm');
fprintf('Train Accuracy: %f\n', mean(double(pnorm1train == yptrain)) * 100);

pnorm1test = knn(Xptrain,yptrain,Xptest,11,'1norm');
fprintf('Test Accuracy: %f\n', mean(double(pnorm1test == yptest)) * 100);

fprintf('\nProgram paused. Press enter to continue.\n');
pause;

display('norm1 part done');
display('Now Implementing norm2 part');
fprintf('\nProgram paused. Press enter to continue.\n');
pause;

%% ============ Part 4: Implementing 2norm (Manhattan Distance) ============
pnorm2train = knn(Xptrain,yptrain,Xptrain,1,'2norm');
fprintf('Train Accuracy: %f\n', mean(double(pnorm2train == yptrain)) * 100);

pnorm2test = knn(Xptrain,yptrain,Xptest,10,'2norm');
fprintf('Test Accuracy: %f\n', mean(double(pnorm2test == yptest)) * 100);

fprintf('\nProgram paused. Press enter to continue.\n');
pause;
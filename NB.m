fprintf('\nProgram paused. Press enter to continue.\n');
pause;
%% Initialization
clear ; close all; clc
load('datatrain.mat');
load('datatest.mat');

%% ============ Part 1: Implementing normal ============
normalNB1 = NBayes(Xtrain,ytrain,Xtrain,'normal');
fprintf('Train Accuracy: %f\n', mean(double(normalNB1 == ytrain)) * 100);

normalNB2 = NBayes(Xtrain,ytrain,Xtest,'normal');
fprintf('Test Accuracy: %f\n', mean(double(normalNB2 == ytest)) * 100);

fprintf('\nProgram paused. Press enter to continue.\n');
pause;

display('normal distribution part done');
display('Now Implementing kernel distribution');
fprintf('\nProgram paused. Press enter to continue.\n');
pause;

%% ============ Part 2: Implementing kernel distribution ============
kernelNB1 = NBayes(Xtrain,ytrain,Xtrain,'kernel');
fprintf('Train Accuracy: %f\n', mean(double(kernelNB1 == ytrain)) * 100);

kernelNB2 = NBayes(Xtrain,ytrain,Xtest,'kernel');
fprintf('Test Accuracy: %f\n', mean(double(kernelNB2 == ytest)) * 100);

fprintf('\nProgram paused. Press enter to continue.\n');
pause;


display('Now we check for prognosis part');
fprintf('\nProgram paused. Press enter to continue.\n');
pause;

%% Initialization
load('progtrain.mat');
load('progtest.mat');

%% ============ Part 3: Implementing normal ============
pnormalNB1 = NBayes(Xptrain,yptrain,Xptrain,'normal');
fprintf('Train Accuracy: %f\n', mean(double(pnormalNB1 == yptrain)) * 100);

pnormalNB2 = NBayes(Xptrain,yptrain,Xptest,'normal');
fprintf('Test Accuracy: %f\n', mean(double(pnormalNB2 == yptest)) * 100);

fprintf('\nProgram paused. Press enter to continue.\n');
pause;

display('normal distribution part done');
display('Now Implementing kernel distribution');
fprintf('\nProgram paused. Press enter to continue.\n');
pause;

%% ============ Part 4: Implementing kernel ============
pkernelNB1 = NBayes(Xptrain,yptrain,Xptrain,'kernel');
fprintf('Train Accuracy: %f\n', mean(double(pkernelNB1 == yptrain)) * 100);

pkernelNB2= NBayes(Xptrain,yptrain,Xptest,'kernel');
fprintf('Test Accuracy: %f\n', mean(double(pkernelNB2 == yptest)) * 100);

fprintf('\nProgram paused. Press enter to continue.\n');
pause;
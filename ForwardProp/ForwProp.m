function predictions = predict(W1,W2, X)

% Your code goes here.
% First get the output of the ground layer
% I'm going to put in a few test values of X, W1 and W2 for simplicity
% The X rows each represent a test case and each test case has two inputs
% X = [1.25 2.0 ; 1.3 0.4; 0.5 1.6;1.7 0.8];
% W1 = [0.2 -0.4 0;0.3 0.5 1];
% W2 = [2 -1 5];

layer1output = X*W1;
% This is the z value input from each training case (rows) to each of the hidden layer neurons (columns). One must do a sigmoid function to each value here.
layer1sigmoid = 1./(1.+e.^(-layer1output))

% The output of the hidden layer is linear
predictions = layer1sigmoid*W2;



endfunction
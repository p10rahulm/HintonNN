function G = configuration_goodness(rbm_w, visible_state, hidden_state)
% <rbm_w> is a matrix of size <number of hidden units> by <number of visible units>
% <visible_state> is a binary matrix of size <number of visible units> by <number of configurations that we're handling in parallel>.
% <hidden_state> is a binary matrix of size <number of hidden units> by <number of configurations that we're handling in parallel>.
% This returns a scalar: the mean over cases of the goodness (negative energy) of the described configurations.
    %error('not yet implemented');
    %disp(size(rbm_w));
    %disp(size(visible_state));
    %disp(size(hidden_state));
    %disp(size(rbm_w*visible_state));
    % Fors each of the test cases, we need to find the dot product of the hidden and visible and weight vector. 
    % Then we have to take the sum over the rows and mean over all the cases. This is what is implemented below
    G = mean(sum((rbm_w*visible_state).*hidden_state,1));
end

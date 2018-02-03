function hidden_probability = visible_state_to_hidden_probabilities(rbm_w, visible_state)
% <rbm_w> is a matrix of size <number of hidden units> by <number of visible units>
% <visible_state> is a binary matrix of size <number of visible units> by <number of configurations that we're handling in parallel>.
% The returned value is a matrix of size <number of hidden units> by <number of configurations that we're handling in parallel>.
% This takes in the (binary) states of the visible units, and returns the activation probabilities of the hidden units conditional on those states.
    %disp(size(rbm_w));
    %disp(rbm_w);
    %disp(size(visible_state));
    %disp(visible_state);
    %sum_product = ;
    %disp(sum(sum_product));
    %disp(size(sum_product));
    %exp_sum_p = exp(sum_product);
    %disp(sum(exp_sum_p));

    %normalizer = sum(exp_sum_p,1);
    %exp_sum_p = exp_sum_p /normalizer;
    %disp(exp_sum_p);
    % hidden_probability = exp_sum_p;
    %hidden_probability  = exp(rbm_w * visible_state)/sum(exp(rbm_w * visible_state),1);
    %non_normal_state = 1./(1.+exp(-1.*rbm_w * visible_state));
    %disp(non_normal_state(1:10,:));
    %normalizer = sum(non_normal_state);
    %hidden_probability  = non_normal_state/normalizer;
    %disp(hidden_probability(1:10,:));
    %disp(sum(hidden_probability));
    %error('not yet implemented');
    
    % ok above method did not work. Trying a different probability
    %exp_sum_p = 1./(1.+exp(-sum_product));
    %disp(sum(exp_sum_p));
    %that worked. implementing properly;
    hidden_probability = 1./(1.+exp(-rbm_w*visible_state));
    
end

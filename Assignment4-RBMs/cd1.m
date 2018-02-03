function ret = cd1(rbm_w, visible_data)
% <rbm_w> is a matrix of size <number of hidden units> by <number of visible units>
% <visible_data> is a (possibly but not necessarily binary) matrix of size <number of visible units> by <number of data cases>
% The returned value is the gradient approximation produced by CD-1. It's of the same shape as <rbm_w>.
    %error('not yet implemented');
    %disp(size(rbm_w));
    %disp(size(visible_data));
    hidden_state = sample_bernoulli(visible_state_to_hidden_probabilities(rbm_w, visible_data));
    %disp(size(hidden_state));
    visible_state2= sample_bernoulli(hidden_state_to_visible_probabilities(rbm_w, hidden_state));
    %disp(size(visible_state2));
    hidden_state2 = sample_bernoulli(visible_state_to_hidden_probabilities(rbm_w,visible_state2));
    %disp(size(hidden_state2));
    Goodness_Grad_initial = configuration_goodness_gradient(visible_state2, hidden_state2);
    Goodness_Grad_final = configuration_goodness_gradient(visible_data, hidden_state);
    ret = Goodness_Grad_final - Goodness_Grad_initial; 
end

function get_num_partitions_small_test_rbm(small_test_rbm_w)
  disp(size(small_test_rbm_w ));
  rbm_weights_transposed = small_test_rbm_w';
  n_h =  size(small_test_rbm_w, 1);
  hidden_variable_states = dec2bin(0:2^n_h-1, n_h) - '0';
  disp(size(hidden_variable_states));
  disp(hidden_variable_states(1:2,:));
  disp(rbm_weights_transposed(1:2,:));
  disp(size(rbm_weights_transposed));
  disp((1+exp(sum(rbm_weights_transposed(2,:).*hidden_variable_states(2,:)))))
  summa = 0;
  for(i = 1:size(hidden_variable_states,1))
    product = 1;
    for(j = 1:size(small_test_rbm_w,2))
      product = product*(1+exp(sum(rbm_weights_transposed(j,:).*hidden_variable_states(i,:))));
    endfor
    summa = summa + product;
    %disp(i)
  endfor
  log(summa)
end
function retval = k_secv_idx (distinct_k_sec)
  % return disctionary containing the indices of each elem from distinct_k_sec 
  % HINT: containers.Map
  % Try not to set the key-value pairs iteratively, use containers.Map(keys, values) whenever possible

  retval = containers.Map;

  % generez indicii si ii pastrez intr-un vector coloana
  indices = 1:length(distinct_k_sec);

  % realizez maparea
  retval = containers.Map(distinct_k_sec, indices);

endfunction

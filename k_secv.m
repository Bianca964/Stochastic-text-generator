function B = k_secv (A, k)
  % given an array [a b a b c] and k=2
  % should return [ab ba ab bc]
  % HINT: use strjoin 

  n = numel(A);
  % initializez cell-array-ul pentru secvente
  B = cell(n - k, 1);
  
  for i = 1:(n - k)
      % extrag secventa k-gram curenta
      current_sequence = A(i : i + k - 1);

      % concatenez elementele secventei k-gram intr-un singur sir de caractere
      B{i} = strjoin(current_sequence, ' ');
  endfor

endfunction

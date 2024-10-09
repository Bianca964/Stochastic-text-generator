function retval = stochastic_matrix(k_secv_corpus, corpus_words, words_set, k_secv_set, k)
    % build the stochastic matrix. Bonus if it is sparse
    % The 'stochastic' matrix SHOULD NOT be scaled (divided by sum of all)
    % It should just be entry-wise
    % This is how the checker tests it, to not have to deal with floating point errors

    % obtin cuvintele si secventele k unice, dar si indecsii fiecaruia
    [unique_words, ~, word_idx] = unique(corpus_words);
    [unique_ksecv, ~, ksecv_idx] = unique(k_secv_corpus);

    % dimensiunile matricei stocastice
    nr_words = length(unique_words);
    nr_ksecv = length(unique_ksecv);

    % initializez o matrice stocastica rara
    stochastic_mat = sparse(nr_ksecv, nr_words);

    % adaug zero-uri la final pentru a mentine aceeasi lungime ca word_idx
    shifted_word_indices = [word_idx(k + 1:end); zeros(k, 1)];

    % shiftez indecsii cuvintelor (deplasate cu k pozitii)
    shifted_word_indices = shifted_word_indices(1:end - k);

    for i = 1:length(ksecv_idx)
        % verific daca nu este 0 (adica este un index valid)
        if shifted_word_indices(i) ~= 0 
            stochastic_mat(ksecv_idx(i), shifted_word_indices(i)) = ...
                stochastic_mat(ksecv_idx(i), shifted_word_indices(i)) + 1;
        endif
    endfor

    retval = stochastic_mat;

endfunction

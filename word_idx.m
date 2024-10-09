function retval = word_idx (distinct_wds)
    % return the word_idx dictionary HINT: containers.Map

    retval = containers.Map;

    % creez vectorul coloana de indici
    indices = 1:length(distinct_wds);
    retval = containers.Map(distinct_wds, indices);

endfunction

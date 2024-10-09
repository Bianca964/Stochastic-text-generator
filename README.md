
# STOCHASTIC_TEXT_GENERATOR

    # function retval = distinct_words (tokens)
    Aceasta functie returneaza vectorul de cuvinte sortat in ordine
lexicografica si din care s-au eliminat duplicatele (adica au ramas
doar cuvintele unice). Folosesc functia unique care face ambele lucruri
simultan.

    # function B = k_secv (A, k)
    Aceasta functie realizeaza concatenarea secventelor k cate k din vectorul
A, punand sirurile concatenate in cell-array-ul B la indexul corespunzator.

    # function unique_cell_array = distinct_k_secv (cell_array)
    Aceasta functie intoarce cell_array-ul dupa ce se elimina duplicatele.

    # function retval = word_idx (distinct_wds)
    Aceasta functie realizeaza un fel de hash-map intre vectorul
de cuvinte primit ca parametru si un vector de indici pe care sa le atribui.
Vectorul de indici va fi de fapt numarul cuvantului de oridne in cazul de fata.

    # function retval = k_secv_idx (distinct_k_sec)
    Aceasta functie realizeaza legatura dintre secvente si indecsi, la fel
ca in cadrul functiei word_idx (urmeaza acelasi algoritm).

    # function retval = stochastic_matrix (k_secv_corpus, corpus_words,
                                           words_idx, k_secv_idx, k)
    Aceasta functie construieste matricea stocastica cu nr_secv linii si 
nr_words coloane provenite dupa eliminarea duplicatelor din seturile de cuvinte
si secvente. Obtin indicii cuvintelor din vectorul de cuvinte initial deplasati
cu k pozitii in fata si il extind cu zero-uri pentru a pastra aceeasi
dimensiune cu word_idx. Mai apoi, parcurg fiecare element din vectorul
ksecv_idx si verific daca elementul corespunzator din shifted_words_indices
este diferit de 0 (daca e 0 inseamna ca nu trebuie sa-l bag in seama intrucat
acel 0 a fost adaugat ca padding). Daca conditia if este indeplinita,
actualizez matricea stocastica la poziitia corespunzatoare, adica incremenetz
valoarea de la randul ksecv_idx(i) si coloana shifted_word_indices(i) a
matricei stocastice cu 1 (am mai gasit o aparitie).
Per total, functia contorizeaza numarul de aparitii ale cuvintelor care
urmeaza fiecare secventa k.

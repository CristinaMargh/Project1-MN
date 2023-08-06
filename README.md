# Project1-MN
#Margheanu Cristina-Andreea 313CA
Markov is coming:

-Pentru parsarea labirintului, deschidem fisierul de unde urmeaza sa citim 
dimensiunile matricei si elementele ei. Parcurgem fiecare linie si coloana
in parte si extragem cate un element folosind fscanf. Nu uitam la final sa
inchidem fisierul. 
-Descompunem elementele din matrice in baza 2 pentru folosirea ulterioara a 
decodificarii lor. Formam un vector v de 4 elemente, corespunzatoare celor 
4 biti, ce retine pe fiecare pozitie 1 sau 0 , in functie de cazul in care
avem sau nu zid intr-o anumita pozitie din jurul celulei. In continuare 
construim o formula pentru a lega numarul unei celule din matrice, de 
indicii de linie si coloana: (i - 1)n + j. Pentru fiecare bit din vectorul v 
verificam daca ne aflam in interiorul matrice sau pe margini(pentru cazurile
de WIN si LOSE ) si completam matricea de adiacenta. 
-Pentru LinkMatrix ,folosim functia Octave sum si calculam suma elementelor
de pe fiecare linie. La final impartim fiecare element la suma corespunzatoare
liniei pe care se afla. 
-In functia Jacobi impartim matricea Link in cele 2 parti ce vor reprezenta 
elementele cerute. 
-Pentru functia perform_iterate comparam dupa fiecare iteratie eroarea
(diferenta dintre valorile obtinute pentru solutia pe care vrem sa o aflam) 
cu toleranta. Ne oprim din iterat atunci cand am ajuns la o valoare tolerata
a erorii si inregistram pasul la care ne aflam. 
-Pentru functia heuristic_greedy ne folosim de 2 noduri din labirint cu
ajutorul carora iteram prin interiorul lui. Verificam in mod constant vecinii
si probabilitatile. 
-Pentru functia de decode parcurgem fiecare element si verificam daca are 
forma generala a valorii unei casute din matrice.
Introducem indicii de linie si coloana in decoded_path. 

Linear Regression:

-deschidem fisierul de intrare si extragem dimensiunile matricei urmate de 
elementele in sine. 
-pentru a parsa dintr-un fisier csv ne folosim de functia textscan cu 
ajutorul careia putem introduce delimitatorul dintre elemente si putem 
specifica ca prima linie nu trebuie sa faca parte din matricea ce urmeaza sa
fie parsata. Dupa ce am extras datele din fisier ne construim matricea 
InitialMatrix si vectorul Y prin extragerea coloanelor din matricea alls 
in care ne-am stocat elementele din fisier. 
-pentru functia prepare_for_regression consideram o variabila auxiliaza index
pe care o tot crestem deoarece adaugam coloane noi in matrice.
-pentru functiile de cost aplicam formulele date

MNIST 101:

-pentru aflaream lui X si y folosim functia load cu ajutorul careia putem sa
obtinem continutul fisierelor de tipul .mat
- dupa initializarea lui epsilon folosim formula pentru a obtine o matrice cu
elemente intr o forma aleatoare 

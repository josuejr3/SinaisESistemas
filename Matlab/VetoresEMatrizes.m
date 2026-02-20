% Criação de Vetores

% Vetor de uma linha e três colunas
vetor = [1 2 3]
% Vetor de uma única coluna (;)
vetor_1_col = [1 ; 2 ; 3]
% Vetor de uma coluna usando a transposta (')
vetor_1_trp = [1 2 3]'

% Matriz 2x5
matriz_2x5 = [1 2 3 4 5;1 2 3 4 5]
% Matriz de 1's (hard coded)
matriz_ones = [1 1 1 1 1]
% Matriz Quadrada de 1's (ones)
matriz_ones_3 = ones(3) 
% Vetor de 1's - 1 linha e 3 colunas
vetor_ones = ones(1, 3)
% Matriz Coluna somente com o valor Pi
matriz_col_pi = ones(3, 1) * pi
matriz_col_pi = ones(3, 1)*0+pi

% Matriz com números aleatórios
random_matriz = randn(3)
random_number = rand(3) % entre 0 e 1
trasposta_random = random_matriz'

% Matriz A
A = [1 2; 0 3]
% InvA
InvA = inv(A)
InvA = A^(-1)
% Matriz Identidade
Idt = A * InvA

% Calculo de Autovalores e Autovetores
eig(A)
[AutoVetor, AutoValor] = eig(A)

M1 = A*AutoVetor
M2 = AutoVetor*AutoValor
R = M1 - M2
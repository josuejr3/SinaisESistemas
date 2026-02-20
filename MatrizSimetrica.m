% Matrizes Simétricas
% Matriz Simétrica = Matriz Transposta

A = [ 31 4 9; 2 12 0; 7 21 4];
Asim = A + A';
R = Asim - Asim' % É uma matriz simétrica

% Dessa forma mantemos a diagonal 
Asim = (A + A')/2

% Matriz Simétrica através da multiplicação
A = [12 9 3; 7 3 0];
Asim1 = A * A'
Asim2 = mtimes(A', A); % multiplica matrizes
Asim2 == Asim2' % Retorna todos os elementos 1

% Análise Gráfica - (Imagens)
figure(1), clf
subplot(131)
imagesc(A)
set(gca, 'xtick', [], 'ytick',[])
title('A'), axis image

subplot(132)
imagesc(Asim1)
title('AA^T'), axis image

subplot(133)
imagesc(Asim2)
set(gca, 'xtick', [], 'ytick', [])
title('A^TA'), axis image
% Vetores Ortogonais

% Vetor a ser decomposto
a = [4 6]'
% Vetor de referência
b = [8 2]'

% Componente paralela
alfa = (a' * b)/(b' * b) % Produto Escalar
ab_paralelo = alfa * b;
ab_perpendicular = a - ab_paralelo

% Plot
figure(1), clf
plot([0 a(1)], [0 a(2)], 'b', 'linew', 5) % Vetor Original A
hold on
plot([0 b(1)], [0 b(2)], 'g', 'linew', 5) % Vetor Original B

% Paralelo e Perpendicular
plot([0 ab_paralelo(1)], [0 ab_paralelo(2)], 'm--', 'linew', 3) % Paralelo
plot([0 ab_perpendicular(1)], [0 ab_perpendicular(2)], 'k:', 'linew', 3) % Perpendicular
legend({'a';'b';'ab_paralelo';'ab_perpendicular'})
axis([-1 1 -1 1]*max([norm(a) norm(b)]))

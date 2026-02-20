% Produto Escalar e Plots 2D/3D

% Produto Escalar
a = [1 3];
b = [5 7];

% Implementação 1
res1 = a.*b % Usar o . antes da operação entre matrizes
            % Evita problemas de dimensão

res1 = sum(a.*b) % Multiplica cada coordenada e soma tudo

% Implementação 2
res2 = a(:)'*b(:) % (:) Pega todos os elementos

% Implementação 3
res3 = 0;
for i=1:length(a)
    res3 = a(i)*b(i) + res3
end

% Implementação 4
% Usando função pronta
res4 = dot(a, b)

% Implementação 5
theta = acos(dot(a, b)/(norm(a)*norm(b)));
res5 = norm(a)*norm(b)*cos(theta)

% Plotagem de vetores 2D/3D

% Definindo 2 pontos
A = [0 1]'
B = [0 5]'
plot(A, B)
xlabel('x');
ylabel('y');
title("Plot Vetor 2D");

% Outra Forma (Só funciona para vetores 2D)
C = [1 5]'
plotv(C)

% Gráficos 3D
A = [0 1 1]'
B = [0 1 5]'
C = [0 1 3]'
plot3(A, B, C)
% Outra Forma
M = [0 0 3; 0 0 5; 0 0 7];
plot3(M(1,:), M(2,:), M(3,:))

% Outra forma para 2D/3D
a = [1 2]';
b = [1 2 3]';
figure(1), clf
plot([0 a(1)], [0 a(2)], 'b', 'linew', 3) % 2D
figure(2), clf
plot3([0 b(1)], [0 b(2)], [0 b(3)], 'b', 'linew', 3) % 3D
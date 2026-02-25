% Questão 1
% Objetivo: Aprender a gerar e visualizar sinais básicos utilizando o GNU Octave, reforçando
% a interpretação gráfica estudada teoricamente.

% Define o eixo do tempo de -5 até 5
t = -5:0.01:5;
u = (t >= 0);                           % Matlab avalia os valores de t como sendo 1 ou 0
plot(t, u); 
grid on;
title('Degrau Unitário');
xlabel('t');
ylabel('u(t)');

% 1a) Explique como o degrau foi implementado.

% O degrau unitário foi implementado a partir da criação do eixo/vetor
% t do tempo no comando "t = -5:0.01:5" que vai de -5 até 5s com passos de
% 0.01s. O Matlab faz uma operação booleana para definir se os valores
% baseados no tempo são maiores que 0, se for o caso então ele atribui a
% imagem como sendo zero, qualquer número diferente de zero tem imagem
% igual a 1. Por fim, foi plotado o gráfico junto com suas informações.

% 1b) Altere o código para gerar u(t-1)
t = -5:0.01:5;
u = (t-2 >= 0);                           
plot(t, u);                           % Multiplica o valor da imagem pela amplitude
grid on;
title('Degrau Unitário');
xlabel('t');
ylabel('u(t-2)');

% 1c) Gere 3u(t).
t = -5:0.01:5;
u = (t >= 0);                           
plot(t, 3*u);                           % Multiplica o valor da imagem pela amplitude
grid on;
title('Degrau Unitário');
xlabel('t');
ylabel('u(t)');

% ===============================================================================================================

% Questão 2 (Rampa Unitária)

% Define o vetor/eixo do tempo de -2 até 5 com passos de 0.01s
t = -2:0.01:5;
% Define a função da rampa, para qualquer valor diferente de 0, o resultado
% é o bool 1 que é multiplicado pelo valor do tempo (reta), se o tempo for
% menor que 0, a imagem é zerada
r = t .* (t >= 0);
plot(t,r); grid on;
title('Rampa Unitária');

% 2a) Gere r(t-1)
t = -2:0.01:5;
r = (t-1) .* ((t-1) >= 0);
plot(t,r); grid on;
title('Rampa Unitária');

% 2b) Gere r(t) - r(t-3)
t = -2:0.01:5;
r = (t .* (t >= 0)) - ((t-3) .* ((t-3) >= 0));
plot(t,r); grid on;
title('Rampa Unitária');

% 2c) Compare o gráfico com o desenho manual

% ===============================================================================================================

% Questão 3 (Sinal Senoidal)

t = 0:0.001:1;
x = 2*cos(4*pi*t - pi/3);
plot(t,x); grid on;
title('Senoide'); % Senoide?

% 3a) Identifique amplitude e período no gráfico.
%   Amplitude = 2, Período aproximadamente = 0.5

% 3b) Altere a frequência
t = 0:0.001:1;
x = 2*cos(8*pi*t - pi/3);
plot(t,x); grid on;
title('Questão 3B - Frequência Maior'); 

% 3c) Altere a fase
t = 0:0.001:1;
x = 2*cos(4*pi*t - pi);
plot(t,x); grid on;
title('Questao 3C - Fase Alterada');
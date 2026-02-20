% Vetores Unitários
a = [1 3]';
a_modulo = norm(a);
a_unitario = a / a_modulo
sum(norm(a_unitario)) % Verifica se o módulo é 1
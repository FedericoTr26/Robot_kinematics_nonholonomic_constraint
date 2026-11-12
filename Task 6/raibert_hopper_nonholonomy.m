clear; clc;
syms I m l d theta psi real

A = [ I + m*(l+d)^2,  m*(l+d)^2,  0 ];

G = null(A);
disp('Matrice G(q):'); 
disp(G);

g1 = [-m*(l+d)^2/(I + m*(l+d)^2);  1; 0];                         
g2 = [0; 0; 1];


% [g1, g2] = Dg2*g1 - Dg1*g2
% g2 e' costante. Dg2=0. [g1, g2]=-Dg1*g2
vars = [theta psi l];
Dg1  = jacobian(g1, vars);
Dg2 = jacobian(g2,vars);
LieBracket = -Dg1(:,3);  
disp('Lie bracket [g1, g2]:');

F = [g1, g2, LieBracket];  % 3x3
disp('Matrice F(q) = [g1, g2, [g1, g2]]:');
disp(F);

DetF = det(F);
disp('Determinante di F:');
disp(DetF);
RankF=rank(F);
disp('Rango di F:');
disp(RankF);

% DetF it isn't 0 so the rank(F) = 3. The system is then controllable. Therefore, the system is completely nonholonomic. 
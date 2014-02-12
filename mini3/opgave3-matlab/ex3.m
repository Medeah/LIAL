% Koefficientmatrix:
    A=[4 1;
       3 2]
% Startbetingelse:
    y0=[120;40]
% Hvis A er diagonaliserbar, da findes P og D, som i definitionen side 315 
% p� f�lgende m�de:
    [P,D]=eig(A)
% Generel l�sning opskrives nu. 
% Vi starte med at fort�lle MATLAB at den skal
% betragte a, b og t som variable. Bem�rk, at a og b er de arbitr�re 
% konstanter i den fuldst�ndige l�sning (general solution) og t er 
% tidsvariablen.
     syms a b t;
     arb=[a; b];
% Den generelle l�sning opskrives derefter.
% Bem�rk, at D*[t;t] er lig [lambda_1*t;lambda_2*t], hvor
% lambda_1 og lambda_2 er de to egenv�rdier. S� exp(D*[t;t])
% er lig [exp(lambda_1 * t); exp(lambda_2*t)].
% Udtrykket (exp(D*[t;t]).*arb er lig 
% [a*exp(lambda_1*t);b*exp(lambda_2*t)],
% idet .* er komponentvis multiplikation.
    ygen=P*(exp(D*[t;t]).*arb)
% Ovenst�ende fuldst�ndige l�sning afrundes (du kan justere p� 
% andet argument for �get finhed):
    ygenafrundet=vpa(ygen,2)  
% De arbitr�re konstanter svarende til begyndelsesbetingelsen bestemmes. 
% Bem�rk, at exp(lambda_1*0)=1 og exp(lambda_2*0)=1. 
% Derfor skal vi alts� l�se ligningen P*[a; b]=y0 for a og b.
    xx=linsolve(P,y0);
% L�sning under begyndelsesbetingelsen y0 bliver:
     y=P*(exp(D*[t;t]).*xx)
% Ovenst�ende l�sning afrundes (du kan justere p� andet argument 
% for �get finhed):
     yafrundet=vpa(y,2)

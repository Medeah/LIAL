% Koefficientmatrix:
    A=[4 1;
       3 2]
% Startbetingelse:
    y0=[120;40]
% Hvis A er diagonaliserbar, da findes P og D, som i definitionen side 315 
% på følgende måde:
    [P,D]=eig(A)
% Generel løsning opskrives nu. 
% Vi starte med at fortælle MATLAB at den skal
% betragte a, b og t som variable. Bemærk, at a og b er de arbitrære 
% konstanter i den fuldstændige løsning (general solution) og t er 
% tidsvariablen.
     syms a b t;
     arb=[a; b];
% Den generelle løsning opskrives derefter.
% Bemærk, at D*[t;t] er lig [lambda_1*t;lambda_2*t], hvor
% lambda_1 og lambda_2 er de to egenværdier. Så exp(D*[t;t])
% er lig [exp(lambda_1 * t); exp(lambda_2*t)].
% Udtrykket (exp(D*[t;t]).*arb er lig 
% [a*exp(lambda_1*t);b*exp(lambda_2*t)],
% idet .* er komponentvis multiplikation.
    ygen=P*(exp(D*[t;t]).*arb)
% Ovenstående fuldstændige løsning afrundes (du kan justere på 
% andet argument for øget finhed):
    ygenafrundet=vpa(ygen,2)  
% De arbitrære konstanter svarende til begyndelsesbetingelsen bestemmes. 
% Bemærk, at exp(lambda_1*0)=1 og exp(lambda_2*0)=1. 
% Derfor skal vi altså løse ligningen P*[a; b]=y0 for a og b.
    xx=linsolve(P,y0);
% Løsning under begyndelsesbetingelsen y0 bliver:
     y=P*(exp(D*[t;t]).*xx)
% Ovenstående løsning afrundes (du kan justere på andet argument 
% for øget finhed):
     yafrundet=vpa(y,2)

%Lab 1 EE405L
%Laplace Transforms with MATLAB
%Kevin Jordan ID# 1301006
clear
clc

syms f t; %declare symbolic vars
f = 2*t; %assign to eqtn
laplace(f) %compute LT

clear
clc

syms t s; %declare symbolic vars
f = -2.5+(7*t*exp(-2*t))+(2.5*exp(-2*t)); %assign to eqtn
F = laplace(f,t,s); %compute LT
F2 = simplify(F);
pretty(F2) %make nice looking output

clear
clc

syms t s; %declare symbolic vars
f = 10*exp(-2*t); %assign to eqtn
F = laplace(f,t,s); %compute LT
F2 = simplify(F);
pretty(F2) %make nice looking output

clear
clc

syms t s; %declare symbolic vars
F = 2*(s-5)/(s*(s+2)^2); %assign to eqtn
f = ilaplace(F); %compute ILT
f2 = simplify(f);
pretty(f2) %make nice looking output

clear
clc

syms t s; %declare symbolic vars
F = (20*(2*s+4))/(2*s*(2*s^2+8*s+10)); %assign to eqtn
f = ilaplace(F); %compute ILT
f2 = simplify(f);
pretty(f2) %make nice looking output

clear
clc

syms t s; %declare symbolic vars
F = 48/(2*s*(2*s+16)); %assign to eqtn
f = ilaplace(F); %compute ILT
f2 = simplify(f);
pretty(f2) %make nice looking output

clear
clc

syms t s; %declare symbolic vars
Y = 2/s - 4/(s+8) + 2/(s+10); %assign to eqtn
y = ilaplace(Y); %compute ILT
y2 = simplify(y);
pretty(y2) %make nice looking output

clear
clc

n = [0 0 8 8 8]; %create and fill vector of numerator coeffs
d = [4 12 8 0 0]; %create and fill vector of denominator coeffs
[r,p,k] = residue(n, d) %compute partial fraction expansion
%prints vector of numerator coeffs and of denominator s-domain shifts
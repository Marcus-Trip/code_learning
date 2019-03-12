% Dr. Peter McKeon
% Spring 2019
% SDSMT
% Purpose: MATLAB review (or introduction) tailored for Dynamic Systems ME352


%%

% What is MATLAB good at?

%     MATLAB stands for MATRIX LABORATORY.  It is exceptionally efficient at handling matrices and vectors,
%            which makes it ideal for dynamics system analysis for reasons that will (hopefully!) become clear later.
%     MATLAB is an industry standard.
%     MATLAB is continuously improving and adding to its functionality (Case in point: Live Editor)

% Terms

%   Path: Where (and in the order that) MATLAB looks for files (functions) to evaluate
%   Current Folder: Present Working Directory, i.e. where MATLAB is saving to
%   Command Window: Direct input and output.  Where you can type one command at a time, like a calculator.
%   Script / M-File: Where you can write multiple lines of code that will be executed in sequence.
%   Function: a specific type of m-file that can be called on by name in other m-files.
%             Very similar to functions in C, except they are generally saved in separate m-files instead of the same .c program.

%%
% MATLAB Basics

%   Simple and complex math, + - * /, trig,  ^, sqrt, exp ...Remember: Please Excuse My Dear Aunt Sally
%   Some built-in variables, e.g. pi, i (or j) but it IS possible to rename these variables, so be careful!
disp('------Basics------')
sigma=6
omega=7
p1=sigma+j*omega
A=2+3j

Var1=A*exp(p1)+conj(A)*exp(conj(p1))
Var2=2*exp(sigma)*(real(A)*cos(omega)-imag(A)*sin(omega))

%   Important functions to get you started: help, format commands: (compact, loose, long, short, bank), clc, clear, figure, close

%   Arrays: Vectors and Matrices
disp('------Arrays------')
vec=[1 2 3 4 5 6]
M=[1 2; 3 4; 5 6]
size(vec)
size(M)

% Element indexing

vec(1,3)
M(2,1)
vec(3)
M(3)

% Array Operations
    %   Solving linear Eq'ns Ax=b
    disp('------Solving linear systems of equations------')
    A=[1 1;1 -1]
    b=[10; 4]
    x=inv(A)*b

    % General operations
    disp('------General Operations------')
    disp('M*A = ')
    disp(M*A)

    vec*[1;1/2;1/3;1/4;1/5;1/6]
    
    % Element by element
    disp('sin(vec) -- taking the sine of each individual element')
    disp(sin(vec))
    disp('e^(vec) -- taking e raised to each individual element')
    disp(exp(vec))
    disp('Each element squared')
    disp(vec.^2)
    disp('multiplying element by element of two vectors of the same length')
    vec.*[1 1/2 1/3 1/4 1/5 1/6]


% if / while / for  -- conditional statements and loops
disp('------IF STATEMENT------')
if vec(1,3)==M(2,1)
    disp('They are the same!')
else
    disp('Not the same!')
end

disp('------WHILE LOOP------')
ii=1
while ii<=length(vec)
    if vec(ii)==M(ii)
        disp('   They are the same!')
    else
        disp('   Uh-oh...')
    end
    ii=ii+1
end

disp('------FOR LOOP------')
for ii=1:length(vec)
    if vec(ii)==M(ii)
        disp('   They are the same!')
    else
        disp('   Uh-oh...')
    end
end

% Note: For loops and while loops are similar, but generally for loops are "better" since it's guarenteed that they'll stop!
% I recommend, to start, use whichever one seems most logical to you.  You can always go back and clean up the code later, to make it more robust
%%
% Commands specific to Dynamic Systems

% residue(N,D) / roots(N) / poly ([p]) / conv(D1,D2)

% SYS=tf(N,D)  creates a continuous-time transfer function object SYS with numerator N and denominator D

F=tf(34,[1 2 34])

% impulse(sys), step(sys), lsim(sys,...) Computes and plots the impulse response given a system.

figure(1)
subplot(311)
impulse(F)
subplot(312)
step(F)
t=0:.01:6;
g=sin(omega*t);
subplot(313)
lsim(F,g,t)
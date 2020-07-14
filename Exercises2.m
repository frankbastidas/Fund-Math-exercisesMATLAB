%% 1.a Gauss-Seidel e Gauss jacobi COMPARAR
clc;clear;

% GAUSS JACOBI
matA=[2 2;4 3]
B=[3 4]';
D=tril(matA,0)-tril(matA,-1)
M=matA-D
k=0;
X0=[0 0]';
X=[0 0 ]';
Err=10;
REsp=inv(D)*(matA-D)%radio espectral

figure(1)
grid on
hold on
while k<80 && Err>0.00001
    Bn=B-M*X0;
%     X(1)=Bn(1)/D(1,1);
%     X(2)=Bn(2)/D(2,2);
%     X(3)=Bn(3)/D(3,3);
    X=(D*D^(-2))*Bn;
    Err=norm(X-X0)/norm(X);
    X0=X;
    k=k+1;
%     plot(k,X(1),'-*g',k,X(2),'-*r',k,X(3),'-*b')
    plot(k,X(1),'-*g',k,X(2),'-*r')
end
hold off
k
Err
X
% GAUSS SEIDEL
L=tril(matA,0)
U=matA-L;
k=0;
X0=[0 0]';
X=[0 0]';
Err=10;
REsp=inv(L)*(matA-L)%radio espectral

figure(2)
grid on
hold on
while k<80 && Err>0.00001
    Bn=B-U*X0;
    X=(L*L^(-2))*Bn;
    Err=norm(X-X0)/norm(X);
    X0=X;
    k=k+1;
    plot(k,X(1),'-*g',k,X(2),'-*r')
end
hold off
k
Err
X

% m=3
% Yn=ones(1,m);
% A=0
% I=(L*L^(-2))*B
% for i=1:m          
%     if i~=1
%         for j=1:i-1                    
%            A=A-L(i,j)*Yn(j);
%         end
%     end
%     Yn(i)=(A+B(i))/L(i,i);
%     A=0;
% end       
% Yn


%% 2. 

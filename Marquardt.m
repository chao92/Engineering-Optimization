% (i,j) start point
i=5;
j=2;
iter=1000; % maximum number of iteratios allowed
lamda = 100;
syms a b X Y Z;
epsilon=0.0001;
grad(a,b)=gradient(f(a,b));
hess(a,b)=hessian(f(a,b));
I = [1 0; 0 1];
x(1)=i;
x(2)=j;
k=0;
while ((norm(grad(i,j))>=epsilon))
X = -inv(hess(i,j)+lamda*I)*grad(i,j);
tem=[i j]'-inv(hess(i,j)+lamda*I)*grad(i,j);
tem = double(tem);
    if(f(tem(1),tem(2))<f(x(1),x(2))) 
        lamda = 0.5 * lamda;
        k = k + 1;
       x(1)=real(tem(1));
        x(2)=real(tem(2));
        i = x(1);
        j = x(2);
        fprintf(1,'%g %g %g\n',double(x(1)),double(x(2)),double(f(x(1),x(2))));
    else
        lamda = 2 * lamda;
    end 
end
fprintf(1,'%g %g %g\n',double(x(1)),double(x(2)),double(f(x(1),x(2))));
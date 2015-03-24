% Newton's Method x^(k+1)=x^(k)-H^(-1)*gradient(x^(k))
% (i,j) start point
i=-4;
j=6;
syms a b;
epsilon=0.0001;
grad(a,b)=gradient(f(a,b));
hess(a,b)=hessian(f(a,b));
while (norm(grad(i,j))>=epsilon)
X= [i j]'-inv(hess(i,j))*grad(i,j);
fprintf(1,'%g %g %g\n',double(X(1)),double(X(2)),double(f(X(1),X(2))));
i=X(1);
j=X(2);
end

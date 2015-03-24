% Cauchy Method x^(k+1)=x^(k)-alpha^(k)*gradient(x^(k))
% -gradient(x^(k)-alpha*gradient(x^(k)))*gradient(x^(k))
% (i,j) start point
i=6;
j=-6;
syms a b;
grad(a,b)=gradient(f(a,b));
epsilon=0.0001;
while (norm(grad(i,j))>=epsilon)
    step = Golden(i,j);
    %fprintf(1,'step=%g\n', double(step));
    X = double([i j]'-step*grad(i,j));
    fprintf(1,'%g %g %g %g\n',double(X(1)),double(X(2)),double(f(X(1),X(2))),double(step));
    i=X(1);
    j=X(2);
end

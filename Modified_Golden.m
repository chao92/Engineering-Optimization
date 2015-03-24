% (i,j) start point
i=-1.2;
j=0;
syms a b;
epsilon=0.0001;
grad(a,b)=gradient(f(a,b));
hess(a,b)=hessian(f(a,b));
while (norm(grad(i,j))>=epsilon)
    step = Golden_M(i,j);
    %fprintf(1,'step=%g\n', double(step));
    X = double([i j]'-step*inv(hess(i,j))*grad(i,j));
    i=X(1);
    j=X(2);
    fprintf(1,'%g %g %g %g\n',double(i),double(j),double(f(i,j)),double(step));
end

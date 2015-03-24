% Cauchy Method x^(k+1)=x^(k)-alpha^(k)*gradient(x^(k))
% -gradient(x^(k)-alpha*gradient(x^(k)))*gradient(x^(k))
% (i,j) start point
syms a b X Y Z equation i j;
i=0;
j=0;
epsilon=0.0001;
grad(a,b)=gradient(f(a,b));

while (norm(grad(i,j))>=epsilon)
%fprintf(1,'%g\n',grad(i,j));
X=grad(i,j);
syms t;
Y=[i j]'- t*grad(i,j);
Z=grad(Y(1),Y(2));
equation=X'*-Z;
steps=solve(equation);
% for each alpha, we verify that which alpha let f(x^(k+1)) minimal.
x(1)=i;
x(2)=j;
for t=1:length(steps)
    tem=[i j]'-steps(t)*grad(i,j);
    tem = double(tem);
    if(f(tem(1),tem(2))<f(x(1),x(2)))
        x(1)=real(tem(1));
        x(2)=real(tem(2));
        step=steps(t);
        i = x(1);
        j = x(2);
    end
end
fprintf(1,'%g %g %g %g\n',double(x(1)),double(x(2)),f(x(1),x(2)),double(step));
end




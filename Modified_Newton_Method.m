% (i,j) start point
i=0;
j=0;
syms a b X Y Z;
epsilon=0.0001;
grad(a,b)=gradient(f(a,b));
hess(a,b)=hessian(f(a,b));
while (abs(grad(i,j))>=epsilon)
X = inv(hess(i,j))*grad(i,j);
syms alpha;
Y = [i j]'-alpha*inv(hess(i,j))*grad(i,j);
Z=grad(Y(1),Y(2));
equation=X'*-Z;
alpha=solve(equation);

x(1)=i;
x(2)=j;
for t=1:length(alpha)
    tem=[i j]'-alpha(t)*inv(hess(i,j))*grad(i,j);
    tem = double(tem);
    if(f(tem(1),tem(2))<f(x(1),x(2))) 
        x(1)=real(tem(1));
        x(2)=real(tem(2));
        step=alpha(t);
        i = x(1);
        j = x(2);
    end 
end
fprintf(1,'%g %g %g %g\n',double(x(1)),double(x(2)),double(f(x(1),x(2))),double(step));
end


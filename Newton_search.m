% mailto:chao@ou.edu
% Newton's search for minimization of function f(x)
% the same as find the root of f'(x)=0 assuming f'(a)<0 and f'(b)>0;
% f(x)=(x-2)^4+2(x-3)^2+3 -> f'(x)=4(x-2)^3+4(x-3) -> f''(x)=12(x-2)^2+4
epsilon = 0.0001;                             % accuracy value
k = 0;                                          % number of iterations
iter = 50;                                      % maximun number of iterations

x0=10;
x1=x0-f1(x0)/f2(x0);
f_0=f1(x0);
f_1=f1(x1);
len = x0-x1;
k=k+1;
fprintf(1,'interation: %d\n',k);
fprintf(1,'x0=%g,x1=%g,f1(x0)=%g,f1(x1)=%g,length=%g\n',x0,x1,f_0,f_1,len);
while((len > epsilon) && (k<iter))
    x0=x1;
    x1=x0-f1(x0)/f2(x0);
    f_0=f1(x0);
    f_1=f1(x1);
    len = x0-x1;
    k=k+1;
    fprintf(1,'interation: %d\n',k);
    fprintf(1,'x0=%g,x1=%g,f1(x0)=%g,f1(x1)=%g,length=%g\n',x0,x1,f_0,f_1,len);
end
fprintf(1,'interation: %d\n',k);
fprintf(1,'x0=%g,x1=%g,f1(x0)=%g,f1(x1)=%g,length=%g\n',x0,x1,f_0,f_1,len);
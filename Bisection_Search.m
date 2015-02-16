% mailto:chao@ou.edu
% Bisection Search for minimization of function f(x)
% the same as find the root of f'(x)=0 assuming f'(a)<0 and f'(b)>0;
a = 0;                                         % start of interval 
b = 10;                                          % end of interval
epsilon = 0.0001;                             % accuracy value
k = 0;                                          % number of iterations
iter = 50;                                      % maximun number of iterations

len=b-a;
xm = (a + b)/2;
fm=f1(xm);
fa=f1(a);
fb=f1(b);

fprintf(1,'interation: %d\n',k);
fprintf(1,'interval:(%g,%g),xm=%g,f1(x1)=%g,f1(xm)=%g,f1(x2)=%g,length=%g\n',a,b,xm,fa,fm,fb,len);
while((abs(fm) > epsilon) && (k<iter))
    if(fm > 0)
        b = xm;
    else
        a = xm;
    end
    k=k+1;
    len=b-a;
    xm = (a + b)/2;
    fm=f1(xm);
    fa=f1(a);
    fb=f1(b);
    fprintf(1,'interation: %d\n',k);
    fprintf(1,'interval:(%g,%g),xm=%g,f1(x1)=%g,f1(xm)=%g,f1(x2)=%g,length=%g\n',a,b,xm,fa,fm,fb,len);
end
fprintf(1,'interation: %d,\n',k);
fprintf(1,'interval:(%g,%g),xm=%g,f1(x1)=%g,f1(xm)=%g,f1(x2)=%g,length=%g\n',a,b,xm,fa,fm,fb,len);
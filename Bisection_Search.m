% mailto:chao@ou.edu
% Bisection Search for minimization of function f(x)
% the same as find the root of f'(x)=0 assuming f'(a)<0 and f'(b)>0;
a = 0;                                         % start of interval 
b = 2.75;                                          % end of interval
epsilon = 0.0001;                             % accuracy value
k = 1;                                          % number of iterations
iter = 500;                                      % maximun number of iterations

len=b-a;
xm = (a + b)/2;
fm=f1(xm);
fa=f1(a);
fb=f1(b);
fxm=f(xm);
errors(k)=abs(fxm-f(1.5907));
fprintf(1,'interation: %d,error=%g\n',k,abs(fxm-f(1.5907)));
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
    fxm=f(xm);
    errors(k)=abs(fxm-f(1.5907));
    fprintf(1,'interation: %d,error=%g\n',k,abs(fxm-f(1.5907)));
    fprintf(1,'interval:(%g,%g),xm=%g,f1(x1)=%g,f1(xm)=%g,f1(x2)=%g,length=%g\n',a,b,xm,fa,fm,fb,len);
end
fprintf(1,'interation: %d,error=%g\n',k,abs(fxm-f(1.5907)));
fprintf(1,'interval:(%g,%g),xm=%g,f1(x1)=%g,f1(xm)=%g,f1(x2)=%g,length=%g\n',a,b,xm,fa,fm,fb,len);
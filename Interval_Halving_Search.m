% mailto:chao@ou.edu
% Interval Halving Search for minimization of function f(x) within initial
% interval (a,b) at the accuracy value of epsilon.

a = -1;                                         % start of interval 
b = 1;                                          % end of interval
epsilon = 0.000001;                             % accuracy value
k = 0;                                          % number of iterations
iter = 10;                                      % maximun number of iterations

len = b-a;
xm = (a + b)/2;
x1 = a+len/4;                                   % computing x1;
x2 = b-len/4;                                   % computing x2; 

fm=f(xm);
f1=f(x1);
f2=f(x2);
while(((b-a) > epsilon) && (k<iter))
    fprintf(1,'interation: %d\n',k);
    fprintf(1,'interval:(%g,%g),x1=%g,xm=%g,x2=%g,f(x1)=%g,f(xm)=%g,f(x2)=%g,length=%g\n',a,b,x1,xm,x2,f1,fm,f2,len);
    % evaluate f(x1) and f(x2)
    if(f1<fm)                                   % if f(x1)<f(xm), then drop half of the interval (xm,b); 
        b = xm;
        xm = x1;
        
        len = b-a;
        x1 = a+len/4;                           % computing x1;
        x2 = b-len/4;                           % computing x2; 
        fm=f(xm);
        f1=f(x1);
        f2=f(x2);
        k=k+1;
    else                                        % if f(x1)>f(xm), we need to continue compare f(xm) with f(x2)
        if(f2<fm)
            a = xm;
            xm = x2;
            len = b-a;
            x1 = a+len/4;                       % computing x1;
            x2 = b-len/4;                       % computing x2; 
            fm=f(xm);
            f1=f(x1);
            f2=f(x2);
            k=k+1;
        else                                    % this means that f(x2)>=f(xm) so our interval will be (x1,x2)
            a = x1;
            b = x2;
            len = b-a;
            xm = (a + b)/2;
            x1 = a+len/4;                       % computing x1;
            x2 = b-len/4;                       % computing x2; 
            fm=f(xm);
            f1=f(x1);
            f2=f(x2);
            k=k+1;
        end
    end
end
fprintf(1,'interation: %d\n',k);
fprintf(1,'interval:(%g,%g),x1=%g,xm=%g,x2=%g,f(x1)=%g,f(xm)=%g,f(x2)=%g,length=%g\n',a,b,x1,xm,x2,f1,fm,f2,len);
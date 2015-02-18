% mailto:chao@ou.edu
% Newton's search for minimization of function f(x)
% the same as find the root of f'(x)=0 assuming f'(a)<0 and f'(b)>0;
% f(x)=(x-2)^4+2(x-3)^2+3 -> f'(x)=4(x-2)^3+4(x-3) -> f''(x)=12(x-2)^2+4
epsilon = 0.0001;                             % accuracy value
k = 0;                                          % number of iterations
iter = 500;                                      % maximun number of iterations

L=0;
R=2.75;

x1=R-f1(R)/((f1(R)-f1(L))/(R-L));
len = R-x1;
k=k+1;
errors(k) = abs(f(x1)-f(1.5907));
fprintf(1,'interation: %d, error=%g\n',k,abs(f(x1)-f(1.5907)));
fprintf(1,'L=%g,x1=%g,R=%g,length=%g\n',L,x1,R,len);
while((abs(f1(x1)) > epsilon) && (k<iter))
    
    if(f1(x1)>0)
        R=x1;
    else
        L=x1;
    end
    x1=R-f1(R)/((f1(R)-f1(L))/(R-L));
    len = R-x1;
    k=k+1;
    errors(k) = abs(f(x1)-f(1.5907));
    fprintf(1,'interation: %d, error=%g\n',k,abs(f(x1)-f(1.5907)));
    fprintf(1,'L=%g,x1=%g,R=%g,length=%g\n',L,x1,R,len);
end
fprintf(1,'interation: %d, error=%g\n',k,abs(f(x1)-f(1.5907)));
fprintf(1,'L=%g,x1=%g,R=%g,length=%g\n',L,x1,R,len);
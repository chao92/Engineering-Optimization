% mailto:chao@ou.edu
% Newton's search for minimization of function f(x)
% the same as find the root of f'(x)=0 assuming f'(a)<0 and f'(b)>0;
% f(x)=(x-2)^4+2(x-3)^2+3 -> f'(x)=4(x-2)^3+4(x-3) -> f''(x)=12(x-2)^2+4
epsilon = 0.0001;                             % accuracy value
k = 0;                                          % number of iterations
iter = 50;                                      % maximun number of iterations

L=0;
R=10;

x1=R-f1(R)/((f1(R)-f1(L))/(R-L));
f_L=f1(L);
f_R=f1(R);
len = x1-R;
k=k+1;
fprintf(1,'interation: %d\n',k);
fprintf(1,'L=%g,x1=%g,R=%g,length=%g\n',L,x1,R,len);
while((abs(x1) > epsilon) && (k<iter))
    L=R;
    R=x1;
    x1=R-f1(R)/((f1(R)-f1(L))/(R-L));
    f_L=f1(L);
    f_R=f1(R);
    len = x1-R;
    k=k+1;
    fprintf(1,'interation: %d\n',k);
    fprintf(1,'L=%g,x1=%g,R=%g,length=%g\n',L,x1,R,len);
end
fprintf(1,'interation: %d\n',k);
fprintf(1,'L=%g,x1=%g,R=%g,length=%g\n',L,x1,R,len);
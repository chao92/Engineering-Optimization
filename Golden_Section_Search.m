% mailto:chao@ou.edu
% Golden Section Search for minimization of function f(x) within initial
% interval (a,b) at the accuracy value of epsilon.

% initial parameters
a = -1;                                         % start of interval 
b = 1;                                          % end of interval
epsilon = 0.000001;                             % accuracy value
ratio = double((sqrt(5)-1)/2);                  % golden proportion coefficient, aroud 0.618
k = 0;                                          % number of iterations
iter = 10;                                       % maximun number of iterations

len = b-a;
x1 = b - ratio * len;                           % computing x1;
x2 = a + ratio * len;                           % computing x2; 

f1=f(x1);
f2=f(x2);

% search
while(((b-a) > epsilon) && (k<iter))
    fprintf(1,'interation: %d\n',k);
    fprintf(1,'interval:(%g,%g),x1=%g,x2=%g,f(x1)=%g,f(x2)=%g,length=%g\n',a,b,x1,x2,f1,f2,len);
    % evaluate f(x1) and f(x2)
    if(f1<f2)                                   % if f(x1)<f(x2), then drop interval (x2,b); 
            b = x2;                             % repalce b with x2;
            len = x2-a;                         % length becomes b-a=x2-a;
            x2 = x1;                            % replace the next iteration x2 with x1;
            x1 = b - ratio * len;               % computing x1 using the equation of computing x1;   
            f1=f(x1);
            f2=f(x2);
    else

            a = x1;
            len = b -a;
            x1 = x2;
            x2 = a + ratio * len;
            f1=f(x1);
            f2=f(x2);
    end
    k=k+1;
end
fprintf(1,'interation: %d\n',k);
fprintf(1,'interval:(%g,%g),x1=%g,x2=%g,f(x1)=%g,f(x2)=%g,length=%g\n',a,b,x1,x2,f1,f2,len);



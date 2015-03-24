
function step = Golden(i,j)
% initial parameters

syms s Y a b;
grad(a,b)=gradient(f(a,b));
Y=[i j]' - s*grad(i,j);
y(s) = f(Y(1),Y(2));

a = -20;                                         % start of interval 
b = 20;                                          % end of interval
epsilon = 0.0001;                             % accuracy value
ratio = double((sqrt(5)-1)/2);                  % golden proportion coefficient, aroud 0.618
%k = 0;                                          % number of iterations
%iter = 500;                                       % maximun number of iterations

len = b-a;
x1 = b - ratio * len;                           % computing x1;
x2 = a + ratio * len;                           % computing x2; 
f1=y(x1);
%f1=f(i-x1*[1 0]*grad(i,j),j-x1*[0 1]*grad(i,j));
f2=y(x2);
%f2=f(i-x2*[1 0]*grad(i,j),j-x2*[0 1]*grad(i,j));

% search
while(((b-a) > epsilon))
   
    % evaluate f(x1) and f(x2)
    if(f1<f2)                                   % if f(x1)<f(x2), then drop interval (x2,b); 
            b = x2;                             % repalce b with x2;
            len = x2-a;                         % length becomes b-a=x2-a;
            x2 = x1;                            % replace the next iteration x2 with x1;
            x1 = b - ratio * len;               % computing x1 using the equation of computing x1;   
            f2=f1;
            f1=y(x1);
            %f1=f(i-x1*[1 0]*grad(i,j),j-x1*[0 1]*grad(i,j));
    else

            a = x1;
            len = b -a;
            x1 = x2;
            x2 = a + ratio * len;
            f1=f2;
            f2=y(x2);
            %f2=f(i-x2*[1 0]*grad(i,j),j-x2*[0 1]*grad(i,j));
    end 
    
end
 step = (a+b)/2;
end
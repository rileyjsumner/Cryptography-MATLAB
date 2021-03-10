u = zeros(8,1);
v = zeros(8,1);

u(1) = 26;
v(1) = 7;

M1 = [0 1; 1 -floor(u(1)/v(1))];
    
w = M1*[u(1);v(1);];
w
    
u(2)=w(1);
v(2)=w(2);

M2 = [0 1; 1 -floor(u(2)/v(2))];

w = M2*[u(2);v(2);];
w

u(3) = w(1);
v(3) = w(2);

M3 = [0 1; 1 -floor(u(3)/v(3))];

w = M3*[u(3);v(3);];
w

u(4) = w(1);
v(4) = w(2);

M4 = [0 1; 1 -floor(u(4)/v(4))];

w = M4*[u(4);v(4);];
w

u(4) = w(1);
v(4) = w(2);

w

% Algorithm terminates — I've obtained a value of 0 (in w(2))

% But to recover the inverse of 7 from these computations?

M4 * M3 * M2 * M1 * [u(1);v(1)]

% This is equal to w ^^

M_total = M4 * M3 * M2 * M1

% First row tells us 1 = 3 * 26 + (-11)*7
% equivalent to observing mod((-11*7),26) = 1
% But -11 is not an element of Z_26 — what to do?

% solution we seek mod(-11,26)

inverse = mod((-11), 26);

% Should be equal to 1: 

mod(inverse*7, 26)




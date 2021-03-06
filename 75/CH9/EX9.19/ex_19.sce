        //    PG (633)

A = [2 1 0;1 3 1;0 1 4]
lam = spec(A)
[L,U] = lu(A)
y1 = [1 1 1]'
w1 = [3385.2 -2477.3 908.20]'
z1 = [w1/norm(w1,'inf')]'
w2 = [20345 -14894 5451.9]'
z2 = [w2/norm(w2,'inf')]'
z3 = z2

//    The true answer is

x3 = [1 1-sqrt(3) 2-sqrt(3)]'

//    z2 equals x3 to within the limits of rounding error accumulations.

//    Consider lam = 1.2679

//    0.7321*x1 + x2 = 0
//    x1 + 1.7321*x2 + x3 = 0
//    Taking x1= 1.0, we have the approximate eigenvector 

//                    x = [1.0000 -0.73210 0.26807]


//    Compared with the true answer obtained above, this is a slightly poorer
//    result obtained by inverse iteration.
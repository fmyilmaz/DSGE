# to create vector, put comma
V = [1, 2, 3, 4, 5, 6]

# to create matrix just add space
V1 = [1 2 3 4 5 6]

# to declare an array just put semicolon
M1 = [1 2 3; 4 5 6; 7 8 9]

# to resahepe vector or matrix just use resahepe()

V3 = [1, 2, 3, 4, 5, 6, 7, 8, 9]
reshape(V3, 3,3) # for vector

M2 = [1 2 3; 4 5 6] 
reshape(M2, 3, 2) # for matrix 2x3 to 3x2

# to create identitiy matirx 
using LinearAlgebra
Matrix{Int}(I, 4, 4)

# for dimensions and size of matrix use ndims() and size(), and to see type of elements in matrix using eltype()
ndims(M2)
size(M2)
eltype(M1)

# to concatenate two vector use vcat (similar to cbind() in R) and use hcat similar to (rbind() in R)

d1 = [1 2 3; 4 5 6]
d2 = [6 7 8; 9 10 11]

hcat(d1, d2)
vcat(d1, d2)

# functions in julia

function f(x, y, z)
    x + y + z
end

# or just assign

g(a, b, c) = a + b + c

# function with return

function β(a, b, c)
    result = a + b + c
    return result
end

β(2,π,3)

# we can use opetator as function

2 * 3 * 4
*(2,3,4)

# function with default parameters

z(x, y, a = 1, b = 2) = a*x + b*y
z(3,5)

 # Anonymous function


 
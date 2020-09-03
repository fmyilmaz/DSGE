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

x -> x + 1 # or

function (x)
    x +1
end

# Anonymous function generally useing with other first class function
map(x -> x + 1, [1, 2])

# multiple return values

function ff( a, b, c)
    a * b * c, a + b + c
end;

ff(1, 2, 3)

x, y  = ff(1, 2, 3);

display(x)
display(y)

function fff(a, b, c)
    multi = a * b * c
    add = a + b + c

    return multi, add
end


fff(1, 2, 3)


# using Anonymous function with multiple piece of code, do-blocks will help

map(x -> x + 1, [1, 2, 3, 4]) # basic way

map([1, 2, 3, 4]) do x # other way 
     x + 1
end 


# control flow
# compound expression

x = (a = 5; b = 6; a*b)

# other way

x = begin
    a = 5
    b = 6
    a * b
end


# conditional evaluation

function ineq(x, y)
    if x > y
        x = 2
    elseif x < y
        x = 1
    else
        x = 0
    end    
end

ineq(1, 2)

# repeated evaluatins: loops

j = 3;

while j > 0
    println(j^2)
    global  j -= 1
end


# for loops

for j in [1, 2, 3]
    println(j)
end

# we can add ∈ to loops

for j ∈ [1, 2, 3]
    println(j)
end


# warning and informational messages

function f(x)
    if x<1
        @warn "x must be positive!"
        else
            return x^2
    end
end


f(2)

function g(x)
    if x < 1
        @info "X must be positive!"
    else
        return x^2
    end    
end

g(-2)


# Plotting 

using PyPlot
x = 1:100
y = rand(100)
display(gcf())
plot(x,y, color = "tomato")
title("basic graphs in PyPlot")




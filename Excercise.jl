using DataFrames
using Distributions
using Gadfly
using HypothesisTests

# two columns named a and begin

df = DataFrame(A = 1:10, B = 2:2:20)

# selecting only rows 1 to 3 from colum

df[1:3, [:A]]

df[!,:Names] = ["A", "A", "A", "B", "C", "B", "A", "B", "C", "A"]

# selecting only values of a in Names

data_A = df[df[!,:Names] .== "A", :]
# simple statistics

describe(data_A[!,:A])
mean(df[!,:A])
sum(df[!,:A])

# creating a for-loop to randomly add M and F string values to the gender_array
data = DataFrame()

gender_array = ["F"]

for n = 1:199
    rn = rand()
    if rn <= 0
        append!(gender_array, ["F"])
    else
        append!(gender_array, ["M"])
    end
end

gender_array

data[!,:Gender] = gender_array

group_array = ["A"]

for n = 1:199
    rn = rand()
    if rn <= 0
        append!(group_array, ["B"])
    else
        append!(group_array, ["A"])
    end
end

data[!,:Group] = group_array
data[!,:Age] = rand(Normal(35,10),200)
data[!,:Days] = rand(Poisson(2), 200)
data[!,:Temp] = rand(Normal(38.5,2), 200)
data[!,:WCC] = rand(Normal(15,5),200)
data[!,:CRP] = rand(Poisson(2),200) .* 2 .+ 100

print(data)

plot(data, x = "Gender", color = "Gender", Geom.histogram,  Guide.title("Gender"), Guide.ylabel("Number"))
plot(data, x = "Gender", y = "Age", Geom.boxplot, Guide.title("Age Difference Between Male and Female"))
plot(data, x = "WCC", color = "Gender", Geom.density, Guide.title("WCC distribution in males and females"))

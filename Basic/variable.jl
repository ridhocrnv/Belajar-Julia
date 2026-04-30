# You can use hash sign to define a one line comment in Julia.
# For multi-line comments, you can use #= and =# to enclose the comment block. Like this following example:

#=
    Testing multi-line comments in Julia.
    https://github.com/ridhocrnv/Belajar-Julia.git
=#

a = 24

println(typeof(a)) # Get the type of a variable, Int64

a = a + 1
println(a) # Print the value of a, which is now 25

a = 12; b = 24; c = 36 # You can define multiple variables in one line by separating them with semicolons (;).

c = b^2 + 2*b
println(c) # Print the value of c, which is 624

a = "Hello, Julia!" # Dynamically assign valuesto a variable, a was an Int64 before, but now it is a String.
println(typeof(a)) # Print the type of a, which is String

d = 3.14
println(typeof(d)) # Print the type of d, which is Float64

# A variable name cannot start with a number,  but you can use uppercase, lowercase or underscore
_abc = 456
println(_abc)


# We can use unicode characters for variable or function names in Julia.
π = 3.14159
println(π) # Print the value of π, which is 3.14159

γ = 0.57721 # \gamma TAB
println(γ) # Print the value of γ, which is 0.57721

α = 1.61803 # \alpha TAB
println(α) # Print the value of α, which is 1.61803

β = 0.69314 # \beta TAB
println(β) # Print the value of β, which is 0.69314


# You can also use subscript and superscript characters in variable names in Julia.
β₀ = 0.5 # \beta\_0 TAB
println(β₀) # Print the value of β₀, which is 0.5

γ¹ = 10 # \gamma\^1 TAB
println(γ¹) # Print the value of γ¹, which is 10


# However do not over use unicode characters, they can make your program confusing.

# You cannot use the following keywords as variable names

#=
    Keywords in Julia:
    abstract, baremodule, begin, break, catch, const, continue, do, else, elseif,
    end, export, false, for, function, global, if, import, let, local, macro, module,
    quote, return, true, try, using, while
=#

# begin = 12 # throw Error: syntax: unexpected symbol "begin"
# if = 24 # throw Error: syntax: unexpected symbol "if"

π = 3.14 # This will overwrite the value of π, which is a built-in constant in Julia.
println(π) # Print the value of π, which is now 3.14

# Naming style cpnventions in Julia for variable names:

first_name = "John" # Use snake_case for variable names, which is the convention in Julia.
last_name = "Doe"
full_name = first_name * " " * last_name # Concatenate strings using the * operator
println(full_name) # Print the full name, which is "John Doe"

firstName = "Jane" # You can also use camelCase for variable names, but it is not the convention in Julia.
lastName = "Smith"
fullName = firstName * " " * lastName
println(fullName) # Print the full name, which is "Jane Smith"


p, q, r = 1, 2, 3 # You can also use multiple assignment to assign values to multiple variables in one line.
println(p, ", ", q, ", ", r) # Print the values of p, q, and r, which are 1, 2, and 3 respectively

p, q = q, p # You can also swap the values of two variables using multiple assignment.
println(p, ", ", q) # Print the values of p and q, which are now 2 and 1 respectively


#= Till now, we did not define the variable types and Julia would automatically infer the types based
    on the assigned values. However, you can also explicitly specify the type
    of a variable in Julia using the syntax variable_name::Type. For example:
=#

function sum_two_numbers(x::Float64, y::Float64)
    return x + y;
end

# sum_two_numbers(1, 2) # throw Error: MethodError: no method matching sum_two_numbers(::Int64, ::Int64)
println(sum_two_numbers(1.0, 2.0)) # Print the sum of 1.0 and 2.0, which is 3.0


# How we can validate if an expression is of a particular type in Julia?
# By (expression)::exprType
# We can catch errors this way

((7+8)*2)::Int64 # This will return 30, which is of type Int64

# ((7+8)*2.0)::Int64 # This will throw an error: MethodError: no method matching (::Type{Float64})(::Int64)

# To declare a variable as a constant in Julia, you can use the const keyword. For example:
const Username = "admin"
# Username = "user" # This will throw an error: ERROR: cannot assign a value to variable Username from module Main
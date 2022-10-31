#^ 11. Assignemnt operators

# until now we were just assigning a value to variables,
# and then doing various operations with the them

a = 1
b = 2

a + b # => returns 3

# but in programming we often want to also change the value of the variables,
# this is why they are called variables after all - they should be changing.

# we can do this by assigning new value to the variable with `=`
a = a + 2

# or we can use the shorter version called assignment operator
a += 2

# similarly there are assignment operators for other operations too:
a = a - b
a -= b

a = a * b
a *= b

a = a / b
a /= b

a = a ** b
a **= b

a = a % b
a %= b

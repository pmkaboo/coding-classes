#^ 17. Methods

# method is a reusable piece of code written
# to perform a single specific task.
# why use methods:
# - organization
#    -> when something fails, its easier to find
#       find the problem when youre looking at
#       one method than if you had to look through
#       the whole program.
# - reusability
#    -> often we have a piece of code that we want
#       to repeat multiple times, and instead of
#       writing the whole thing over and over again,
#       we can just put it into a method and then
#       call the method.

# methods are defined with the `def` keyword
# methods have 3 parts:
# 1. header
#    -> `def` followed by method name and arguments
# 2. body
#    -> block of code that will be executed
#       when we call the method
# 3. end


def my_method # method without arguments
  puts 'it works!'
end

def add(a, b) # method with two arguments
  a + b
end

# we use methods the same way as variables, or
# anything else, by calling them

my_method
add(1, 2)

# methods with arguments can be called without
# the brackets too
add 1, 2

# but its recommended to use the them anyway,
# otherwise things can get confusing quickly
add add 1, 2, 3
add(add(1, 2), 3)

# it is also possible to give the arguments
# a default value

def default_arg(a, b = 'default value')
  puts "a: #{a}"
  puts "b: #{b}"
end

default_arg(1)
default_arg(1, 2)

#~ exercise:
# -> define a method that takes one argument `name`
# -> inside the method print out the `name`
# -> call the method with a few different names

#* splat

# sometimes we dont know how many arguments
# the method will get, and in these cases
# we can use splat argument
# we define these the same way as regular
# arguments, just preceded with `*`

def puts_things(*things)
  things.each { |t| puts t.to_s }
end

puts_things(1, 2, 3)
puts_things('a', 3, 'b', 1, 9)
puts_things(1, {a: 2}, [3, 4])

# the splat argument collects all the received
# arguments into a single array

# its possible to combine it with regular arguments
# in multiple different ways
def splat(first, *rest)
  puts "first #{first.to_s}"
  puts "rest #{rest.to_s}"
end
splat(1, 2, 3, 4, 5)

def splat2(first, second, *rest)
  puts "first #{first.to_s}"
  puts "second #{second.to_s}"
  puts "rest #{rest.to_s}"
end
splat2(1, 2, 3, 4, 5)

def splat3(first, *rest, last)
  puts "first #{first.to_s}"
  puts "last #{last.to_s}"
  puts "rest #{rest.to_s}"
end
splat3(1, 2, 3, 4, 5)

#~ exercise2:
# -> define a method that will take as arguments
#    a greeting and any number of names
# -> inside the method print out the greeting
#    for each of the given names
# -> call the method a couple times with different
#    number of names
# -> for example:
#      your_method('hello', 'a', 'b', 'c')
#      expected output:
#        'hello a'
#        'hello b'
#        'hello c'
#
#      your_method('hi', 'name')
#      expected output:
#        'hi name'

#* return

# everytime we call something in ruby, it
# will always respond with something back.
# the value we receive in response is called
# a return value.
# for example the method `to_s` returns the
# object its called on transformed into a string

1.to_s # returns "1"

# methods are no exception from this, and
# by default they always return whatever
# they have on their last line

def one
  1
end

one # => 1

def two
  one
  8
  2
end

two # => 2

# if there is a call to another method on the last line
# then the return value of that method will be returned

def one_in_one
  one
end

one_in_one # => 1

# sometimes we want to return something before reaching
# the end of the method, and for this we can use
# the keyword `return`

def return_two
  1
  return 2
  puts 'after return'
  3
end

return_two # => 2

# `return` works similarly to `break` and `next`
# in the way that the rest of the block after
# the `return` wont be executed.

# `return` is generally used in combination with
# some conditions

def validate_input a, b, c
  return false if a == 2
  return false if b < 3
  return false if c > 10
  true
end

#~ exercise3:
# -> write a method that will take a number
#    as argument, and return the number squared
# -> if the given argument is not a number
#    return an error message
# -> in a loop ask the user to provide a number,
#    call your method with the number, and print
#    out the returned value
# -> end the loop when user enters `end`

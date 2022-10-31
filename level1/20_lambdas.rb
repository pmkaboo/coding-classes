#^ 20. Lambdas

# `lambdas` are pretty much the same as `procs`,
# with just a few behavioural differences.

lambda { puts 'yo!' }

# this is the same as

proc { puts 'yo!' }

#~ exericse:
# -> create a lambda that will take a string argument
#    and return it as a symbol (hint: `to_sym`)
# -> create an array of random strings
# -> using `map!` and your lambda, convert all the strings
#    in the array into symbols

#* differences between lambdas and procs

# there are only two main differences:
# 1. lambda is strict about the number of arguments it gets
#    - when we give a lamda more arguments than it expects,
#      it will raise an error
#    - when we give a proc more arguments than it expects,
#      it will turn the extras into nil

lmb = lambda { |a,b| puts b }
prc = proc { |a,b| puts b }

puts 'proc call'
prc.call(1)

puts 'lambda call'
lmb.call(1)

# can you tell what will happen when we run the above code?

# 2. when a lambda `returns`, it passes control back
#      to the method where it was called.
#    when a proc `returns`, it does so without going
#      back to the calling method.

def method_lambda
  lmb = lambda { |a| return a**2 }
  puts 'before lambda call'
  puts lmb.call(2)
  puts 'after lambda call'
end

def method_proc
  prc = proc { |a| return a**2 }
  puts 'before proc call'
  puts prc.call(2)
  puts 'after proc call'
end

method_lambda
method_proc

# can you tell what will happen when we run the above code?

#~ exercise:
# -> create a lambda that will take a string argument
#      and check if the first letter of the string is
#      less than (earlier in the alphabet) than
#      the letter 's'
# -> create an array with random strings
# -> use your lambda to filter your array, to contain
#      only strings that start with letter that comes
#      before 's' (hint: `array.select`)

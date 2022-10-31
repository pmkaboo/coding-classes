#^ 12. Loops

# loops are used when we want to repeat something an unknown number of times
# based on some condition. there are multiple different types of loops:

#* loop

# the most simple form of loops is `loop`

loop do
  puts 'youre stuck now'
end

# it will repeat the block of code between `do` and `end` forever

# blocks can be defined with `do-end`, like above, or we can also replace
# the `do-end` with curly brackets `{}`, like this:

loop { puts 'youre stuck now' }

# this syntax is generally used when the block does just one thing and fits on one line

#* while

# `while` will execute the block while the given condition is `true`

x = 1

puts 'while'
while x < 10
  puts x
  x += 1
end

# there is also a one liner version of `while`

x = 1
x += 1 while x < 50
puts "x after one liner while: #{x}"

#* until

# `until` is the same as `while`,
# except it will execute the block while the condition is `false`,
# or in other words, until the condition is `true` :D

x = 1

puts 'until'
until x == 10
  puts x
  x += 1
end

# similarly to `while`, `until` also has a one liner version

x = 1
x += 1 until x == 50
puts "x after one liner until: #{x}"

#! beware of infinite loops

# the only reason the loops above ended is that
# inside of the blocks we kept changing the variable until it got to a state
# that the while/until condition was no longer met.
# if we didnt do that, the loop would run forever:

# x = 1
# while x > 0
#   puts x
#   x += 1
# end

# if you ever get stuck in an infinite loop, you can terminate it with `control + c`,
# or you can just close and reopen the terminal/console window

#* break

# `break` can be used when want to terminate a loop,
# usually when some condition is met.
# for example if we want to stop printing we reach 5

x = 1

puts 'until 5'
loop do
  break if x == 5
  x += 1
  puts x
end

#* next

# `next` can be used when we want to skip a step in a loop,
# again its usually based on some condition.
# for example if we want to print only even numbers:

x = 0

puts 'even numbers'
while x < 10
  x += 1
  next if (x % 2 == 1)
  puts x
end

#$ both `break` and `next` will work the same in
#$ all types of loops and iterators (more on those soon)
#$ you can also use PRY inside the loops to see exactly what is
#$ happening in each iteration

#~ exercise:
# -> ask the user for any positive integer smaller than 100 (you can assume the user will follow instructions)
# -> use `while` to print out all odd numbers between 0 and the number
# -> use `until` to print out all even numbers between 0 and the number
# -> use `loop` to print out all numbers between 0 and the number that are smaller than 42
# -> in all 3 cases print out both 0 and the number if they meet the condition

# examples:

# loop do
#   puts 'youre stuck now'
# end

# while true
#   puts 'youre stuck now'
# end

# until false
#   puts 'youre stuck now'
# end

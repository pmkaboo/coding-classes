#^ 18. Blocks

# blocks have been already briefly mentioned before,
# but now that we understand methods, these should
# make a bit more sense too.
# very simply put, blocks are methods that dont have
# a name, and as such cant be reused easily, and
# they only exist in the given context.

# blocks can be created with keywords `do - end` or
# with curly braces `{}`

5.times do
  puts 'it works'
  1+2
end

5.times { puts 'this is the same' }

# blocks are in general used together with methods,
# they are passed to the method as an argument.
# in the example above, the method `times` is taking
# the block as an argument.
# similarly, the method `each` also takes a block argument

[1, 2, 3].each { |x| puts x }

# some methods can take regular and block arguments
# at the same time

[1, 2, 3].each_slice(2) { |x| puts x.to_s }

# while `each` takes items one by one and passes them
# into the block, `each_slice(n)` will take `n` number
# of items from the array and pass them into the block
# together as another array

#* map

# there are many methods that take blocks as arguments,
# one of them is `map`. its similar to `each` in the way
# that it will go over each element in the collection
# its called on once, but while `each` will return the
# original array, `map` will apply the expression in the block
# to the elements and return the modified array

arr = [1, 2, 3]
arr.each { |x| x + 1 } # returns [1, 2, 3]
arr.map { |x| x + 1 } # returns [2, 3, 4]

# note that `map` will not change the value stored in the
# `arr` variable

puts arr.to_s

# it will instead create a copy of the array
# and return that. if we want to change the original `arr`
# array, we can use `map!`

arr = [1, 2, 3]
arr.map! { |x| x + 1 }
puts arr.to_s

# in general, the exclamation mark `!` at the end of the
# method name indicates that the method might do something
# unexpected, like change the array its called on

#* yield

# in order for a method to be able to accept a block argument,
# it has to implement some way to transfer control from itself
# to the block and back. we can do this with the `yield` keyword

def my_method &block
  puts 'inside method'
  puts 'before yield'
  yield
  puts 'after yield'
end

my_method { puts 'in block' }

# as mentioned before, blocks can be created with `{}` or `do - end`
my_method do
  puts 'in block'
end

# its also possible to `yield` with arguments

def method_with_args(text)
  puts 'method start'
  puts 'fixed yield'
  yield('some text')
  puts 'variable yield'
  yield(text)
  puts 'method end'
end

method_with_args('method arg') { |yield_arg| puts "argument in block: #{yield_arg}" }

# same thing with `do - end``
method_with_args('method arg') do |yield_arg|
  puts "argument in block: #{yield_arg}"
end

#~ exercise:
# -> define a method that takes a number argument
# -> print and yield the number
# -> if the yield returns something else than `nil`, print it
# -> call your method with a number and
#    a block that will print out the number squared
# -> call your method with a number and
#    a block that will return the number cubed (raised to the third power)


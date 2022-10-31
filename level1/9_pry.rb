#^ 9. Pry

# now that the code will be becomming more complex, it will also be very useful
# to have some way of debugging and inspecting the code, and PRY is the perfect
# tool for this. to use PRY, we will first have to install it:

# in terminal run `gem install pry`

# now that its installed we can use it in any file, or console, by requiring it:

require 'pry'
# dont worry about `require` too much,
# for now all you need to know is that it lets you use pry

# once required, we can use it by calling `binding.pry`

my_var = 123

print 'your name: '
name = gets

binding.pry # now we can check exactly what `chomp` was doing earlier

# once were done debugging we can `exit` the console and the code will continue

puts 'something after pry'

#~ exercise:
# -> try using pry

#^ 7. User input

# another thing we will need in future exercises is some input from the user
# while the code is running. for this purpose we will be using `gets`, this will just
# pause the code and wait for the user to type something in the terminal

print 'your name: '
name = gets.chomp
# `gets` -> returns the string typed by the user with a new line at the end
# `chomp` -> returns the string without new line at the end
# this code would work the same without `chomp`,
# but the new line character could be causing issues,
# for example if we wanted to count the number of characters the user typed

puts name

#~ exercise:
# -> ask the user for a random word
# -> output the number of letters in that word
#    (if user types 'word', the output should be '4')

#* string interpolation

# this is used to insert variables into a string:

print 'your age: '
age = gets.chomp

puts "you are #{age} years old"

# interpolation, and special characters, will work only
# when you use double quotes "" to create the string

var = 1 + 1
puts "double quotes interpolation: #{var}; special characters \t\t ;"
puts 'single quotes interpolation: #{var}; special characters \t\t ;'

#~ exercise:
# -> ask the user for his first name
# -> then ask for his last name
# -> and then output his name on one line
#    if the user provides 'John' for first name, and 'Doe' for last name
#    the output should be 'your name is John Doe'

#* numbers from user

# `gets` always returns the users input as a string, which can cause problems
# when we are expecting numbers. in the above example with age it was fine because
# we just wanted to print out the age, but what if we wanted to do some calculations
# with it? to do this we need to convert the string into a number, and ruby provides
# methods for strings that do exactly this

'123'.to_i # returns the string as an integer
'123'.to_f # returns the string as a float

print 'any number: '
x = gets.chomp.to_i

# and now we can do maths with `x`

#~ exercise:
# -> ask the user for a number
# -> output the number multiplied by 2

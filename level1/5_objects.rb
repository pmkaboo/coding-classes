#^ 5. Everything is an object

# we will cover objects more in depth later, for now
# its just important to understand that everything in ruby is an object.

1        # this is a numeric object
'string' # this is a string object
true     # this is a boolean objects

# all objects have some abilities, which are called methods in ruby.
# the type of the object determines what methods it has.
# for example a number and a string will have different
# methods, but two different numbers will have the same methods.
# some methods can be shared between different types too.
# to call a method on an object, just use `.`, here are some examples:

1.to_s # returns the number as a string
1.to_f # returns the number as a float

'string'.size # returns the number of characters the string has

# returns the string with all lowercase characters replaced with their uppercase variants
'string'.upcase

# returns the string with all uppercase characters replaced with their lowercase variants
'STRING'.downcase

'string'.reverse # returns the string backwards
'string'.capitalize # returns the string with first character in uppercase

# methods can also be chained together

'string'.upcase.reverse
123.to_s.reverse.to_i

#~ exercise:
# -> create `name` variable and store your name in it, capitalized
#    (if you still have it from chapter 3, you can just reuse it)
# -> return your name backwards with only the last letter in uppercase
#    (name = 'Peter' -> should return 'Retep')

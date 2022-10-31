#^ gsub and sub

#* gsub

# stands for global substitution, its a method for strings,
# takes two arguments, and it simply replaces all occurences
# of the first argument inside the string, with
# the second argument

'abbc'.gsub('b', 'd') # returns 'addc'

#* sub

# is the same as gsub, but it replaces only the first occurence

'abbc'.sub('b', 'd') # returns 'adbc'
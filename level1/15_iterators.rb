#^ 15. Iterators

# iterators serve the same purpose as loops, to repeat a block of code multiple times,
# but they are called on a specific collection over which we want to iterate.
# as with loops, there are also many different types of iterators:

#* each

# `each` will run the given block of code for each element of an object

[1,2,3].each &custom_block

# the same thing, just with `do` - `end`
[1,2,3].each do |x|
  puts x
end

# also works on ranges
(1...5).each { |x| puts x }

#* times

# `times` will run the given block of code the specified number of times

10.times { puts 'it works!' }

#~ exercise:
# -> ask the user for a secret word
# -> ask the user for some text (random words separated by spaces)
#    that includes the secret word at least once
# -> print out the provided text with all occurences of the secret word
#    replaced by three stars '***'
# -> for example:
#      secret = 'strong_password'
#      text = 'my password is strong_password'
#      expected output: 'my password is ***'

# hint: 'some text'.split(' ') => ['some', 'text']
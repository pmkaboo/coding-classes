#^ 16. Hashes

# another very useful data structure is a hash.
# its a collection of key-value pairs, and its useful
# when we want to access items in our collection by
# something else than the index

# both keys and values can be any object

hash = {
  'string_key' => 123,
  11 => 456,
  true => 'value with bool key',
  :symbol_key => false,
  also_a_symbol: 789
}

# to get a value from a hash, we use the same syntax as for
# getting values from an array, except instead of using the index
# in the brackets, we use the key

hash['string_key']
hash[11]
hash[true]
hash[:symbol_key]
hash[:also_a_symbol]

# we can add new values to the hash with `[]=`

hash[:new] = 'value'

#* symbols

# `symbol` is another data type, very similar to string,
# the main difference is that while two strings with
# the same value will be different objects, two symbols
# with the same value will be the same object

puts 'abc'.object_id
puts 'abc'.object_id

puts :abc.object_id
puts :abc.object_id

# what this means is that were saving memory by using
# symbols, and also that symbols cant be changed once defined

string = 'abc'
string += 'd'

symbol = :abc
symbol += :d

# and as such, symbols make perfect hash keys

# symbol can be any text, and can contain numbers or underscores,
# but it cant be only numbers

symbol = :123 # => not allowed, throws an error

#* Hash.new

# we can also create a hash using `Hash.new`

hash = Hash.new

# if we create the hash this way,
# we can also pass an argument to the `new` method
# and this will serve as the default value for the hash

hash = Hash.new(0)
hash2 = {}

hash[:abc] # => returns 0
hash2[:abc] # => returns nil

#* iterators

# iterators work on hashes too

hash = { a: 1, b: 2 }
hash.each { |key, value| puts "key `#{key}` holds value `#{value}`" }

#~ exercise:
# -> ask the user for some text
# -> create a hash from the given text
#      keys will be the words in the text
#      values will be how many times the word occurs in the text
# -> print out each key-value pair from this hash in the following format:
#      'word' occurs N times
# -> for example:
#      text = 'the night owls fly in the night sky'
#      hash = { 'the' => 2, 'night' => 2, 'owls' => 1, 'fly' => 1, 'in' => 1, 'sky' => 1 }
#      expected output:
#        'night' occurs 2 times
#        'the' occurs 2 times
#        'owls' occurs 1 times
#        ...
# -> bonus points for `1 time` instead of `1 times`

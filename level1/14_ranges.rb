#^ 14. Ranges

# range is very similar to an array, because its also a collection of items,
# except the range represents an interval with some beginning and end.
# we can declare ranges with `start..end` or `start...end`

1..10 # range from 1 to 10, including 10
1...10 # range from 1 to 10, excluding 10
'a'..'z' # range of letters from `a` to `z`

# ranges can be easily converted to arrays, and then worked with as arrays
# by using their `to_a` method
(1..5).to_a # => [1, 2, 3, 4, 5]
(1...5).to_a # => [1, 2, 3, 4]

# ranges also have some other useful methods
range = 1..10
range.first # => 1
range.last # => 10
range.include?(10) # => true

#~ exercise:
# -> ask the user for two numbers (you can assume the second one will be greater than the first)
# -> using a range, check if the number 42 is between those two numbers

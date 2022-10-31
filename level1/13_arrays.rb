#^ 13. Arrays

# array is a collection of items where the items can be anything. its useful when
# we want to work with some set of data. we can declare arrays with `[a, b, c]`

[1, 2, 3] # array of integers
['a', 'b', 'c'] # array of strings
[true, false, true] # array of booleans
[[1, 2], [3, 4]] # arrays of arrays
['a', 1, true] # the items dont have to be of the same type
[13, 40, 's', 21] # the items dont have to be organized in any way

a = 1
b = 2
[a, b, b] # array of variables

# we can access the items in an array by their position, more commonly called 'index',
# its important to note that the first item has index 0
arr = [1, 2, 3]
arr[0] # => 1
arr[1] # => 2

# we can also access the array backwards, the last item will have index -1
arr[-1] # => 3
arr[-2] # => 2

# we can add more items with `<<`
arr << 4 # adds 4 as the new last item

# ruby also provides some useful methods for arrays
arr.first # => 1
arr.last # => 3
arr.reverse # => [3, 2, 1]
arr.include?(2) # => true

#* split

# when it comes to arrays, one more important method is `split`,
# its a method you can use on strings to turn them into arrays
'a b c/d'.split(' ') # => returns array ['a', 'b', 'c/d']

# we can split the string by any character
'abc'.split('b') # => ['a', 'c']

# or combination of characters
'ab/c'.split('b/') # => ['a', 'c']

#* join

# `join` on the other hand is used to combine the elements of
# an array into a string
['a', 'b', 'c'].join(' ') # => returns string 'a b c'

# again we can join the array using any character,
# or combination of characters
['a', 'c'].join('b') # => 'abc'

# or with no characters at all
['a', 'b', 'c'].join # => 'abc'


#~ exercise:
# -> create an empty array
# -> repeatedly ask the user to provide random words or numbers and add them to the array
# -> stop the loop when the user provides the word `end`
#    and dont add `end` to the array
# -> print out the resulting array

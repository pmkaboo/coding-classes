#^ sorting

# sorting is a topic of its own, as there is a plethora of
# different ways how an array can be sorted, each with its
# own set of advantages and disadvantages. but this more of
# a theoretical problem than a practical one, so we wont
# be focusing on it. in ruby sorting is very simple, we just
# use the method `sort`

arr = [2, 3, 1, 5, 4]
arr.sort # returns the array sorted in ascending order => [1,2,3,4,5]
arr2 = ['c', 'b', 'd', 'a']
arr2.sort # sorting also works with strings => ['a', 'b', 'c', 'd']

# to compare two values for purposes of sorting, ruby uses
# combined comparison operator `a <=> b`
# this will one of three values:
#  - `0`  -> when `a` and `b` are equal
#  - `-1` -> when `a` is less than `b`
#  - `1`  -> when `a` if greater than `b`

# so when we are sorting array `['c', 'b', 'd', 'a']`,
# it will happen in these steps:
# 1. 'c' <=> 'b'
#      - this returns 1, and swaps the items
#      - array after this step ['b', 'c', 'd', 'a']
# 2. 'c' <=> 'd'
#      - returns -1, nothing happens
# 3. 'd' <=> 'a'
#      - returns 1, swaps the items
#      - array after this step ['b', 'c', 'a', 'd']
# 4. 'c' <=> 'a'
#      - returns 1, swaps the items
#      - array after this step ['b', 'a', 'c', 'd']
# 5. 'b' <=> 'a'
#      - returns 1, swaps the items
#      - array after this step ['a', 'b', 'c', 'd']

# youve probably noticed that sorting happens by default
# in ascending order

arr = [2, 3, 1, 5, 4]
arr.sort
# is the same as
arr.sort { |a, b| a <=> b }

# if we want descending order, we can just swap `a` and `b`
arr.sort { |a, b| b <=> a }

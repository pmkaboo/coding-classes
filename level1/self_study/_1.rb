#^ `_1`

# underscore one is simply a shortcut for
# the first argument of a block

# these do exactly the same thing:
10.times { puts _1 }
10.times { |x| puts x }

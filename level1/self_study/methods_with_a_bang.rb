#^ methods with a bang `!`

# calling methods on an object generally doesnt
# change the object, just creates a new one

string = 'abc'
string.upcase # returns 'ABC'
string # returns 'abc'

# same is true for all most other methods, like `downcase`, `capitalize`,
# 'underscore', `to_i`, and so on

# to change the original object, we would have to assign it the new value
string = 'abc'
string = string.upcase
string # returns 'ABC'

# to help with this, ruby provides the bang variant for a lot of these
# methods, which will change the object the method is called on

string = 'abc'
string.upcase!
string # returns 'ABC'

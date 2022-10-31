#^ ternary operator `condition ? if : else`

# this is just a shortcut that lets us to write very simple if-else statements on one line

# these do exactly the same thing:
if 1.odd?
  puts '1 is odd'
else
  puts '1 is even'
end

1.odd? ? puts('1 is odd') : puts('1 is even')

# and can be further simplified using interpolation
puts "1 is #{1.odd? ? 'odd' : 'even'}"
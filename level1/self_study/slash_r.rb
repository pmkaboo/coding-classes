#* `\r`

total = 100_000
total.times { print "\r#{_1 + 1} / #{total}" }
puts # just an empty line after print

# `\r` is a special character that moves the cursor to the start of line
# when printing something

puts '`\r` example line by line'
print '1' # after this the line looks like this `1|`
print '2' # now its `12|`
print '3'# `123|`
print "\r4" # `4|23`
print '5' # `45|3`
print '6' # `456|`
print "\r7" # `7|56`
puts

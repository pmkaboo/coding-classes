#^ 10. Control flow

# is a fancy word for a concept you very likely know already:
# if some condition is true then do something, otherwise do something else.
# this is very crucial tool in programming
# as without our programs wouldnt really be able to do anything.
# for example if we want to sell alcohol, we need to be able to
# react differently when were dealing with underage user and an adult

#* if, else, elsif

# the most simple way how to do this, is by using `if`
# this will execute the code inside the if block when the condition is `true`

if 1 < 2
  puts '1 is in fact less than 2'
end

puts 'this works too' if true

# if we need also need to do something when the condition is false,
# we can add an `else` block

if 1 > 2
  puts 'the condition evaluates to false, so this wont be printed'
else
  puts '1 is not greater than 2'
end

# and if we need to check for multiple conditions,
# we can also add any number of `elsif` blocks

if 1 > 2
  puts 'wont be printed'
elsif 3 == 3
  puts '3 really equals 3, wow'
elsif 4 == 4
  puts '4 equals 4, but earlier elsif block was already executed'
else
  puts 'elsif evaluates before else, and was true, so this wont be printed'
end

#* unless

# `unless` works the same way as `if`,
# except it runs the block when the condition is `false`

unless 1 > 2
  puts '1 is not greater than 2'
end

# this might make the code easier to read in some situations,
# for example:

tired = false
puts 'writing code' unless tired

# you can also use `else` with `unless`

unless tired
  puts 'writing code'
else
  puts 'making tea'
end

# personally id advise against using `unless` in most situations,
# it just makes my head hurt thinking about the negated conditions,
# and its usually quite easy to rewrite the code using `if`

# for example, the above example with `tired`, could be:
ready_to_code = true
if ready_to_code
  puts 'writing code'
else
  puts 'making tea'
end

#~ exercise:
# -> ask the user to provide his age, and based on the answer tell him
#    if hes old enough to drink (assume drinking age 21)
# -> if the user is between 18-21 let him know that he could drink if he
#    wasnt in the US :D

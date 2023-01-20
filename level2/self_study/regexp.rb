#^ Regexp

# regexp stands for regular expression, and its used
# for constructing search strings by using special characters

# list of most common special characters:

# \d - matches any digit
# \w - matches any word character (alphanumeric & underscore)
# \s - matches any whitespace character (space, tab, newline)
# \D - matches any non-digit
# \W - matches any non-word character
# \S - matches any non-whitespace character

# \ - escapes the following character (if it would otherwise be interpreted as a special character)

# . - matches any single character

# ^ - matches the start of a line
# $ - matches the end of a line

# * - matches zero or more of the preceding character or group
# + - matches one or more of the preceding character or group
# ? - matches zero or one of the preceding character or group

# {n} - matches exactly n of the preceding character or group
# {n,} - matches n or more of the preceding character or group
# {n,m} - matches at least n and at most m of the preceding character or group

# | - matches either the preceding or the following character or group

# [] - matches any single character within the square brackets
# [^] - matches any single character not within the square brackets

# () - groups characters and allows for applying operators to the group as a whole

# the `*` and `+` operators are greedy by default, what this means is that
# they try to match as many characters as they can.
# to make them not greedy we can just add `?` after them

s = 'A..C..C'
r = /A.+C/
r2 = /A.+?C/

s.match(r) # => 'A..C..C'
s.match(r2) # => 'A..C'

# A..C..C       r = (reluctant) non-greedy match
# \_/r /        g = greedy match
#  \__/g

#~ exercise:
# -> create a regex that will match an email address
# -> you can set the regex variable below and run this
#    file to test it against the valid and invalid
#    emails listed below

regex = //

valid_emails = %w[
  abc@def.com
  address@home.eu
  first.last@another.sk
  a@b.com
  a.b.c.d@e.com
]
invalid_emails = %w[
  first@.x
  @host.x
  firsthost.x
  firsthost
]

valid_emails.each.with_index do |s, i|
  puts "valid test #{i}: #{s.match?(regex)}"
end

invalid_emails.each.with_index do |s, i|
  puts "invalid test #{i}: #{!s.match?(regex)}"
end
#^ %w and %i

# sometimes we want to create an array
# full of strings or symbols, and ruby
# provides a convenient way how to avoid
# typing quotes or colons

#* %w

# `%w` can be used for creating arrays of strings,
# or better said, words - strings with no spaces

arr = %w[abc def ghi]
# same as
arr = ['abc', 'def', 'ghi']

#* %i

# `%i` can be used for creating arrays of symbols

arr = %i[abc def ghi]
# same as
arr = [:abc, :def, :ghi]

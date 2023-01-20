#^ Keyword arguments

# keyword arguments are an alternative
# to the positional arguments, and work
# pretty much the same way as if we were
# passing a hash as an argument. A method
# can accept both positional and keyword
# arguments at the same time.

#* positional arguments examples:
  def required_positional_args(a, b)
    "[a: #{a}, b: #{b}]"
  end

  def optional_positional_args(a = 3, b = 4)
    "[a: #{a}, b: #{b}]"
  end

  def mixed_positional_args(a, b = 5)
    "[a: #{a}, b: #{b}]"
  end

  puts "required positional: ".rjust(22) + required_positional_args(1, 2)
  puts "optional positional: ".rjust(22) + optional_positional_args
  puts "mixed positional: ".rjust(22) + mixed_positional_args(1)

#* keyword arguments examples:
  def require_keyword_args(a:, b:)
    "[a: #{a}, b: #{b}]"
  end

  def optional_keyword_args(a: 1, b: 2)
    "[a: #{a}, b: #{b}]"
  end

  def mixed_keyword_args(a:, b: 3)
    "[a: #{a}, b: #{b}]"
  end

  puts "required keyword: ".rjust(22) + require_keyword_args(a: 1, b: 2)
  puts "optional keyword: ".rjust(22) + optional_keyword_args
  puts "mixed keyword: ".rjust(22) + mixed_keyword_args(a: 1)

#* mixed arguments examples:
  def mixed_args(a, b = 2, c:, d: 4)
    "[a: #{a}, b: #{b}, c: #{c}, d: #{d}]"
  end

  puts "mixed args: ".rjust(22) + mixed_args(1, c: 3)

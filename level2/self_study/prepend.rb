#^ Prepend module

# aside of being included or extended, modules
# can also be prepended. similarly to include,
# this will add the module methods as instance
# methods of the class, but with the difference
# that the module will be placed before the class
# in the class' ancestors chain. what this means
# is that youll be able to override/extend the
# methods behavior inside the module

module MyModule
  def some_method
    puts 'calling some_method from module'
  end
end

class IncludeClass
  include MyModule

  def some_method
    puts 'calling some_method from include class'
  end
end

class PrependClass
  prepend MyModule

  def some_method
    puts 'calling some_method from prepend class'
  end
end

puts 'include:'
IncludeClass.new.some_method
puts

puts 'prepend:'
PrependClass.new.some_method
puts

puts 'ancestors:'
puts IncludeClass.ancestors.to_s # => [IncludeClass, MyModule, ...]
puts PrependClass.ancestors.to_s # => [MyModule, PrependClass]

# ruby looks from left to right in the ancestors
# for the method definition and uses the first
# one it finds.
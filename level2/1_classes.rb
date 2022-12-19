#^ 1. Classes

# Ruby is object oriented-programming language, which means
# that its workign with programming constructs called objects.
# (Almost) everything in ruby is an object, and objects have
# methods and attributes.

"Ruby".length
# => 4

# here the `"Ruby"` object is a string, on which were calling
# its method `length`, which returns its length attrbibute of 4

# what does it mean that its a string - its an instance of
# the String class. A class is just a way of organizing and
# producing objets with similar attributes and methods.

# lets have a look at how ruby classes look like

class Triangle
  # initialize is called every time a new instance is created
  def initialize(a, b, c)
    @a = a # instance variables - attributes
    @b = b
    @c = c
  end

  # when we want to expose some attribute,
  # we do it by defining a method with the same name
  def a
    @a
  end

  # instance variable are available almost everywhere in the class
  def sides
    [@a, @b, @c]
  end

  def circumference
    @a + @b + @c
  end

  # as the name implies, the value of instance variables can
  # change over time
  def resize_a(new_a)
    @a = new_a
  end
end

# and now that we have a class defined, lets see what we can do with it

triangle1 = Triangle.new(1, 2, 3) # create new instance and save it to a variable `triangle1`
puts triangle1.circumference # => 6
puts triangle1.sides.to_s # => [1, 2, 3]
puts triangle1.a # => 1

triangle1.resize_a(5)

puts triangle1.a # => 5

triangle2 = Triangle.new(4, 5, 6)
any_var_name = Triangle.new(7, 8, 9)

#~ exercise:
# -> create a Person class, with attributes name and age
# -> add methods to print out these attributes
# -> create an instance of your class and save it into a variable
# -> print out the name and age of the instance

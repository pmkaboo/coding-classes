#^ Class methods

# just like we have instance and class variables, we also
# have instance and class methods. the difference between
# the two is that instance methods can be called on instances
# of the class, and class methods can be called on
# the class itself. all the methods weve defined so far
# were instance methods.

class Triangle
  def self.new_equilateral(side)
    new(side, side, side)
  end

  def initialize(a, b, c)
    @a = a
    @b = b
    @c = c
  end

  def sides
    [@a, @b, @c]
  end
end

triangle1 = Triangle.new_equilateral(4)
puts triangle1.sides.to_s

#~ exercise:
# -> create a class that can track and print out number of its instances
# -> create a few instances of the class
# -> print out the current number of instances of the class

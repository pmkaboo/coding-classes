#^ Attribute helpers

# until now we had to laborously define methods
# for reading and writing of each attribute
# of our classes, but luckily ruby provides
# helper methods which make this process way
# more streamlined.

class Triangle
  def initialize(a, b, c)
    @a = a
    @b = b
    @c = c
  end

  def a
    @a
  end

  def b
    @b
  end

  def c
    @c
  end

  def a=(value)
    @a = value
  end
end
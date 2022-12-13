#^ Attribute helpers

# instead of laborously defining methods
# for reading and writing attributes, ruby
# provides useful helper methods which make
# this process way more streamlined

#* attr_reader
# can replace methods that just return an instance variable

class Triangle
  attr_reader :a

  def initialize(a)
    @a = a
  end
end

# this is the same as


class Triangle
  def initialize(a)
    @a = a
  end

  def a
    @a
  end
end

#* attr_writer
# can replace methods that assign a value to instance variable

class Triangle
  attr_writer :a

  def initialize(a)
    @a = a
  end
end

# this is the same as

class Triangle
  def initialize(a)
    @a = a
  end

  def a=(value)
    @a = value
  end
end

#* attr_accessor
# this is a combination of attr_reader and attr_writer

class Triangle
  attr_accessor :a

  def initialize(a)
    @a = a
  end
end

# this is the same as

class Triangle
  def initialize(a)
    @a = a
  end

  def a
    @a
  end

  def a=(value)
    @a = value
  end
end

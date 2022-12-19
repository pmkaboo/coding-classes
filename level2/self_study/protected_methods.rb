#^ Protected methods

# aside of public and private, methods can also
# be protected. protected methods are very similar
# to private methods - they cant be called from
# outside the class, but with the slight difference
# that you can call them on other objects of the same
# class.

class Example
  attr_reader :id

  def initialize(id)
    @id = id
  end

  def public_method
    puts "#{id} - public method called"
  end

  def public_call_to_protected_method(other = nil)
    if other
      other.protected_method
    else
      protected_method
    end
  end

  def public_call_to_private_method(other = nil)
    if other
      other.private_method
    else
      private_method
    end
  end

  protected

  def protected_method
    puts "#{id} - protected method called"
  end

  private

  def private_method
    puts "#{id} - private method called"
  end
end

class OtherClass
  def public_call_to_protected_method(other)
    other.protected_method
  end
end

ex1 = Example.new('example1')
ex2 = Example.new('example2')
oc = OtherClass.new

ex1.public_method
# => works ok

# ex1.private_method
# => throws error -> cant call private method from outside

# ex1.protected_method
# => throws error -> cant call protected method from outside

ex1.public_call_to_private_method
# => works ok -> private method called from inside the class

ex1.public_call_to_protected_method
# => works ok -> protected method called from inside the class

# the difference between private and protected:

# ex1.public_call_to_private_method(ex2)
# => throws error -> cant call private methods of other instances

ex1.public_call_to_protected_method(ex2)
# => works ok -> protected method of other instance of the same class called from inside the class

# oc.public_call_to_protected_method(ex1)
# => throws error -> cant call protected methods of instances of other classes
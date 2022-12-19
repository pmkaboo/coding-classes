#^ 2. Variable context

# variables can exist in different contexts, we already know
# about local and instance variables, but there are few more types

#* local variables

def method1
  local_var = 123
  local_var # => 123
end

def method2
  local_var # => throws undefined error because the variable is available only in the context of method1
end

local_var # => throws undefined error because the variable is available only in the context of method1

#* instance variables

class Class1
  def initialize
    @instance_var = 1
  end

  def instance_var
    @instance_var
  end

  def method1
    @instance_var += 1
  end
end

@instance_var # => throws undefined error because the variable is available only in the instance context of Class1

instance1 = Class1.new
instance2 = Class1.new

instance1.instance_var # => 1
instance2.instance_var # => 1

instance1.method1 # => increases value of @instance_var by 1 for this instance

instance1.instance_var # => 2
instance2.instance_var # => 1

#* class variables

class Class1
  @@class_var = 1

  def class_var
    @@class_var
  end

  def method1
    @@class_var += 1
  end
end

@@class_var # => throws undefined error because the variable is available only in the context of Class1

instance1 = Class1.new
instance2 = Class1.new

instance1.class_var # => 1
instance2.class_var # => 1

instance1.method1 # => increases the value of @@class_var by 1 - this will affect all instances of the class

instance1.class_var # => 2
instance2.class_var # => 2
inst3 = Class1.new
inst3.class_var # => 2

# because of this behaviour its very difficult to keep track of what is the expected value
# of a class variable at any given time, and so their use should be limited to cases where
# they are absolutely necessary

# in most cases they can be replaced with constants, which are also available anywhere in the class,
# but their value doesnt change over time

#* global variables

$global_var = 123

# this will be available both for reading and modification anywhere in the code,
# and as such its even more dangerous than class variables

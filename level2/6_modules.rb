#^ 6. Modules

# modules are similar to classes, with
# the difference that they cant create
# instances and cant have subclasses.
# they are kinda like toolboxes that
# contain a set of methods and constants.

module Circle
  PI = 3.14159

  # `self` in this case refers to the `Circle` module
  # its the same as `def Circle.area(radius)`
  def self.area(radius)
    PI * (radius ** 2)
  end
end

puts Circle.area(5)
puts Circle::PI

#* namespacing

# one of the main purposes of modules is to help
# with code organization and separate classes, methods
# and constants into named spaces

module Writing
  class Letter; end
end

module PostOffice
  class Letter; end
end

Writing::Letter.new
PostOffice::Letter.new

# the double colon `::` is called scope resolution operator,
# and its telling ruby where to look for a specific bit of code.

#* require

# some modules are loaded in ruby by default,
# while others need to be brought in explicitly.
# we can do this by using `require`

require 'date'
puts Date.today

# require doesnt always bring in whole classes,
# sometimes it can just extend existing ones

puts Time.now
require 'time'
puts Time.parse('2020-1-1')

#* include

# aside of being required, modules can also be included.
# any class that includes some module, can use that
# modules methods, without having to prepend them
# with the modules name.

class WithMath
  include Math

  def pie
    puts Math::PI
    puts PI
  end
end

puts WithMath.new.pie

#* extend

# works the same as include, except now the modules
# methods will become class methods.

module MyModule
  def some_method
    puts 'method in module'
  end
end

class IncludeClass
  include MyModule
end

class ExtendClass
  extend MyModule
end

IncludeClass.new.some_method
ExtendClass.some_method

#~ exercise:
# -> create a module that has one method, which
#    just prints out the text 'Hello from module'
# -> create a class that will include your module
# -> create another class that will extend your module
# -> call the module method on instance of the first class
# -> call the module method on the second class

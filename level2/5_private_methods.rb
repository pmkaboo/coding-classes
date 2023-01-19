#^ 5. Private methods

# until now all the methods we wrote were
# public - available to be called by anyone anywhere.
# but this is not a good approach to writing code,
# because once your class starts being used somewhere,
# it becomes very difficult to change - for example
# a simple thing like renaming a method might require
# changes in many places. To solve this problem
# we have private methods - these are available
# to be called only from inside the class, where
# they are defined.

# public methods - how the rest of the code should
#                  use your class
# private methods - how your class works under the hood

class Person
  # `time` library is needed for `Time.parse` method - more on this in the next chapter
  require 'time'

  attr_reader :name, :birth_date

  def initialize(name, birth_date)
    @name = name
    @birth_date = birth_date
  end

  def age
    calculate_age_from_birth_date
  end

  private # every method below this line will be private

  def calculate_age_from_birth_date
    diff = Time.now - Time.parse(birth_date) # returns number of seconds since birth date
    (diff / 60 / 60 / 24 / 365).to_i
  end
end

john = Person.new('john', '2000-1-1')
puts "#{john.name} is #{john.age} years old"

# now if we want to change how the age is calculated,
# or if we want to just add it as another attribute
# of Person, we can do that without breaking all the code
# that is using our class:

class Person
  #... rest of class

  def age
    guess_age
  end

  private

  def guess_age
    rand(10) + 30
  end
end

jim = Person.new('john', '2000-1-1')
jim.guess_age

# from the outside, the public method `age`
# has not changed in any way, its still called
# the same, and still returns an integer,
# internally though we have changed the calculation
# of the age to just return a random number.

# by default all methods are public, but we can
# also explicitly say that methods are public
# by using the `public` method the same way as
# the `private` method

class Dog
  public

  def bark
    puts 'woof!'
  end

  private

  def id
    rand(99999)
  end
end

#~ exercise:
# -> create a Person class with name attribute
# -> add a private method(s) that will extract
#   first and last name from the provided name
# -> add public methods for reading first and last name
# -> for example: Person.new('john doe').first_name
#   should return 'john'
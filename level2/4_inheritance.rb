#^ 4. Inheritance

# inheritance is a process by which one class
# can use attributes and methods of another class.
# it basically represents a is-a relationship,
# for example we might have a Bird class which would
# have some attributes and methods common to any bird,
# and then we can have a Pigeon class, Raven class, etc
# which are all birds.

class Bird
  def can_fly?
    true
  end

  def build_nest
    puts 'building nest'
  end
end

class Pigeon < Bird

end

pigeon = Pigeon.new
pigeon.can_fly? # this method is undefined in Pigeon class, but still works

#* override

# sometimes we want to change, or override some
# of the inherited methods, because our subclass
# is just slightly different than the rest.
# for example:

class Chicken < Bird
  def can_fly?
    false
  end
end

chicken = Chicken.new
chicken.can_fly? # => false

#* super

# and sometimes we dont want to just override the
# inherited method, but enhance it with extra functionality.

class Woodpecker < Bird
  def build_nest
    puts 'excavating hole in tree'
    super
  end
end

woodpecker = Woodpecker.new
woodpecker.build_nest # will print both the line in bird and the line in woodpecker class

#~ exercise:
# -> create DataExport class that will have
#      two required attributes @filename and @type
#      method `generate` which will just print 'generating {type} export file #{filename}'
# -> create PdfExport class that will inherit from DataExport
#      override the initialize method of this class to
#        take just one argument - filename
#        and to set the type to 'pdf' (without using `@type=` in this class)
# -> create instance of PdfExport class
#      and call its `generate` method

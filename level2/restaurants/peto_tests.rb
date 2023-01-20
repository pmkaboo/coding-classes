require_relative 'peto.rb'

NOT_OK_ERROR = 'not ok'

# RESTAURANT_CLASS = Restaurant # -> changing this because im using a different class
RESTAURANT_CLASS = MyRestaurant

def test1
  restaurant = RESTAURANT_CLASS.new

  order = restaurant.place_order(true)

  result = order == 10
  resolve(result, 'test1', 'failed placing accepted order')
end

def test2
  restaurant = RESTAURANT_CLASS.new

  order = restaurant.place_order(false)

  result = order == NOT_OK_ERROR
  resolve(result, 'test2', 'failed placing denied order')
end

def resolve(result, tst, msg)
  if result
    puts " - #{tst}: OK"
  else
    puts " - #{tst}: #{msg}"
  end

  result
end

puts 'running tests'
pass =[test1, test2].all?

puts

result = pass ? 'passed' : 'nope'
puts "result: #{result}"
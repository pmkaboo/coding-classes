# 1. create a copy of this file and give it personalised name

# 2. require the file(s) with your code
#      - best way to do this is to place the file(s)
#        into the same directory as this file, and
#        then just change the file name(s)
#      - the 2 requires are just an example, you can have 1
#        or 3 or however many you need
#      - if you decide to have the files in a different
#        directory, the filename needs to be replaced with
#        a path from this files location to the required file
require_relative 'your_file1.rb'
require_relative 'your_file2.rb'

# 3. change the error message(s) (optional)
#      - when placing an order and some items are unavailable
#        or discount is added to both items and the order,
#        a specific error message should be returned. You can either
#        use the messages below, or specify your own
UNAVAILABLE_ITEM_ERROR = 'Items not available'
DOUBLE_DISCOUNT_ERROR = 'Double discount is not allowed'

# 4. change the class name(s) (optional)
#      - if you dont want the classes representing the
#        restaurants and items to be called Restaurant and
#        Item, you can change that here
RESTAURANT_CLASS = Restaurant
ITEM_CLASS = Item

# 5. run the tests
#      - `ruby path/to/your_tests.rb`

# ----- dont change anything below here -----

def test1
  restaurant = RESTAURANT_CLASS.new('Owls place')

  result = restaurant.name == 'Owls place'
  resolve(result, 'test1', 'restaurant name not accessible')
end

def test2
  restaurant = RESTAURANT_CLASS.new('Owls place')
  item = ITEM_CLASS.new('pizza', 10, 10)

  restaurant.add_items(item)

  result = restaurant.items.first.name == 'pizza'
  resolve(result, 'test2', 'failed addding one item to restaurant')
end

def test3
  restaurant = RESTAURANT_CLASS.new('Owls place')
  item1 = ITEM_CLASS.new('pizza', 10, 10)
  item2 = ITEM_CLASS.new('burger', 10, 10)

  restaurant.add_items([item1, item2])

  result = restaurant.items.map(&:name).sort == ['burger', 'pizza']
  resolve(result, 'test3', 'failed addding multiple items to restaurant')
end

def test4
  restaurant = RESTAURANT_CLASS.new('Owls place')
  item = ITEM_CLASS.new('pizza', 10, 10)

  restaurant.add_items(item)
  restaurant.remove_item('pizza')

  result = restaurant.items.empty?
  resolve(result, 'test4', 'failed removing item from restaurant')
end

def test5
  restaurant = RESTAURANT_CLASS.new('Owls place')
  item1 = ITEM_CLASS.new('pizza', 10, 10)
  item2 = ITEM_CLASS.new('burger', 7.5, 10)

  restaurant.add_items([item1, item2])

  order_items = [
    { name: 'pizza', count: 1 },
    { name: 'burger', count: 1 }
  ]

  order = restaurant.place_order(order_items)

  result = order == 17.5
  resolve(result, 'test5', 'failed removing item from restaurant')
end

def test6
  restaurant = RESTAURANT_CLASS.new('Owls place')
  item1 = ITEM_CLASS.new('pizza', 10, 0)

  restaurant.add_items(item1)

  order_items = [ { name: 'pizza', count: 1 } ]

  order = restaurant.place_order(order_items)

  result = order == UNAVAILABLE_ITEM_ERROR
  resolve(result, 'test6', 'failed ordering out of stock item')
end

def test7
  restaurant = RESTAURANT_CLASS.new('Owls place')
  item1 = ITEM_CLASS.new('pizza', 10, 10)

  restaurant.add_items(item1)

  order_items = [ { name: 'burger', count: 1 } ]

  order = restaurant.place_order(order_items)

  result = order == UNAVAILABLE_ITEM_ERROR
  resolve(result, 'test7', 'failed ordering unknown item')
end

def test8
  restaurant = RESTAURANT_CLASS.new('Owls place')
  item1 = ITEM_CLASS.new('pizza', 10, 10)

  restaurant.add_items(item1)

  order_items = [ { name: 'pizza', count: 7 } ]

  restaurant.place_order(order_items)

  result = restaurant.items.first.stock == 3
  resolve(result, 'test8', 'failed changing stock level after order')
end

def test9
  restaurant = RESTAURANT_CLASS.new('Owls place')
  item1 = ITEM_CLASS.new('pizza', 10, 10)

  restaurant.add_items(item1)

  order_items = [ { name: 'pizza', count: 1, discount: 0.5 } ]

  order = restaurant.place_order(order_items)

  result = order == 5.0
  resolve(result, 'test9', 'failed applying discount to order item')
end

def test10
  restaurant = RESTAURANT_CLASS.new('Owls place')
  item1 = ITEM_CLASS.new('pizza', 10, 10)
  item1 = ITEM_CLASS.new('burger', 10, 10)

  restaurant.add_items(item1, item2)

  order_items = [
    { name: 'pizza', count: 1, discount: 0.5 },
    { name: 'burger', count: 2 }
  ]

  order = restaurant.place_order(order_items)

  result = order == 25.0
  resolve(result, 'test10', 'failed applying discount to one of multiple order items')
end

def test11
  restaurant = RESTAURANT_CLASS.new('Owls place')
  item1 = ITEM_CLASS.new('pizza', 10, 10)
  item1 = ITEM_CLASS.new('burger', 10, 10)

  restaurant.add_items(item1)

  order_items = [
    { name: 'pizza', count: 1 },
    { name: 'burger', count: 2 }
  ]

  order = restaurant.place_order(order_items, discount: 0.5)

  result = order == 15.0
  resolve(result, 'test11', 'failed applying discount to order')
end

def test12
  restaurant = RESTAURANT_CLASS.new('Owls place')
  item1 = ITEM_CLASS.new('pizza', 10, 10)

  restaurant.add_items(item1)

  order_items = [ { name: 'pizza', count: 1, discount: 0.5 } ]

  order = restaurant.place_order(order_items, discount: 0.5)

  result = order == DOUBLE_DISCOUNT_ERROR
  resolve(result, 'test12', 'failed applying double discount')
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
pass = [test1, test2, test3, test4, test5, test6, test7, test8].all?
bonus = [pass, test9, test10, test11, test12].all?

puts

if bonus
  puts 'congratz, passed with bonus!!!'
elsif pass
  puts 'yay, passed!'
else
  puts 'nope'
end

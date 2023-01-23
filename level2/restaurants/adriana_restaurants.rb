# frozen_string_literal: true

# class for Restaurants selling Items
class Restaurant
  attr_reader :name, :items

  def initialize(name)
    @name = name
    @items = []
  end

  def add_items(*items)
    @items << items
    @items.flatten!
  end

  def remove_item(item_name)
    @items.delete_if { |i| i.name == item_name }
  end

  def place_order(ordered_items, discount: 0)
    return 'Double discount is not allowed' if invalid_discount?(ordered_items, discount)

    order_price = 0
    ordered_items.each do |ordered_item|
      item = select_item(ordered_item[:name])

      return 'Items not available' if item.nil? || !item.in_stock?

      order_price += item.sell(ordered_item[:count], ordered_item[:discount])
    end
    order_price * (1 - discount)
  end

  private

  def invalid_discount?(ordered_items, discount)
    discount.positive? && ordered_items.map { |i| i[:discount].to_f }.sum.positive?
  end

  def select_item(name)
    items.select { |i| i.name == name }.first
  end
end

# class for Restaurants ordered in the Restaurants
class Item
  attr_reader :name, :price
  attr_accessor :stock

  def initialize(name, price, stock)
    @name = name
    @price = price
    @stock = stock
  end

  def in_stock?
    @stock.positive?
  end

  def sell(ordered_quantity, discount)
    @stock -= ordered_quantity
    @price * (1 - discount.to_f) * ordered_quantity
  end
end

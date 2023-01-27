# frozen_string_literal: true

# class for Restaurants selling Items
class Restaurant
  attr_reader :name, :items

  def initialize(name)
    @name = name
    @items = []
  end

  def add_items(*items)
    @items += items
  end

  def remove_item(item_name)
    @items.delete_if { |i| i.name == item_name }
  end

  def place_order(ordered_items, discount: 0)
    return 'Double discount is not allowed' if invalid_discount?(ordered_items, discount)
    return 'Items not available' if incomplete_stock?(ordered_items)

    order_price = 0
    ordered_items.each do |ordered_item|
      item = select_item_by_name(ordered_item[:name])
      order_price += item.calculate_price(ordered_item[:discount])
      item.sell
    end
    order_price * (1 - discount)
  end

  private

  def incomplete_stock?(ordered_items)
    ordered_items.each do |ordered_item|
      item = select_item_by_name(ordered_item[:name])
      return true if item.nil?

      item.reserve(ordered_item[:count])
      return true if item.out_of_stock?
    end
    false
  end

  def invalid_discount?(ordered_items, discount)
    discount.positive? && ordered_items.sum { |i| i[:discount].to_f }.positive?
  end

  def select_item_by_name(name)
    items.find { |i| i.name == name }
  end
end

# class for Items ordered in the Restaurants
class Item
  attr_reader :name, :price
  attr_accessor :stock, :reserved_items

  def initialize(name, price, stock)
    @name = name
    @price = price
    @stock = stock
    @reserved_items = 0
  end

  def out_of_stock?
    (@stock - @reserved_items).negative?
  end

  def reserve(count)
    @reserved_items = count
  end

  def calculate_price(discount)
    @price * (1 - discount.to_f) * @reserved_items
  end

  def sell
    @stock -= @reserved_items
    @reserved_items = 0
  end
end

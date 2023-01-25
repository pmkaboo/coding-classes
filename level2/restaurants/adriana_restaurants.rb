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
    return 'Items not available' if out_of_stock?(ordered_items)

    order_price = 0
    ordered_items.each do |ordered_item|
      item = select_item_by_name(ordered_item[:name])
      order_price += item.sell(ordered_item)
    end
    order_price * (1 - discount)
  end

  private

  def invalid_discount?(ordered_items, discount)
    discount.positive? && ordered_items.sum { |i| i[:discount].to_f }.positive?
  end

  def out_of_stock?(ordered_items)
    check = ordered_items.map do |ordered_item|
      item = select_item_by_name(ordered_item[:name])
      item.nil? ? -1 : item.stock - ordered_item[:count]
    end
    check.any?(&:negative?)
  end

  def select_item_by_name(name)
    items.find { |i| i.name == name }
  end
end

# class for Items ordered in the Restaurants
class Item
  attr_reader :name, :price
  attr_accessor :stock

  def initialize(name, price, stock)
    @name = name
    @price = price
    @stock = stock
  end

  def sell(ordered_item)
    @stock -= ordered_item[:count]
    @price * (1 - ordered_item[:discount].to_f) * ordered_item[:count]
  end
end

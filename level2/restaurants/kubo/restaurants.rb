# frozen_string_literal: true

# Restaurant class
class Restaurant
  attr_reader :name, :items

  def initialize(name)
    @name = name
    @items = []
  end

  def add_items(*items)
    items.each { |item| @items << item }
  end

  def remove_item(item_name)
    @items.reject! { |item| item.name == item_name }
  end

  def place_order(order_items, order_discount = 0)
    order_discount = order_discount[:discount] if order_discount != 0
    order_price = 0
    order_items.each do |order_item|
      checked_item = @items.select { |i| i.name == order_item[:name] }[0]
      return DOUBLE_DISCOUNT_ERROR if order_item[:discount] && !order_discount.zero?
      return UNAVAILABLE_ITEM_ERROR unless checked_item
      return UNAVAILABLE_ITEM_ERROR unless stock_check(order_item, checked_item)

      checked_item.stock -= order_item[:count]
      order_price += checked_item.price * order_item[:count]
      order_price -= order_price * order_item[:discount] if order_item[:discount]
    end
    order_discount.zero? ? order_price : order_price -= order_price * order_discount
  end

  def stock_check(order_item, checked_item)
    checked_item.stock >= order_item[:count]
  end
end

# Item class
class Item
  attr_reader :name, :price
  attr_accessor :stock

  def initialize(name, price, stock)
    @name = name
    @price = price
    @stock = stock
  end
end

require_relative 'test'

# frozen_string_literal: true

class Restaurant
  UNAVAILABLE_ITEM_ERROR = 'Items not available'
  DOUBLE_DISCOUNT_ERROR = 'Double discount is not allowed'
  attr_reader :name, :items

  def initialize(name, *items)
    @name = name.to_s
    @items = items
  end

  def add_items(*items)
    items.each { |i| @items << i }
  end

  def remove_item(item_name)
    @items.delete_if { |item| item.name == item_name }
  end

  def place_order(ordered_items, discount: 0)
    order_total = 0
    items_in_stock = []

    ordered_items.each do |ordered_item|
      item = find_item(ordered_item)

      return UNAVAILABLE_ITEM_ERROR if item.nil? || item_out_of_stock?(item, ordered_item)
      return DOUBLE_DISCOUNT_ERROR if double_discount?(ordered_item, discount)

      order_total += calculate_total(item, ordered_item)
      items_in_stock << { item:, quantity: ordered_item[:count] }
    end

    deplete_stock(items_in_stock)
    order_total *= 1 - discount
  end

  def find_item(ordered_item)
    @items.find { |item| item.name == ordered_item[:name] }
  end

  def item_out_of_stock?(item, ordered_item)
    item.stock < ordered_item[:count]
  end

  def double_discount?(ordered_item, discount)
    ordered_item[:discount] && discount > 0
  end

  def calculate_total(item, ordered_item)
    price = item.price
    quantity = ordered_item[:count]
    item_discount = ordered_item[:discount] || 0
    price * quantity * (1 - item_discount)
  end

  def deplete_stock(items_in_stock)
    items_in_stock.each do |item|
      item[:item].deplete_stock(item[:quantity])
    end
  end
end

class Item
  attr_reader :name, :price, :stock

  def initialize(name, price, stock)
    @name = name.to_s
    @price = price.to_f
    @stock = stock.to_f
  end

  def deplete_stock(quantity)
    @stock -= quantity
  end
end

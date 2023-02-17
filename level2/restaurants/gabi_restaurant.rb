
require 'pry'

UNAVAILABLE_ITEM_ERROR = 'Items not available'
DOUBLE_DISCOUNT_ERROR = 'Double discount is not allowed'

class Restaurant

    def initialize(name,*items)
        @name = name.to_s
        @items = items
    end
        
    def name
        @name
    end

    def items
        @items
    end

    def add_items(*item)
        item.each{|i| @items << i}
    end

    def remove_item(item_name)
        item = @items.find{|item| item.name == item_name}
        @items.delete(item)
    end

    def place_order(ordered_items, discount: 0)
        order_total = 0
        ordered_items.each do |ordered_item| 
            #binding.pry
            item = @items.find{|item| item.name == ordered_item[:name]}
            return UNAVAILABLE_ITEM_ERROR if item.nil?

            price = item.price
            stock = item.stock
            quantity = ordered_item[:count]
            if stock >= quantity
                item_discount = ordered_item[:discount] || 0
                return DOUBLE_DISCOUNT_ERROR if discount != 0 && item_discount != 0

                total = price * quantity * (1 - item_discount)
                order_total += total
                
                item.deplete_stock(quantity)
            else
                return UNAVAILABLE_ITEM_ERROR
            end
            
        end 
        order_total *= 1 - discount
        return order_total
    end
end


class Item

    def initialize(name,price,stock)
        @name = name.to_s
        @price = price.to_f
        @stock = stock.to_f
    end

    def name
        @name
    end

    def price
        @price
    end

    def stock
        @stock
    end

    def deplete_stock(quantity)
        @stock -= quantity
    end
end

pizza = Item.new('pizza',10,10)
burger = Item.new('burger', 10,10)
egg = Item.new('egg',10,15)
Sushitime = Restaurant.new('Sushitime', pizza, burger)


puts Sushitime.place_order([{name: 'pizza', count: 1},{name: 'burger', count: 2}], discount: 0.5)



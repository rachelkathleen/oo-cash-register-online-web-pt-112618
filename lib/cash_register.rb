require 'pry'

class CashRegister
  attr_accessor :total, :discount, :title, :price, :quantity, :discounted_total, :items

  def initialize(discount = 0)
    @total = 0
    @discount = discount
  end

  def add_item(title, price, quantity = 1)
    @total += price * quantity
  end

  def apply_discount
    if discount > 0
       @total = @total - (total * discount/100)
       "After the discount, the total comes to $#{@total}."
     else "There is no discount to apply."
     end
  end

  def items
    items = []
    add_item(title, price, quantity = 1)
    items << title

  end


end

require 'pry'

class CashRegister
  attr_accessor :total, :discount
  
  def initialize(discount = 20)
    @total = 0
    @discount = discount
  end 
  
  def add_item(title, price, quantity = 1)
   @price = price
   @total += price * quantity
  end 
  
  def apply_discount
   @total = @price - (@price * (@discount.to_f / 100))
   "After the discount, the total comes to $#{@total.to_i}."
  end 
end 

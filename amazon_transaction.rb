# Code your cash register here!
class AmazonTransaction
  attr_accessor :total, :items, :add_item
  attr_reader :discount
  def initialize(discount, total = 0 )
    @total = total
    @items = []
    @discount = discount 
  end
  def add_item(title, price, quantity=1)
    @total += price * quantity
    @items << title
  end
  def apply_discount
    @total = @total * ((100 - @discount) /100)
  end
end
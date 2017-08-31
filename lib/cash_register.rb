 class CashRegister

   attr_accessor :discount, :total, :items, :last_transaction

   def initialize(discount = 100)
     @total = 0
     @discount = discount
     @items = []
     @last_transaction = []
   end

   def add_item(item, price, quantity = 1)
     @quantity = quantity
     @price = price
     @total = @total + (@price * @quantity)
     quantity.times do
       @items << item
     end
     @last_transaction << @price
   end

   def apply_discount
     if @discount == 100
       @total
       return "There is no discount to apply."
     else
       @discount = @total * @discount / 100.00
       @total = @total - @discount
       return "After the discount, the total comes to $#{@total.to_int}."
     end
   end

   def void_last_transaction
     @total = @total - @last_transaction[-1]
   end







 end

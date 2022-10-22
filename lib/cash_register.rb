# require 'pry'
class  CashRegister
    attr_accessor :discount, :total, :last_transaction, :items
   def initialize (discount=0)
    @discount = discount
    @items = []
    @total = 0
    @last_transaction = nil
   end

    def add_item(title,price, quantity=1)
        i= 0
       while i< quantity do
        @items << title
        @last_transaction = price * quantity
        i+=1
       end
        @total +=price * quantity
    end



    def apply_discount
        if @discount == 0
            "There is no discount to apply."
        else
        @total -= @total * (@discount/100.to_f)
            "After the discount, the total comes to $#{@total.round}."

        end
    end

  
    def void_last_transaction
      if @items.length == 0
        @total = 0.0
      else
        @total -= @last_transaction
    end

    end

end
# # binding.pry
# # cash_register_with_discount = CashRegister.new(20)
# # cash_register_with_discount.discount
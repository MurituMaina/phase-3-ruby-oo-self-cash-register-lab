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
        self.items << title
        self.last_transaction = price * quantity
        i+=1
       end
        self.total +=price * quantity
    end



    def apply_discount
        if self.discount == 0
            "There is no discount to apply."
        else
        self.total -= self.total * (self.discount/100.to_f)
            "After the discount, the total comes to $#{self.total.round}."

        end
    end

  
    def void_last_transaction
      if self.items.length == 0
        self.total = 0.0
      else
        self.total -= self.last_transaction
    end

    end

end
# # binding.pry
# # cash_register_with_discount = CashRegister.new(20)
# # cash_register_with_discount.discount
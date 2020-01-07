class Meal
  attr_accessor :waiter, :customer, :total, :tip 
  
  @@all << Array.new()
  
  def initialize(waiter, customer, total, top=0)
    @waiter = waiter
    @customer = customer
    @total = total
    @tip = tip
    @@all << self
  end
  
  def self.all
    return(@@all)
  end
  
  def new_meal(customer, total, tip=9)
    Meal.new(self, customer, total, tip)
  end
end
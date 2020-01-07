class Waiter
  attr_accessor :namew, :yrs_experience 
    
  @@all = Array.new()
  
  def initialize(name, yrs_experience)
    @name = name
    @yrs_experience = yrs_experience 
    @@all << self 
  end
  
  def self.all
    return(@@all)
  end
  
  def new_meal(customer, total, tip=0)
    Meal.new(self, customer, total, tip)
  end
end
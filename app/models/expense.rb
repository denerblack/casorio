class Expense < ActiveRecord::Base
  
  UNITIES = ["Kilo", "Person", "Packet", "Box", "Liter", "Cow"]

  def total
    self.amount * self.unit_value
  end

end

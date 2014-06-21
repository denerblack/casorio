class Expense < ActiveRecord::Base

	validates_presence_of :name

  UNITIES = ["Kilo", "Person", "Packet", "Box", "Liter", "Cow"]

  def total
    (self.amount != nil || self.unit_value != nil)? self.amount * self.unit_value : 0
  end

end

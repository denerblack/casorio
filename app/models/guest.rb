class Guest < ActiveRecord::Base
	scope :total_companions, -> {where.not(companions_amount: 0).map(&:companions_amount).sum}
	scope :total_children, -> {where.not(children_amount: 0).map(&:children_amount).sum}

	validates_presence_of :name

end

class Guest < ActiveRecord::Base
	scope :total_companions, -> {where.not(companions_amount: 0).map(&:companions_amount).sum}
	scope :total_children, -> {where.not(children_amount: 0).map(&:children_amount).sum}
	scope :by_name, -> name { where(' lower(name) like ? ', "%#{name}%") }

	validates_presence_of :name

end

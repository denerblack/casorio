class Guest < ActiveRecord::Base
	scope :total_companions, -> {where.not(companions_amount: 0).map(&:companions_amount).sum}
	scope :total_children, -> {where.not(children_amount: 0).map(&:children_amount).sum}
	scope :by_name, -> name { where(' lower(name) like ? ', "%#{name.downcase}%") }

	validates_presence_of :name

	def self.generate_guests_list_pdf
		pdf = Prawn::Document.new
		guests = Guest.all
		pdf.define_grid(columns: 3, rows: guests.size, gutter: 20)
		pdf.move_down(30)
		items = guests.each_with_index.map{|guest, i| [i+1, guest.name, guest.companions_amount, guest.children_amount, guest.phone_number, nil]}
		items.unshift(['Ordem','Nome','Acomp.','Crianças', 'Telefone', 'Observação' ])
		pdf.table items, :row_colors => ["FFFFFF","DDDDDD"]
		pdf.move_down(10)
		pdf
	end

end

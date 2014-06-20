class Event < ActiveRecord::Base
	has_many :gift_lists

	def generate_gift_lists_pdf
		pdf = Prawn::Document.new
		pdf.define_grid(columns: 3, rows: self.gift_lists.size, gutter: 20)
		#pdf.grids.show_all
		#pdf.start_new_page

		pdf.move_down(30)

		items = self.gift_lists.each_with_index.map{|gift, i| [i+1, gift.name, gift.guest_name]}

		pdf.table items, :row_colors => ["FFFFFF","DDDDDD"]

		pdf.move_down(10)
		pdf
	end
end

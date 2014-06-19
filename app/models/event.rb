class Event < ActiveRecord::Base
	has_many :gift_lists

	def generate_gift_lists_pdf
		pdf = Prawn::Document.new
		pdf.define_grid(columns: 2, rows: self.gift_lists.size, gutter: 20)
		#pdf.grids.show_all
		#pdf.start_new_page

		pdf.move_down(30)

		items = self.gift_lists.map{|gift| [gift.name]}

		pdf.table items, :row_colors => ["FFFFFF","DDDDDD"]

		pdf.move_down(10)


		pdf

		#pdf.grid([2,2], [4,4]).bounding_box do
		#	pdf.move_down 100
#
#		end

	end
end

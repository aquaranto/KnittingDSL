class Row
	def initialize(row_number, *stitch_args)
	 @row_number = row_number
	end

	def row_num
		"Row #{@row_number}"
	end
end
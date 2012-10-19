class Row
	attr_reader :row_number, :stitch_args
	def initialize(row_number, *stitch_args)
	 @row_number = row_number
	 @stitch_args = stitch_args
	end

	def row_num
		"Row #{@row_number}"
	end

	def reverse_row
		#
	end

	def inverse_marker
		#when called will make V's to -'s
	end
end
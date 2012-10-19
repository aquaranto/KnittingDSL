require "row"
require "stitch"
require "cast_on"
require "repeat_rows"

class Pattern

	attr_reader :pattern_name
	def initialize(pattern_name)
		@pattern_name = pattern_name.capitalize
	end

	def row(row_number, *stitch_args)
		row = Row.new(row_number, *stitch_args)
	end

	def cast_on(stitches)
		cast_on_stitches = Cast_on.new(stitches)
	end

	def repeat(num_of_rows, times_repeated)
	  #repeat_rows = Repeat_rows.new(num_of_rows, times_repeated)
	end

	def build_pattern
		#use this method to 1) build the array of the pattern
		#and 2) present it in a meaningful way
		#@pattern_hash = {}
		#puts @pattern.pattern_name
		#p "Cast on #{cast_on} stitches"
		#p @pattern_hash
		#puts "Repeat the previous #{num_of_rows} rows, #{times_repeated} times."
		
	end
end


require "pattern"

def pattern(name)
	puts "#{name}".capitalize
end

def cast_on(stitches)
	puts "Cast on #{stitches} stitches"
end

@pattern_array = []
def row(row_number, *stitch_args)
	row = Row.new(row_number, *stitch_args)
	@pattern_array << row.row_num
	#p stitch_args
end

def repeat(num_of_rows, times_repeated)
	p @pattern_array.reverse
	puts "Repeat the previous #{num_of_rows} rows, #{times_repeated} times."
	puts
end

def method_missing(meth, *args, &block)
	if meth.to_s.match(/k(\d)/)
		Knit.new($1)
	elsif meth.to_s.match(/p(\d)/)
		Purl.new($1)
	end
end

load "sample_dsl_program.kt"
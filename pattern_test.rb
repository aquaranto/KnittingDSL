require "pattern"

def pattern(name)
	puts "#{name}".capitalize
end

def cast_on(stitches)
	puts "Cast on #{stitches} stitches"
end

@bananas = []
def row(row_number, *stitch_args)
	row = Row.new(row_number, *stitch_args)
	@bananas << row.row_num
end

def repeat(num_of_rows, times_repeated)
	p @bananas.reverse
	puts "Repeat the previous #{num_of_rows} rows, #{times_repeated} times."
end

def method_missing(meth, *args, &block)
	if meth.to_s.match(/k(\d)/)
		@bananas << "knit#{($1)}"
	elsif meth.to_s.match(/p(\d)/)
	  @bananas << "purl#{($1)}"
	end
end

load "sample_dsl_program.kt"
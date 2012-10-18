require "pattern"

def pattern(name)
	@pattern = Pattern.new(name)
	puts @pattern.pattern_name
end

def cast_on(stitches)
	cast_on = @pattern.cast_on(stitches).cast_on_count
	p "Cast on #{cast_on} stitches"
end

@pattern_hash= {}
def row(row_number, *stitch_args)
	row = @pattern.row(row_number, stitch_args)
	@pattern_hash[row.row_num] = stitch_args
end

def repeat(num_of_rows, times_repeated)
	p @pattern_hash
	puts "Repeat the previous #{num_of_rows} rows, #{times_repeated} times."
	puts
end

def method_missing(meth, *args, &block)
	if meth.to_s.match(/k(\d+)/)
		knit = Knit.new($1)
		'Knit ' + knit.stitch_count
	elsif meth.to_s.match(/p(\d+)/)
		purl = Purl.new($1)
		'Purl ' + purl.stitch_count
	end
end

load "sample_dsl_program.kt"
#@pattern.build_pattern
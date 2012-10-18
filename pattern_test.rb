require "pattern"

def pattern(name)
	@pattern = Pattern.new(name)
	puts @pattern.pattern_name
end

def cast_on(stitches)
	cast_on = @pattern.cast_on(stitches).cast_on_count
	puts "Cast on #{cast_on} stitches"
end

@pattern_hash= {}
def row(row_number, *stitch_args)
	row = @pattern.row(row_number, stitch_args)
	@pattern_hash[row.row_num] = stitch_args
end

def repeat(num_of_rows, times_repeated)
	p @pattern_hash
	@pattern_hash.each {|key, value| puts "#{key}: #{value.each {|value| value}}"}
	puts "Repeat the previous #{num_of_rows} rows, #{times_repeated} times."
	@pattern_hash.each {|key, value| puts "#{key}: #{value.each {|value| value.stitch_marker(@stitchy)}}"}
	puts
end

def method_missing(meth, *args, &block)
	if meth.to_s.match(/k(\d+)/)
		knit = Knit.new($1)
		@stitchy = $1
		p knit.stitch_marker($1)
		return knit.to_s

	elsif meth.to_s.match(/p(\d+)/)
		purl = Purl.new($1)
		p purl.stitch_marker($1)
		return purl.to_s
	end
end

load "sample_dsl_program.kt"
#@pattern.build_pattern
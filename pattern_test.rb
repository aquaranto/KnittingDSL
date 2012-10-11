def pattern(name)
	puts "#{name}".capitalize
end

def cast_on(stitches)
	puts "Cast on #{stitches} stitches"
end

def row(row_number, *stitch_args)
	puts "Row #{row_number}"
end

def repeat(num_of_rows, times_repeated)
	puts "Repeat the previous #{num_of_rows} rows, #{times_repeated} times."
end

def method_missing(meth, *args, &block)
	if meth.to_s.match(/k(\d)/)
		puts "knit #{$1}"
  elsif meth.to_s.match(/p(\d)/)
    puts "purl #{$1}"
  end
end

load 'sample_dsl_program.kt'


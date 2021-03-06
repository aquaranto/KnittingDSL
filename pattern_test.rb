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
   @pattern.add_row(row_number, stitch_args)
  #p row
  #p row.stitch_args
  #@pattern_hash[row.row_num] = stitch_args.each {|stitch| stitch.to_s}
end

def method_missing(meth, *args, &block)
  if meth.to_s.match(/k(\d+)/)
    Knit.new($1)
  elsif meth.to_s.match(/p(\d+)/)
    Purl.new($1)
  end
end

def repeat(num_of_rows, times_repeated)
  #p @pattern_hash
  #@pattern_hash.each {|key, value| puts "#{key}: #{value.each {|value| value}}"}
  puts "Repeat the previous #{num_of_rows} rows, #{times_repeated} times."
  puts
end


load "sample_dsl_program.kt"
@pattern.build_pattern
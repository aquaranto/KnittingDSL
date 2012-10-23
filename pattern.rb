require "row"
require "stitch"
require "cast_on"
require "repeat_rows"

class Pattern

  attr_reader :pattern_name
  def initialize(pattern_name)
    @pattern_name = pattern_name.capitalize
    @rows = []
  end

  def add_row(row_number, stitch_args)
    @rows << Row.new(row_number, stitch_args)
  end

  def cast_on(stitches)
    cast_on_stitches = Cast_on.new(stitches)
  end

  def repeat(num_of_rows, times_repeated)
    #repeat_rows = Repeat_rows.new(num_of_rows, times_repeated)
  end

  def build_pattern
      @rows.reverse.each do |row|
        puts row.map(&:markers).inspect
        r = row.next_stitch
        while(r != nil) do
         print r.markers
         r =  row.next_stitch
        end
      puts ""
     end
  end
end


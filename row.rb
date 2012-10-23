class Row
  attr_reader :row_number, :stitch_args
  def initialize(row_number, stitch_args)
   @row_number = row_number.to_i
   @stitch_args = stitch_args
   @last_index = 0
  end

  def row_num
    "Row #{@row_number}"
  end

  def reverse_row
    @stitch_args.reverse
  end

  def even?
    row_number.to_i % 2 == 0
  end

  def next_stitch
    @stitch_args[@last_index].markers(even?)
  end

end
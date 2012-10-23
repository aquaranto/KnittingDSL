class Repeat_rows
  attr_reader :rows_to_repeat, :times_to_repeat
  def initialize(rows_to_repeat, times_to_repeat)
    @rows_to_repeat, @times_to_repeat = rows_to_repeat, times_to_repeat
  end
end
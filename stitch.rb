class Stitch
  attr_reader :stitch_count

   MARKERS = {:normal => "", :inverse => "" }
  
  def initialize(stitch_count)
    @stitch_count = stitch_count
  end
  
  def markers(type=:normal)
    MARKERS[type] * @stitch_count.to_i
  end

  def to_s
    #implement in stitch childrens
  end
end

class Knit < Stitch
   
   MARKERS = { :normal => "V", :inverse => "-" }
  
  def to_s
    'Knit ' + self.stitch_count + ' ' 
  end
end

class Purl < Stitch
  
  MARKERS = { :normal => "-", :inverse => "V" }

  def to_s
    'Purl ' + self.stitch_count + ' '
  end
end

=begin
class Yarn_Over < Stitch
  def stitch_marker(times_to_print)
    'o' * times_to_print.to_i
  end

  def to_s
    'YarnOver ' + self.stitch_count + ' '
  end
end
=end
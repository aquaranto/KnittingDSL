class Stitch
	attr_reader :stitch_count, :markers

	def initialize(stitch_count)
		@stitch_count = stitch_count
		@markers = self.stitch_marker(stitch_count)
	end

	def to_s
		#implement in stitch childrens
	end
end

class Knit < Stitch
	def stitch_marker(times_to_print)
		return 'V' * times_to_print.to_i
	end
	
	def to_s
		return 'Knit ' + self.stitch_count + ' ' 
	end
end

class Purl < Stitch
	def stitch_marker(times_to_print)
		return '-' * times_to_print.to_i
	end

	def to_s
		return 'Purl ' + self.stitch_count + ' '
	end
end

class Yarn_Over < Stitch
	def stitch_marker(times_to_print)
		return 'o' * times_to_print.to_i
	end

	def to_s
		return 'YarnOver ' + self.stitch_count + ' '
	end
end
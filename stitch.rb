class Stitch

	def to_s
		#implement in stitch childrens
	end

	def count
	end
end

class Knit < Stitch
	def initialize(stitch_count)
		@stitch_count = stitch_count
		return
	end
	
	def stitch_marker
	end
end

class Purl < Stitch
	def initialize(stitch_count)
		@stitch_count = stitch_count
		return 
	end

	def stitch_marker

	end
end
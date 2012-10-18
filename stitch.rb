class Stitch
	attr_reader :stitch_count

	def initialize(stitch_count)
		@stitch_count = stitch_count
	end

	def to_s
		#implement in stitch childrens
	end
end

class Knit < Stitch
	def stitch_marker
		@stitch_count.times do |count|
			print 'V'
		end
	end
end

class Purl < Stitch
	def stitch_marker
		@stitch_count.times do |count|
			print '-'
		end
	end
end
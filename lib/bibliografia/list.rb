module Bibliografia
	# Struct of a list
	Node = Struct.new(:value, :next)

	class List
		def initialize(*vals)
			if vals.length == 0
				@node = nil
			else	
				for val in vals do
					put val
				end
			end
		end

		def takeFirst
			if @node != nil
				value = @node.value
				@node = nil
				return value
			else
				return nil
			end
		end

		def put(val)
			@node = Node.new(val,@node)
			nil
		end
	end
end

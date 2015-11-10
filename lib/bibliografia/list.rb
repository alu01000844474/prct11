module Bibliografia
	# Struct of a list
	Node = Struct.new(:value, :next)

	class List
		def initialize(val)
			@node = Node.new(val, nil)
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
	end
end

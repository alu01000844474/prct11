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
				@node = @node.next
				return value
			else
				return nil
			end
		end

		def put(val)
			@node = Node.new(val,@node)
			nil
		end

		def length
			aux = @node
			count = 0
			while aux!=nil
				count = count + 1
				aux = aux.next
			end
			count
		end

		def head
			if @node != nil
				@node.value
			else
				nil
			end
		end
	end
end

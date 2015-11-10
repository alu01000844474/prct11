module Bibliografia
	# Struct of a list
	Node = Struct.new(:value, :next)

	class List
		def initialize(*vals)
			if vals.length == 0
				@node = nil
			else
				for val in vals do
					pushEnd val
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

    def takeLast
      if @node != nil
        if @node.next!=nil
          newEnd = @node
          aux = @node.next
          while aux.next != nil
            newEnd = aux
            aux = aux.next
          end
          newEnd.next = nil
          aux.value
        else
          value = @node.value
          @node = nil
          value
        end
      else
        nil
      end
    end

		def put(val)
			@node = Node.new(val,@node)
			nil
		end

    def pushEnd(val)
      if @node==nil
        @node = Node.new(val,nil)
        return
      end
      aux = @node
      while aux.next != nil
        aux = aux.next
      end
      aux.next = Node.new(val,nil)
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

    def last
      aux = @node
      while aux.next!=nil
        aux = aux.next
      end
      aux.value
    end
	end
end

module Bibliografia
	# Struct of a list
	Node = Struct.new(:value, :next, :back)

	class List
		def initialize(*vals)
			if vals.length == 0
				@head = nil
				@last = nil
			else
				for val in vals do
					pushEnd val
				end
			end
		end

		def takeFirst
			if (@head==@last)
        if @head == nil
        	return nil
        end
        value = @head.value
        @head = nil
        @last = nil
        return value
   	  else
        value = @head.value
        @head = @head.next
        @head.back = nil
        return value
      end
		end

    def takeLast
			if (@head==@last)
        if @last == nil
        	return nil
        end
        value = @last.value
        @head = nil
        @last = nil
        return value
   	  else
        value = @last.value
        @last = @last.back
        @last.next = nil
        return value
      end
    end

		def put(val)
			if @head == nil
				@head = @last = Node.new(val,nil,nil)
			else
				aux = Node.new(val,@head, nil)
				@head.back = aux
				@head = aux
			end
			nil
		end

    def pushEnd(val)
      if @last==nil
				@head = @last = Node.new(val,nil,nil)
			else
				aux = Node.new(val,nil,@last)
				@last.next = aux
				@last = aux
			end
			nil
    end

		def length
			aux = @head
			count = 0
			while aux!=nil
				count = count + 1
				aux = aux.next
			end
			count
		end

		def head
			if @head != nil
				@head.value
			else
				nil
			end
		end

    def last
			if @last != nil
				@last.value
			else
				nil
			end
		end
	end
end

require 'spec_helper'

describe Bibliografia do
	describe Node do
		before :each do
			@node2 = Bibliografia::Node.new("dato2",nil)
			@node = Bibliografia::Node.new("dato", node2) 
		end

		it 'Debe existir un nodo de la lista con sus datos y su siguiente'  do	
			expect(@node.value).to be "dato"		
			expect(@node.next).to be @node2
		end
	end
end
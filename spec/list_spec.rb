require 'spec_helper'

describe Bibliografia do
	describe Bibliografia::Node do
		before :each do
			@node2 = Bibliografia::Node.new("dato2",nil)
			@node = Bibliografia::Node.new("dato", @node2) 
		end

		it 'Debe existir un nodo de la lista con sus datos y su siguiente'  do	
			expect(@node.value).to eq "dato"		
			expect(@node.next).to be @node2
		end
	end
	describe Bibliografia::List do
		before :all do
			@list = Bibliografia::List.new(0)
		end

		it 'Se extrae el primer elemento de la lista' do
			expect(@list.takeFirst).to eq 0
			expect(@list.takeFirst).to eq nil
		end
	end
end
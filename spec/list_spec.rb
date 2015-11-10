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
			@list2 = Bibliografia::List.new()
		end

		it 'Se extrae el primer elemento de la lista' do
			expect(@list.takeFirst).to eq 0
			expect(@list.takeFirst).to eq nil
		end

		it 'Se puede insertar un elemento' do
			expect(@list2.takeFirst).to eq nil
			expect(@list2.put("hola")).to eq nil
			expect(@list2.takeFirst).to eq "hola"
		end
	end
end
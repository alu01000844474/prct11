require 'spec_helper'
require 'date'

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
			@list3 = Bibliografia::List.new(0,1,2,3,4,5,6,7,8,9)
			@list4 = Bibliografia::List.new("head")
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

		it 'Se puede insertar varios elementos' do 
			expect(@list3.length).to eq 10
			@list3.takeFirst
			expect(@list3.length).to eq 9
		end

		it 'Debe existir una lista con su cabeza' do 
			expect(@list4.head).to eq "head"
		end
	end
end

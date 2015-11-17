require 'spec_helper'
require 'date'

describe Bibliografia do
	describe Bibliografia::Libro do
		before :all do
		    @libro = Bibliografia::Libro.new(["Dave Thomas", "Andy Hunt", "Chad Fowler"],
			    "Programming Ruby 1.9 & 2.0: The Pragmatic Programmers’ Guide",
			    "The Facets of Ruby",
			    "Pragmatic Bookshelf",4,Date.new(2013,7,7),
			    ["ISBN-13: 978-1937785499", "ISBN-10: 1937785491"])
		end
		
	    it "Debe de existir una clase Libro que reciba parametros" do
	        expect(Bibliografia::Libro.new(["Dave Thomas", "Andy Hunt", "Chad Fowler"],
			    "Programming Ruby 1.9 & 2.0: The Pragmatic Programmers’ Guide",
			    "The Facets of Ruby",
			    "Pragmatic Bookshelf",4,Date.new(2013,7,7),
			    ["ISBN-13: 978-1937785499", "ISBN-10: 1937785491"])).to_not be nil
        end
        
        it "Debe ser un Libro" do
		    expect(@libro.is_a?Bibliografia::Libro).to eq true 
		end
		
		it "Debe se una subclase de Bibliografia" do
		    expect(@libro.is_a?Bibliografia::Bibliografia).to eq true 
		end
		
		it "Debe se una subclase de Object" do
		    expect(@libro.is_a?Object).to eq true 
		end
	    
	    it "Debe se una subclase de BasicObject" do
		    expect(@libro.is_a?BasicObject).to eq true 
		end
	end
end
require 'spec_helper'
require 'date'

describe Bibliografia do
	describe Bibliografia::Libro do
		before :all do
		end
		
	    it "Debe de existir una clase Libro que reciba parametros" do
	        expect(Bibliografia::Libro.new(["Dave Thomas", "Andy Hunt", "Chad Fowler"],
			    "Programming Ruby 1.9 & 2.0: The Pragmatic Programmers’ Guide",
			    "The Facets of Ruby",
			    "Pragmatic Bookshelf",4,Date.new(2013,7,7),
			    ["ISBN-13: 978-1937785499", "ISBN-10: 1937785491"])).to_not be nil
        end
	end
end
require 'spec_helper'
require 'date'

describe Bibliografia do
	describe Bibliografia::Ebook do
		before :all do
		    @ebook = Bibliografia::Ebook.new(["Dave Thomas"],
			"Programming Ruby ",
			"The Facets of Ruby",
			"Pragmatic Bookshelf",4,Date.new(2013,7,7),
			"google.es")
		end
		
		it "Debe poderse pasarle todos los argumentos necesarios" do
		    expect(Bibliografia::Ebook.new(["Dave Thomas"],
			"Programming Ruby ",
			"The Facets of Ruby",
			"Pragmatic Bookshelf",4,Date.new(2013,7,7),
			"google.es")).to_not be nil
		end
		
		it "Debe ser un Ebook" do
		    expect(@ebook.is_a?Bibliografia::Ebook).to eq true 
		end
		
		it "Debe se una subclase de Bibliografia" do
		    expect(@ebook.is_a?Bibliografia::Bibliografia).to eq true 
		end
		
		it "Debe se una subclase de object" do
		    expect(@ebook.is_a?Object).to eq true 
		end
	    
	    it "Debe se una subclase de BasicObject" do
		    expect(@ebook.is_a?BasicObject).to eq true 
		end
	end
end
require 'spec_helper'
require 'date'

describe Bibliografia do
	describe Bibliografia::Ebook do
		before :all do
		end
		
		it "Debe poderse pasarle todos los argumentos necesarios" do
		    expect(Bibliografia::Ebook.new(["Dave Thomas"],
			"Programming Ruby ",
			"The Facets of Ruby",
			"Pragmatic Bookshelf",4,Date.new(2013,7,7),
			"google.es")).to_not be nil
		end
	end
end
require 'spec_helper'
require 'date'

describe References do
	describe References::Magazine do
		before :all do
		  @revista = References::Magazine.new do
        author :surnames => "Thomas",
               :names    => "Dave"
        author :surnames => "Hunt",
               :names    => "Andy"
        author :surnames => "Chad",
               :names    => "Fowler"

        title "Programming Ruby 1.9 & 2.0"

        editorial :serie =>  "The Facets of Ruby",
                  :edition => "Pragmatic Bookshelf",
                  :editionnumber => 4

        date :year => 2013, :month => 7, :day => 7

        issbn "777744545-4-7874"
      end
		end

		it "Debe poderse pasarle todos los argumentos necesarios" do
		  expect(@revista).to_not be nil
		end

	  it "Debe ser un Magazine" do
		  expect(@revista.is_a?References::Magazine).to eq true
		end

		it "Debe se una subclase de Reference" do
		  expect(@revista.is_a?References::Reference).to eq true 
		end

		it "Debe se una subclase de Object" do
		  expect(@revista.is_a?Object).to eq true 
		end

	  it "Debe se una subclase de BasicObject" do
		  expect(@revista.is_a?BasicObject).to eq true 
		end

    it "Debe seguir el estandar APA" do
      expect(@revista.formatAPA).to eq "Thomas, D. Hunt, A.  & Chad, F. (2013) Programming Ruby   \n\t(Pragmatic Bookshelf) (4) 777744545-4-7874"
    end
	end
end

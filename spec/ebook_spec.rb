# coding: utf-8
require 'spec_helper'
require 'date'

describe References::Ebook do
	before :all do
		@ebook = References::Ebook.new([References::Name.new("Thomas", "Dave")],
			                             "Programming Ruby ",
			                             "The Facets of Ruby",
			                             "Pragmatic Bookshelf",4,Date.new(2013,7,7),
			                             "google.es")
	end
	
	it "Debe poderse pasarle todos los argumentos necesarios" do
		expect(References::Ebook.new([References::Name.new("Thomas", "Dave")],
			                           "Programming Ruby ",
			                           "The Facets of Ruby",
			                           "Pragmatic Bookshelf",4,Date.new(2013,7,7),
			                           "google.es")).to_not be nil
	end
	
	it "Debe ser un Ebook" do
		expect(@ebook.is_a?References::Ebook).to eq true
	end

	it "Debe se una subclase de Reference" do
		expect(@ebook.is_a?References::Reference).to eq true 
	end

	it "Debe se una subclase de object" do
		expect(@ebook.is_a?Object).to eq true 
	end
	
	it "Debe se una subclase de BasicObject" do
		expect(@ebook.is_a?BasicObject).to eq true 
	end

  it "Debe seguir el estandar APA" do
    expect(@ebook.formatAPA).to eq "Thomas, D. (2013) Programming Ruby \n\t(Pragmatic Bookshelf) (4) google.es" 
  end
end

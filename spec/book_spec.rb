# coding: utf-8
require 'spec_helper'
require 'date'

describe References do
	describe References::Book do
		before :all do
		  @libro = References::Book.new([References::Name.new("Thomas", "Dave"),
                                     References::Name.new("Hunt","Andy"),
                                     References::Name.new("Chad","Fowler")],
			                              "Programming Ruby 1.9 & 2.0: The Pragmatic Programmers’ Guide",
			                              "The Facets of Ruby",
			                              "Pragmatic Bookshelf",4,Date.new(2013,7,7),
			                              ["ISBN-13: 978-1937785499", "ISBN-10: 1937785491"])
		end

	  it "Debe de existir una clase Book que reciba parametros" do
	    expect(References::Book.new(["Dave Thomas", "Andy Hunt", "Chad Fowler"],
			                            "Programming Ruby 1.9 & 2.0: The Pragmatic Programmers’ Guide",
			                            "The Facets of Ruby",
			                            "Pragmatic Bookshelf",4,Date.new(2013,7,7),
			                            ["ISBN-13: 978-1937785499", "ISBN-10: 1937785491"])).to_not be nil
    end

    it "Debe ser un Book" do
		  expect(@libro.is_a?References::Book).to eq true 
		end

		it "Debe se una subclase de Reference" do
		  expect(@libro.is_a?References::Reference).to eq true 
		end

		it "Debe se una subclase de Object" do
		  expect(@libro.is_a?Object).to eq true 
		end

	  it "Debe se una subclase de BasicObject" do
		  expect(@libro.is_a?BasicObject).to eq true 
		end

    it "Debe seguir el estandar APA" do
      expect(@libro.formatAPA).to eq "Thomas, D. Hunt, A.  & Chad, F. (2013) Programming Ruby 1.9 & 2.0: The Pragmatic Programmers’ Guide: The Facets of Ruby.\n\t(Pragmatic Bookshelf) (4) ISBN-13: 978-1937785499, ISBN-10: 1937785491"
    end

	end
end

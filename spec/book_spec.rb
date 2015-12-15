# coding: utf-8
require 'spec_helper'
require 'date'

include References

describe References do
	describe References::Book do
		before :all do
      @libro = References::Book.new do
        author :surnames => "Thomas",
               :names    => "Dave"
        author :surnames => "Hunt",
               :names    => "Andy"
        author :surnames => "Chad",
               :names    => "Fowler"

        title "Programming Ruby 1.9 & 2.0"

        subtitle "The Pragmatic Programmers’ Guide"

        editorial :serie =>  "The Facets of Ruby",
                  :edition => "Pragmatic Bookshelf",
                  :editionnumber => 4

        date :year => 2013, :month => 7, :day => 7

        isbn "ISBN-13: 978-1937785499"
        isbn "ISBN-10: 1937785491"
      end
		end

	  it "Debe de existir una clase Book que reciba parametros" do
	    expect(@libro).to_not be nil
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
      expect(@libro.formatAPA).to eq "Thomas, D. Hunt, A.  & Chad, F. (2013) Programming Ruby 1.9 & 2.0: The Pragmatic Programmers’ Guide.\n\tThe Facets of Ruby. (Pragmatic Bookshelf) (4) ISBN-13: 978-1937785499, ISBN-10: 1937785491"
    end

	end
end

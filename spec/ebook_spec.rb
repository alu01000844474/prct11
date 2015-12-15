# coding: utf-8
require 'spec_helper'
require 'date'

describe References::Ebook do
	before :all do
		@ebook = References::Ebook.new do
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

      url "google.es"
    end
	end

	it "Debe poderse pasarle todos los argumentos necesarios" do
		expect(@ebook).to_not be nil
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
    expect(@ebook.formatAPA).to eq "Thomas, D. Hunt, A.  & Chad, F. (2013) Programming Ruby 1.9 & 2.0\n\t(Pragmatic Bookshelf) (4) google.es"
  end
end

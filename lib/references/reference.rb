# coding: utf-8
 module References
  # Represent references to resources in a document, it can be e-documents
  # papers, book and also magazines.
  # To create a #Reference you need know the DSL to make, is so simple:
  # @example
  #  @libro = References::Book.new do
  #   author :surnames => "Thomas",
  #         :names    => "Dave"
  #   author :surnames => "Hunt",
  #          :names    => "Andy"
  #   author :surnames => "Chad",
  #          :names    => "Fowler"
  #
  #   title "Programming Ruby 1.9 & 2.0"
  #   subtitle "The Pragmatic Programmers’ Guide"
  #   editorial :serie =>  "The Facets of Ruby",
  #             :edition => "Pragmatic Bookshelf",
  #             :editionnumber => 4
  #
  #   date :year => 2013, :month => 7, :day => 7
  #
  #   isbn "ISBN-13: 978-1937785499"
  #   isbn "ISBN-10: 1937785491"
  # end
  class Reference
    include Comparable
    attr_accessor :authors, :datee
    # Take a block
    def initialize(&block)
      instance_eval &block
    end

    # Let, set a author/s in a Reference. You can define some authors, only calling this n-repeated times
    # @param hash [String]
    def author(hash)
      if @authors.nil?
        @authors = []
      end
      @authors << References::Name.new(hash[:surnames], hash[:names])
    end

    # A Reference only can have a title. If you call this function twice times this, overwrite the las value
    # @param title [String]
    def title(title)
      @title = title
    end

    # A Reference only can have a editorial. If you call this function twice times, this overwrite the las value
    # The hash must have a :serie => String, :edition => String, :editionnumber => Number
    # @param editorial [Hash]
    def editorial(editorial)
      @serie = editorial[:serie]
      @edition = editorial[:edition]
      @editionnumber = editorial[:editionnumber]
    end

    # A Reference only can have a date. If you call this function twice times, this overwrite the las value
    # The hash must have a :year => Number, :month => Number, :day => Number
    # @param date [Hash]
    def date(date)
      @datee = Date.new(date[:year],date[:month],date[:day])
    end

    # This function let format a array to prettitied its output adding a '&' before to last element.
    # @param array [List]
    # @return String
    def prettyOutput(array)
      if array.length > 1
        array[0..-2].join("") + " & " + array[-1]
      elsif array.length == 1
        array[0]
      else
        ""
      end
    end

    # Define the method to compare several Reference objects
    def <=>(other)
      int = other.authors <=> @authors
      if int = 0
        int = other.datee <=> @datee
      end
      int
    end

    # Cuantity of authors set
    def cantidadAuthors()
      @authors.length()
    end

    # Is have set a title?
    def hasTitle
      if @title then
        true
      else
        false
      end
    end

    def cantidadSeries
      if @serie!= nil then
        1
      else
        0
      end
    end

    def hasEdition
      if @edition then
        true
      else
        false
      end
    end

    def hasEditionnumber
      if @editionnumber then
        true
      else
        false
      end
    end

    def hasDate
      if @datee then
        true
      else
        false
      end
    end

    def cantidadIsbn
      @isbn.length
    end

    # Not specification in the Reference abstract class
    def formatAPA
      "Not format abstract class"
    end
  end

end

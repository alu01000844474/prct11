# coding: utf-8
require "references"

module References

 
  # Represent a book reference
  class Book < Reference
    # Format book reference to APA standard
    # @return [String] format output
    def formatAPA
      (prettyOutput(@authors.map { |x| x.to_s }) + "(" + @datee.year.to_s + ") " + @title +
        if @subtitle
          ": " + @subtitle + "."
        else
          ""
        end +
       "\n\t"+@serie+". (" + @edition.to_s + ") " +
       "(" + @editionnumber.to_s + ") " +
       @isbn.join(", "))
    end

    def subtitle(subtitle)
      @subtitle = subtitle
    end

    def isbn(isbn)
      if @isbn.nil?
        @isbn = []
      end
      @isbn << isbn
    end
  end
end


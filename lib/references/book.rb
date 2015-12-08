# coding: utf-8
require "references"

module References
  # Represent a book reference
  class Book < Reference
    def initialize(authors, title, subtitle, edition, editionnumber, date, isbn)
      @authors = authors
      @title = title
      @subtitle = subtitle
      @edition = edition
      @editionnumber = editionnumber
      @date = date
      @isbn = isbn
    end
    # Format book reference to APA standard
    # @return [String] format outputç
    def formatAPA
      ((@authors.map { |x| x.to_s }).prettyOutput + "(" + @date + ")" + @title +
        if @subtitle
          ": " + @subtitle + ". \n"
        else
          ""
        end
      + "\n\t(" + @edition + ")"
      + "(" + @editionnumber + ")"
      + @isbn)
    end
  end
end

# coding: utf-8
require "references"
require "date"

module References
  class Ebook < Reference
    attr_accessor :url
    # Format book reference to APA standard
    # @return [String] format outputç
    def formatAPA
      (prettyOutput(@authors.map { |x| x.to_s }) + "(" + @datee.year.to_s + ") " + @title +
       "\n\t(" + @edition.to_s + ") " +
       "(" + @editionnumber.to_s + ") " +
       @url)
    end

    def url(url)
      @url = url
    end
  end
end

# coding: utf-8
require "references"
require "date"

module References
  # Represents a e-document
  class Ebook < Reference
    attr_accessor :url
    # Format book reference to APA standard
    # @return [String] format output
    def formatAPA
      (prettyOutput(@authors.map { |x| x.to_s }) + "(" + @datee.year.to_s + ") " + @title +
       "\n\t(" + @edition.to_s + ") " +
       "(" + @editionnumber.to_s + ") " +
       @url)
    end

    # Set the url from get the source of document
    # @param url [String] URL of source
    def url(url)
      @url = url
    end
  end
end

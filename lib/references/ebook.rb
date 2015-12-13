# coding: utf-8
require "references"
require "date"

module References

  def url(url)
    self.url = url
  end

  class Ebook < Reference
    attr_accessor :url
    # Format book reference to APA standard
    # @return [String] format outputç
    def formatAPA
      (prettyOutput(@authors.map { |x| x.to_s }) + "(" + @date.year.to_s + ") " + @title +
       "\n\t(" + @edition.to_s + ") " +
       "(" + @editionnumber.to_s + ") " +
       @url)
    end
  end
end

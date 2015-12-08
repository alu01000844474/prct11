# coding: utf-8
require "references"
require "date"

module References
  class Ebook < Reference
    def initialize(autores, titulo, serie, edicion, numeroedicion, fecha, url)
      super(autores, titulo, serie, edicion, numeroedicion, fecha, [])
      @url = url
    end
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

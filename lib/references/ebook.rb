# coding: utf-8
require "references"

module References
    class Ebook < Reference
        def initialize(autores, titulo, serie, edicion, numeroedicion, fecha, url)
            super(autores, titulo, serie, edicion, numeroedicion, fecha, [])
            @url = url
        end
        # Format book reference to APA standard
        # @return [String] format outputç
        def formatAPA
          ((@authors.map { |x| x.to_s }).prettyOutput + "(" + @date + ")" + @title +
           + "\n\t(" + @edition + ")"
           + "(" + @editionnumber + ")"
           + @url)
        end
    end
end

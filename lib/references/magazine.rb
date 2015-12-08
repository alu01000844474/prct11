# coding: utf-8
require "references"

module References
    class Magazine < Reference
        def initialize(autores, titulo, serie, edicion, numeroedicion, fecha, issbn)
            super(autores, titulo, serie, edicion, numeroedicion, fecha, ["issbn:"+issbn])
            @issbn = issbn
        end
        # Format book reference to APA standard
        # @return [String] format outputç
        def formatAPA
          ((@authors.map { |x| x.to_s }).prettyOutput + "(" + @date + ")" + @title +
           + "\n\t(" + @edition + ")"
           + "(" + @editionnumber + ")"
           + @issbn)
        end
    end
end

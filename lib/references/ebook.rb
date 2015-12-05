require "references"

module References
    class Ebook < Reference
        def initialize(autores, titulo, serie, edicion, numeroedicion, fecha, url)
            super(autores, titulo, serie, edicion, numeroedicion, fecha, [])
            @url = url
        end
    end
end

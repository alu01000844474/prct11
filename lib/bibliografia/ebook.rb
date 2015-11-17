require "bibliografia"

module Bibliografia
    class Ebook < Bibliografia
        def initialize(autores, titulo, serie, edicion, numeroedicion, fecha, url)
            super(autores, titulo, serie, edicion, numeroedicion, fecha, [])
            @url = url
        end
    end
end
require "references"

module References
    class Revista < Reference
        def initialize(autores, titulo, serie, edicion, numeroedicion, fecha, issbn)
            super(autores, titulo, serie, edicion, numeroedicion, fecha, ["issbn:"+issbn])
            @issbn = issbn
        end
    end
end

require "bibliografia"

module Bibliografia
    class Revista < Bibliografia
        def initialize(autores, titulo, serie, edicion, numeroedicion, fecha, issbn)
            super(autores, titulo, serie, edicion, numeroedicion, fecha, ["issbn:"+issbn])
            @issbn = issbn
        end
    end
end
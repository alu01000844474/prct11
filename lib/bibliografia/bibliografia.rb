module Bibliografia

    class Bibliografia
        def initialize(autores, titulo, serie, edicion, numEdicion,fecha,isbn)
            @autores = autores
            @titulo = titulo
            @serie = serie
            @edicion = edicion
            @numEdicion = numEdicion
            @fecha = fecha
            @isbn = isbn
        end

        def cantidadAutores()
            @autores.length()
        end
    end

end

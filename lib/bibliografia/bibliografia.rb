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

        def hasTitulo
            if @titulo then
                true
            else
                false
            end
        end

        def cantidadSeries
            if @serie!= nil then
                1
            else
                0
            end
        end

        def hasEdicion
            if @edicion then
                true
            else
                false
            end
        end

    end

end

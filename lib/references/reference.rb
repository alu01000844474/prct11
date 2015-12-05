module References

  class Reference
    include Comparable
    attr_reader :autores, :titulo, :edicion, :numeroedicion, :serie, :fecha, :isbn
    def initialize(autores, titulo, serie, edicion, numeroedicion,fecha,isbn)
      @autores = autores
      @titulo = titulo
      @serie = serie
      @edicion = edicion
      @numeroedicion = numeroedicion
      @fecha = fecha
      @isbn = isbn
    end

    def <=>(other)
      @autores <=> other.autores
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

    def hasNumeroedicion
      if @numeroedicion then
        true
      else
        false
      end
    end

    def hasFecha
      if @fecha then
        true
      else
        false
      end
    end

    def cantidadIsbn
      @isbn.length
    end

    def formatref
      c =  ""
      c << @autores.join(", ")
      c << "."
      c << "\n"
      c << @titulo
      c << "\n"
      c << "(" + @serie + ")"  if cantidadSeries == 1
      c << "\n"
      c << @edicion + "; " + numeroedicion.to_s + " edition "
      c << "("+ @fecha.strftime('%b %d, %Y')+")"
      c << "\n"
      c << @isbn.join("\n")
      c
    end

  end

end

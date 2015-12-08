module References

  class Array
    def prettyOutput
      self[0..-2].join("") + " & " + self[-1]
    end
  end

  class Reference
    include Comparable
    attr_reader :authors, :title, :edition, :editionnumber, :serie, :date, :isbn
    def initialize(authors, title, serie, edition, editionnumber,date,isbn)
      @authors = authors
      @title = title
      @serie = serie
      @edition = edition
      @editionnumber = editionnumber
      @date = date
      @isbn = isbn
    end

    def <=>(other)
      int = other.authors <=> @authors
      if int = 0
        int = other.date <=> @date
      end
      int
    end

    def cantidadAuthors()
      @authors.length()
    end

    def hasTitle
      if @title then
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

    def hasEdition
      if @edition then
        true
      else
        false
      end
    end

    def hasEditionnumber
      if @editionnumber then
        true
      else
        false
      end
    end

    def hasDate
      if @date then
        true
      else
        false
      end
    end

    def cantidadIsbn
      @isbn.length
    end

    def formatAPA
      "Not format abstract class"
    end
  end

end

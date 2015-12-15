# coding: utf-8
module References
  class Reference
    include Comparable
    # attr_accessor :authors, :title, :edition, :editionnumber, :serie, :date, :isbn
    attr_accessor :authors
    def initialize(&block)
      instance_eval &block
    end

    def method_missing(method, *args, &block)
      methods = { :title =>
                  proc do def title(title)
                            @title = title
                          end
                  end,
                  :date  =>
                  proc do def date(date)
                            @date = Date.new(date[:year],date[:month],date[:day])
                          end
                  end,
                  :editorial =>
                  proc do def editorial(editorial)
                            @serie = editorial[:serie]
                            @edition = editorial[:edition]
                            @editionnumber = editorial[:editionnumber]
                          end
                  end,
                  :author =>
                  proc do def author(hash)
                            if @authors.nil?
                              @authors = []
                            end
                            @authors << References::Name.new(hash[:surnames], hash[:names])
                          end
                  end
                }

      if methods.key?method
        instance_eval &methods[method]
        send method, *args
      else
        super(method, args, &block)
      end
    end

    def prettyOutput(array)
      if array.length > 1
        array[0..-2].join("") + " & " + array[-1]
      elsif array.length == 1
        array[0]
      else
        ""
      end
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

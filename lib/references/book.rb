# coding: utf-8
require "references"

module References

 
  # Represent a book reference
  class Book < Reference
    # Format book reference to APA standard
    # @return [String] format output
    def formatAPA
      (prettyOutput(@authors.map { |x| x.to_s }) + "(" + @date.year.to_s + ") " + @title +
        if @subtitle
          ": " + @subtitle + "."
        else
          ""
        end +
       "\n\t"+@serie+". (" + @edition.to_s + ") " +
       "(" + @editionnumber.to_s + ") " +
       @isbn.join(", "))
    end

    def method_missing(method, *args, &block)
      methods = { :subtitle =>
                  proc do def subtitle(subtitle)
                            @subtitle = subtitle
                          end
                  end,
                  :isbn =>
                  proc do def isbn(isbn)
                            if @isbn.nil?
                              @isbn = []
                            end
                            @isbn << isbn
                          end
                  end
                }

      if methods.key?method
        instance_eval &methods[method]
        send method, *args
      else
        super(method, *args, &block)
      end
    end
  end
end


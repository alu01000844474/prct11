# coding: utf-8
require "references"

module References
  class Magazine < Reference
    def initialize(&block)
      instance_eval &block
      @title = @title.split(" ").map { |x| if x.length >= 4 then x[0].upcase + x[1..-1] end }.join(" ")
    end

    def issbn(issbn)
      if @issbn.nil?
        @issbn = []
      end
      @issbn << issbn
    end

    # Format book reference to APA standard
    # @return [String] format output
    def formatAPA
      (prettyOutput(@authors.map { |x| x.to_s }) + "(" + @datee.year.to_s + ") " + @title +
       "\n\t(" + @edition.to_s + ") " +
       "(" + @editionnumber.to_s + ") " +
       @issbn.join(", "))
    end
  end
end

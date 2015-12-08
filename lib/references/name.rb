# coding: utf-8
module References
  class Name
    include Comparable
    attr_reader :surnames, :names
    def initialize(surnames, names)
      @surnames = surnames.split(" ")
      @names = names.split(" ")
    end

    def <=>(other)
      other.surnames.first <=> @surnames.first
    end

    def to_s
      @surnames.first + ", " + (@names.map { |x| x[0].upcase }).join(". ") + ". "
    end
  end
end

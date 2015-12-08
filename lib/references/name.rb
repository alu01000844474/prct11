# coding: utf-8
module Reference
  class Name
    include Comparable

    def initialize(surnames, names)
      @surname = surnames
      @names = names
    end

    def <=>(other)
      other.surnames.first <=> @surnames.first
    end

    def to_s
      @surnames.first + ". " + (@names.map { |x| x[0].upcase }).join(". ") + ". "
    end
  end
end

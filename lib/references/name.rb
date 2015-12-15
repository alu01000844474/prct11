# coding: utf-8
module References
  # This class let work internal names of authors of a fancy way.
  class Name
    include Comparable
    attr_reader :surnames, :names
    # Make a Name object
    # @param surnames [String] Take string with surnames of person of interest seperated with spaces.
    # @param names [String] Take string with names of person of interest seperated with spaces.
    def initialize(surnames, names)
      @surnames = surnames.split(" ")
      @names = names.split(" ")
    end
    # Define the comparasion of names, in this case is with the first surname.
    def <=>(other)
      other.surnames.first <=> @surnames.first
    end

    # Let convert a Name object in a human readable String in fancy way too.
    # @return [String]
    def to_s
      @surnames.first + ", " + (@names.map { |x| x[0].upcase }).join(". ") + ". "
    end
  end
end

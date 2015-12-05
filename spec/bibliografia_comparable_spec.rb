require 'spec_helper'

describe "Comparable overload methods" do
  before :each do
    @git = References::Reference.new(["Scott Chacon"],
                                          "Pro Git 2009th Edition",
                                          "Pro",
                                          "Apress",
                                          2009,
                                          Date.new(2009,8,27),
                                          ["ISBN-13: 9781430218333", "ISBN-12: 1430218339"])

    @gitCompar = References::Reference.new(["Scott Chacon"],
                                                "Pro Git 2009th Edition",
                                                "Pro",
                                                "Apress",
                                                2009,
                                                Date.new(2009,8,27),
                                                ["ISBN-13: 9781430218333", "ISBN-12: 1430218339"])

    @git2 =References::Reference.new(["Richard E. Silverman"],
                                          "Git Pocket Guide",
                                          nil,
                                          "O'Really Media",
                                          1,
                                          Date.new(2013, 8, 2),
                                          ["ISBN-10: 1449325866","ISBN-13: 978-1449325862"])
  end

  it "Debe de ser posible comparar mayor que, menor que " do
    expect(@git2 > @git).to be false
    expect(@gitCompar < @git).to be false
    expect(@git2 < @git).to be true
  end

  it "Debe de ser posile comparar == <>" do
    expect(@git == @gitCompar).to be true
    expect(@git != @git2).to be true
  end

end

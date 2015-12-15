# coding: utf-8
require 'spec_helper'

describe "Comparable overload methods" do
  before :each do
    @git = References::Book.new do
      author :surnames => "Chacon",
             :names    => "Scott"
      title "Pro Git 2009th Edition"

      subtitle "The Pragmatic Programmers’ Guide"

      editorial :serie =>  "Pro",
                :edition =>  "Apress",
                :editionnumber => 2009

      date :year => 2009, :month => 8, :day => 27

      isbn "ISBN-13: 9781430218333"
      isbn "ISBN-12: 1430218339"
    end

    @gitCompar = References::Book.new do
      author :surnames => "Chacon",
             :names    => "Scott"
      title "Pro Git 2009th Edition"

      subtitle "The Pragmatic Programmers’ Guide"

      editorial :serie =>  "Pro",
                :edition =>  "Apress",
                :editionnumber => 2009

      date :year => 2009, :month => 8, :day => 27

      isbn "ISBN-13: 9781430218333"
      isbn "ISBN-12: 1430218339"
    end

    @git2 =References::Book.new do
      author :surnames => "Silverman",
             :names    => "Richard"
      title "Git Pocket Guide"
      subtitle "Behaviour Driven Development with RSpec, Cucumber, and Friends"
      editorial :serie =>  nil,
                :edition =>  "O'Really Media",
                :editionnumber => 1

      date :year => 2013, :month => 8, :day => 2

      isbn "ISBN-10: 1449325866"
      isbn "ISBN-13: 978-1449325862"
    end
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

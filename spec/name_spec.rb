# coding: utf-8
require 'spec_helper'

describe References do
  describe References::Name do
	  before :all do
      @homer = References::Name.new("Simpsons", "Homer")
      @bart = References::Name.new("Simpsons Bouvier", "Bart")
      @marge = References::Name.new("Bouvier", "Marge Lisa")
	  end

	  it "Correct format" do
      expect(@homer.to_s).to eq "Simpsons, H. "
      expect(@bart.to_s).to eq "Simpsons, B. "
      expect(@marge.to_s).to eq "Bouvier, M. L. "
	  end

	  it "Comparative" do
		  expect(@homer==@bart).to eq true
      expect(@homer<@marge).to eq true
	  end
  end
end

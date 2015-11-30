require 'number'
require 'minitest/autorun'

describe Number do
  before do
    @number = Number.new(852)
  end

  describe "#to_roman" do
    it "return a roman number" do
      @number.to_roman.must_equal 'DCCCLII'
    end
  end

  describe "#hundred" do
    it "return a hundred" do
      @number.hundred.must_equal 8
    end
  end

  describe "#ten" do
    it "return a ten" do
      @number.ten.must_equal 5
    end
  end

  describe "#unit" do
    it "return a unit" do
      @number.unit.must_equal 2
    end
  end
end
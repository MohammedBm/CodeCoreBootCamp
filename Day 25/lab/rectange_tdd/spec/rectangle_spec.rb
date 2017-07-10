require './rectangle.rb'

RSpec.describe Rectangle do

  describe "area" do
    it "multiplies the length by the width" do
      rect = Rectangle.new( 4, 8)
      expect(rect.area).to eq(32)
    end
  end


  describe "is_square?" do
    it "return true if the length and width are the same" do
      rect = Rectangle.new( 5, 5)
      expect(rect.is_square?).to be(true)
    end

    it "return flase if the length and width are not the smae" do
      rect = Rectangle.new( 4, 5)
      expect(rect.is_square?).to be(false)
    end
  end

  describe "perimeter" do
    it "sums all four sides togethere" do
      rect = Rectangle.new(3,4)
      expect(rect.perimeter).to eq(14)
    end
  end

end

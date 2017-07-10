require "minitest/autorun"
require "./main.rb"


class MainTest < Minitest::Test

  def test_area
    # rectangle = Rectangle.new(4,5)
    # length = rand(1..9)
    # width = rand(1..9)
    # a = length * width
    assert_equal 20, Rectangle.new(4,  5 ).area
    assert_equal 9,  Rectangle.new(3,  3 ).area
    assert_equal 16, Rectangle.new(2,  8 ).area
    assert_equal 8,  Rectangle.new(2,  4 ).area
    assert_equal 36, Rectangle.new(6,  6 ).area
    assert_equal 500,Rectangle.new(10, 50).area
  end

  def test_is_square

    assert_equal true,  Rectangle.new(4,  4 ).is_square
    assert_equal true,  Rectangle.new(80, 80).is_square
    assert_equal false, Rectangle.new(5,  6 ).is_square
  end


end

require "minitest/autorun"
require "./cookie.rb"


class CookieTest < Minitest::Test
  # ArgumentError are errors that are raised when a method is called with the wrong arguments. In theis case, it's raised when Cookie.new dose not receive all two arguments in requires
  def test_requires_sugar_and_flour

    #assert_raises check the error given as the frist argument is raised in the block of code given to the assert
    assert_raises(ArgumentError){Cookie.new}
  end

  def test_requires_flour
    assert_raises(ArgumentError){Cookie.new(1)}
  end




  def test_calorie_count_calculation
    #given ( a new cookie)
    sugar = rand(1..3)
    flour = rand(4..10)
    c = Cookie.new(6,10)
    #When ( calorie_count is called)
    count = c.calorie_count
    #Then (count should be equal to 70)
    assert_equal sugar * 5 + flour * 4, count
  end


end

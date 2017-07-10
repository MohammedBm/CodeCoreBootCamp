require "minitest/autorun"

class AweesomeTest < Minitest::Test
  def test_adding_numbers
    assert_equal(2,1+1)
  end

  def test_float_precision
    expected = 1;
    actual = 1.01;
    #the first argument of an assert is the value we expect or require from the test

    #the second argument of an is the actual value, or current state of the prgoram after the behaviour has run
    assert_in_delta expected, actual, 0.02
  end


  def test_check_if_value_is_in_array
      arr = ['yes','no','talbo','bob']
      assert_includes arr,'bob'
  end



end

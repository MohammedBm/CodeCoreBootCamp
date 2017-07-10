# Day 25

## TDD
  What is TDD? TDD is a test driven development.  It's environment where you write a test for your program before you write your original code.

  Firstly, your test code will fail. Then improve after that you will get a behavior. Then write a test from that behavior, and keep doing that until you reach the test you need.

  Given.. When.. Then
  - <strong>Given</strong> is the state of a program before that test begins.
  - <strong>When</strong> is the behavior being tested.
  - <strong>Then</strong> is the state of the program after the behavior.

  <hr/>

### Lets write some test.

First we will need to install this gem `gem install minitest`.

We will first need to require the minitest test library before we can write any test. To require the library we will need to write this piece of code `require "minitest/autorun"`

Then write your test
```ruby
require "minitest/autorun"

class AweesomeTest < Minitest::Test
  def test_adding_numbers
    assert_equal(2,1+1) #this is a method from the library minitest, it will test the value of the added number and return if its correct or wrong
  end
end
```
After that you will need to run this command in the terminal `ruby demo.rb`

#### You can always check the minitest docs to get more information about thAnother code to test the precision of a float number
```ruby
def test_float_precision
  expected = 1;
  actual = 1.01;
  #the first argument of an assert is the value we expect or require from the test

  #the second argument of an is the actual value, or current state of the program after the behaviour has run
  assert_in_delta expected, actual, 0.02
end
```


The code shown below will check if the value `bob` is inside of the array if not it will give us a failure
```ruby

  def test_check_if_value_is_in_array
      arr = ['yes','no','talbo',bob]
      assert_includes arr,'bob'
  end

```
<hr>
### Cookie Example

We will create  two files called `cookie.rb` and `test_cookie.rb` and include the following code inside the `test_cookie.rb`

```ruby
require "minitest/autorun"
require "./cookie.rb"


class CookieTest < Minitest::Test
  # ArgumentError are errors that are raised when a method is called with the wrong arguments. In theis case, it's raised when Cookie.new dose not receive all two arguments in requires
  def test_require_sugar_and_flour
    #assert_raises check the error given as the frist argument is raised in the block of code given to the assert
    assert_raises(ArgumentError){Cookie.new}
  end
end
```
it will gives an error because we don't have any thing to test, So will will include the following code in the `cookie.rb` file
```ruby
class Cookie
  def initialize(sugar, flour)
  end
end

```
Now the output will give us a success since we have a class called `Cookie`. Now lets try to improve it by adding another test
```ruby
def test_requires_flour
  assert_raises(ArgumentError){Cookie.new(1)}
end

```
This test above will check if there is flour in the class or not. Lets try and add another test

```ruby
def test_calorie_count_calculation
  #given ( a new cookie)
  c = Cookie.new(6,10)
  #When ( calorie_count is called)
  count = c.calorie_count
  #Then (count should be equal to 70)
  assert_equal 70, count
end

```
The test above will test the calorie count in the cookie we made from the class in the `cookie.rb` file.

Now lets create a test that check the method `calorie_count` with random numbers

```ruby
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

```

The test above will give us an error since the values are not the same, but this test if the method is actually multiplying and calculating the input.

#todo indlcude the exercise



<hr>

## TDD with rails

first we will need to create a new project using the command `rails new -T rspec-demo`

To make test for our project we will need to create a database using the command `rails db:create` and migrate it `rails db:migrate`

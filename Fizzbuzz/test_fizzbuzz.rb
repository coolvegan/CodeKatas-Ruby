require 'minitest/autorun'
require './fizzbuzz.rb'

class Test_Fizzbuzz < Minitest::Test
  def setup
    @fizzbuzz = Fizzbuzz.new(1,100)

  end

  def test_fizz
    assert_equal("Fizz", @fizzbuzz.check(3))
  end

  def test_no_fizz
    assert_equal(11, @fizzbuzz.check(11))
  end

  def test_buzz
    assert_equal("Buzz", @fizzbuzz.check(5))
  end

  def test_fizzbuzz
    assert_equal("FizzBuzz", @fizzbuzz.check(15))
  end

  def test_no_buzz
    assert_equal(8, @fizzbuzz.check(8))
  end

  def test_no_buzz
    @fizzbuzz = Fizzbuzz.new(1,15)
    out, err = capture_io do
      @fizzbuzz.ausgabe
    end
    assert_equal("1\n2\nFizz\n4\nBuzz\nFizz\n7\n8\nFizz\nBuzz\n11\nFizz\n13\n14\nFizzBuzz\n", out )
  end


end

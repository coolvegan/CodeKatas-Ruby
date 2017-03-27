require 'minitest/autorun'
require './rom5.rb'
class Converter_Test < Minitest::Test
  def setup
    @converter = Converter.new
  end

  def test_one
    assert_equal("I", @converter.convert(1))
  end

  def test_two
    assert_equal("II", @converter.convert(2))
  end
  def test_three
    assert_equal("III", @converter.convert(3))
  end

  def test_five
    assert_equal("V", @converter.convert(5))
  end

  def test_six
    assert_equal("VI", @converter.convert(6))
  end

  def test_seven
    assert_equal("VII", @converter.convert(7))
  end

  def test_ten
    assert_equal("X", @converter.convert(10))
  end

  def test_four
    assert_equal("IV", @converter.convert(4))
  end

  def test_nine
    assert_equal("IX", @converter.convert(9))
  end

  def test_twenty
    assert_equal("XX", @converter.convert(20))
  end

  def test_fifty
    assert_equal("L", @converter.convert(50))
  end

  def test_twelve
    assert_equal("XII", @converter.convert(12))
  end

  def test_hundret
    assert_equal("C", @converter.convert(100))
  end

    def test_fivehundret
    assert_equal("D", @converter.convert(500))
  end

  def test_thousand
    assert_equal("M", @converter.convert(1000))
  end

  def test_thousand
    assert_equal("M", @converter.convert(1000))
  end


  def test_2016
    assert_equal("MMXVI", @converter.convert(2016))
  end

  def test_617
    assert_equal("DCXVII", @converter.convert(617))
  end

end

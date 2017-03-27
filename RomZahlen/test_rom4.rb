require "minitest/autorun"
require "./rom4.rb"

class TestMeme < Minitest::Test
  def setup
    @r2d = Rom_to_dec.new
  end
  def test_dec_number_one
    assert_equal("I", @r2d.convert(1))
  end

  def test_dec_number_two
    assert_equal("II", @r2d.convert(2))
  end

  def test_dec_number_three
    assert_equal("III", @r2d.convert(3))
  end
end

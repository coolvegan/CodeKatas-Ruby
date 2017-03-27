require "minitest/autorun"
require "./rom2.rb"

class TestMeme < Minitest::Test
  def test_dec_number_one
    assert_equal("I", vv(1))
  end
  def test_dec_number_two
    assert_equal("II", vv(2))
  end
  def test_dec_number_three
    assert_equal("III", vv(3))
  end
  def test_dec_number_three
    assert_equal("IV", vv(4))
  end
  def test_dec_number_five
    assert_equal("V", vv(5))
  end
  def test_dec_number_six
    assert_equal("VI", vv(6))
  end
  def test_dec_number_seven
    assert_equal("VII", vv(7))
  end
  def test_dec_number_eight
    assert_equal("VIII", vv(8))
  end
  def test_dec_number_ten
    assert_equal("X", vv(10))
  end
  def test_dec_number_50
    assert_equal("L", vv(50))
  end
end

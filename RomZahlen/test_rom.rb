require "minitest/autorun"
require "./rom.rb"

class TestMeme < Minitest::Test
  def setup
    @konverter = Rom_zu_Dec_Konverter.new
  end

  def test_dec_number_one
    assert_equal("I", @konverter.to_rom(1))
  end

  def test_dec_number_two
    assert_equal("II", @konverter.to_rom(2))
  end

  def test_dec_number_three
    assert_equal("III", @konverter.to_rom(3))
  end

  def test_dec_number_four
    assert_equal("IV", @konverter.to_rom(4))
  end

  def test_dec_number_five
    assert_equal("V", @konverter.to_rom(5))
  end

  def test_dec_number_six
    assert_equal("VI", @konverter.to_rom(6))
  end
  def test_dec_number_seven
    assert_equal("VII", @konverter.to_rom(7))
  end

  def test_dec_number_eight
    assert_equal("VIII", @konverter.to_rom(8))
  end
  def test_dec_number_nine
    assert_equal("IX", @konverter.to_rom(9))
  end

  def test_dec_number_ten
    assert_equal("X", @konverter.to_rom(10))
  end

  def test_dec_number_eleven
    assert_equal("XI", @konverter.to_rom(11))
  end

  def test_dec_number_twelf
    assert_equal("XII", @konverter.to_rom(12))
  end

  def test_dec_number_fiveteen
    assert_equal("XV", @konverter.to_rom(15))
  end

  def test_dec_number_sixteen
    assert_equal("XVI", @konverter.to_rom(16))
  end

  def test_dec_number_twenty
    assert_equal("XX", @konverter.to_rom(20))
  end

  def test_dec_number_thirty
    assert_equal("XXX", @konverter.to_rom(30))
  end
end

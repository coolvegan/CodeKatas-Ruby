require 'minitest/autorun'
require './converter.rb'

class Test_Converter < Minitest::Test
  def setup
    @conv = Converter.new
  end
  def test_fall_1
    assert_equal(1, @conv.rom_2_dec("I"))
  end
  def test_fall_2
    assert_equal(2, @conv.rom_2_dec("II"))
  end

  def test_fall_3
    assert_equal(3, @conv.rom_2_dec("III"))
  end

  def test_fall_4
    assert_equal(5, @conv.rom_2_dec("V"))
  end

  def test_fall_5
    assert_equal(6, @conv.rom_2_dec("VI"))
  end

  def test_fall_6
    assert_equal(10, @conv.rom_2_dec("X"))
  end

  def test_fall_7
    assert_equal(11, @conv.rom_2_dec("XI"))
  end

  def test_fall_8
    assert_equal(50, @conv.rom_2_dec("L"))
  end

  def test_fall_9
    assert_equal(100, @conv.rom_2_dec("C"))
  end

  def test_fall_10
    assert_equal(500, @conv.rom_2_dec("D"))
  end

  def test_fall_11
    assert_equal(1000, @conv.rom_2_dec("M"))
  end

  def test_fall_12
    assert_equal(1500, @conv.rom_2_dec("MD"))
  end
  def test_fall_sonderfall_iv
    assert_equal(4, @conv.rom_2_dec("IV"))
  end

  def test_fall_sonderfall_400
    assert_equal(400, @conv.rom_2_dec("CD"))
  end

  def test_fall_sonderfall_90
    assert_equal(90, @conv.rom_2_dec("XC"))
  end

  def test_fall_sonderfall_40
    assert_equal(40, @conv.rom_2_dec("XL"))
  end

  def test_fall_sonderfall_512
    assert_equal(512, @conv.rom_2_dec("DXII"))
  end

  def test_fall_sonderfall_900
    assert_equal(900, @conv.rom_2_dec("CM"))
  end

  def test_fall_fall_1512
    assert_equal(1512, @conv.rom_2_dec("MDXII"))
  end

  def test_fall_fall_3892
    assert_equal(3892, @conv.rom_2_dec("MMMDCCCXCII"))
  end

  def test_fall_fall_3999
    assert_equal(3999, @conv.rom_2_dec("MMMCMXCIX"))
  end

  def test_fall_fall_3998
    assert_equal(3998, @conv.rom_2_dec("MMMCMXCVIII"))
  end

  def test_fall_sonderfall_9
    assert_equal(9, @conv.rom_2_dec("IX"))
  end
end

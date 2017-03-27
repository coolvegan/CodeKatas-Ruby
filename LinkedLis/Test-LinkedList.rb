require 'minitest/autorun'
require './LinkedList.rb'

class Mein_Test < Minitest::Test
  def setup
    @list = Liste.new
  end

  def test_nummer_1
    assert_equal(@list.head, nil)
  end

  def test_nummer_2
    assert_equal(1, @list.add(1).data)
  end

  def test_nummer_2
    @list.add(1)
    @list.add(2)
    @list.add(3)
    assert_equal(1, @list.head.data)
    assert_equal(2, @list.head.next.data)
    assert_equal(3, @list.tail.data)
  end


end

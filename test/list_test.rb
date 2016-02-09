require 'minitest/autorun'
require 'minitest/pride'
require '../lib/list'

class ListTest < Minitest::Test
  def test_list_can_hold_data
    list = List.new("sunshine")

    assert list.head.is_a?(Node)
    assert_equal "sunshine", list.head.data

#     # Consider something like this:
#     def test_a_linked_list_holds_data
#     list = LinkedList.new("pizza")
# ​
#     assert list.head.is_a?(Node)
#     assert "pizza", list.head.data
#     end
    # > jb = JungleBeat.new("deep dep dep deep")
  end

  def test_can_append
    list = List.new("sunflower")
    assert_equal "sunflower", list.tail.data
    list.append("solar power")
    list.append("green power")
    assert_equal "green power", list.tail.data

    # new list
    # find tail
    # append new node
    # verify new tail is what was appended

    # > jb.append("deep bop bop deep")
    # => 4
  end

  def test_can_find_the_tail
    list = List.new("sunshine")
    # list = List.new
    assert_equal nil, list.tail.link
    assert_equal "sunshine", list.tail.data
    # > jb.find(8, 2)
    # => "deep dep"
  end

  def test_can_play
    skip
    # > jb.play
    # => 4 # also plays the sounds
  end

  def test_can_all
    skip
    # > jb.all
    # => "deep dep dep deep deep bop bop deep"
  end

  def test_can_prepend
    skip
    # > jb.prepend("tee tee tee tee")
    # => 4 # number of beats inserted
  end

  def test_can_include?
    skip
    # > jb.include?("dep")
    # => true
  end

  def test_can_pop
    skip
    # > jb.pop(4)
    # => "deep bop bop deep"
  end

  def test_can_count
    skip
    # > jb.count
    # => 8
  end

  def test_can_insert
    skip
    # > jb.insert(4, "boop bop bop boop")
    # => "tee tee tee tee boop bop bop boop deep dep dep deep"
  end
end

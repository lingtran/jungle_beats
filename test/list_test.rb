require 'minitest/autorun'
require 'minitest/pride'
require '../lib/list'
require 'pry'

class ListTest < Minitest::Test
  def test_list_can_hold_data
    list = List.new("too legit to quit")

    assert list.head.is_a?(Node)
    assert_equal "too legit to quit", list.head.data

    # > jb = JungleBeat.new("deep dep dep deep")
  end

  def test_can_find_the_tail
    list = List.new("too legit to quit")
    # list = List.new
    assert_equal nil, list.tail.link
    list.append("Who run the world? Girls.")
    assert_equal "Who run the world? Girls.", list.tail.data
    # > jb.find(8, 2)
  end

  def test_can_append
    list = List.new("too")
    assert_equal "too", list.tail.data
    list.append("legit")
    assert_equal "too", list.head.data
    assert_equal "legit", list.head.link.data
    list.append("to")
    assert_equal "to", list.head.link.link.data
    list.append("quit")
    assert_equal "quit", list.tail.data
    assert_equal "quit", list.head.link.link.link.data

    # new list
    # find tail
    # append new node
    # verify new tail is what was appended

    # > jb.append("deep bop bop deep")
  end

  def test_can_prepend
    # list = List.new("Girls")
    list = List.new("Girls")

    assert_equal "Girls", list.head.data
    list.prepend("world?")
    assert_equal "world?", list.head.data
    assert_equal "Girls", list.head.link.data
    list.prepend("the")
    list.prepend("run")
    list.prepend("Who")
    assert_equal "Who", list.head.data

    # > jb.prepend("tee tee tee tee")
  end


  def test_can_insert
    skip
    list = List.new("Girls")

    # > jb.insert(4, "boop bop bop boop")
  end

  def test_can_disclose_all_nodes_in_the_list
    skip

    # > jb.all
  end


  def test_can_include?
    skip
    # > jb.include?("dep")
  end

  def test_can_pop
    skip
    # > jb.pop(4)
  end

  def test_can_count
    skip
    # > jb.count
  end
end

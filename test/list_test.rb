require 'minitest/autorun'
require 'minitest/pride'
require '../lib/list'
require 'pry'

class ListTest < Minitest::Test
  def test_list_can_hold_data
    list = List.new("too legit to quit")

    assert list.head.is_a?(Node)
    assert list.is_a?(List)
    assert_equal "too legit to quit", list.head.data
  end

  def test_can_find_the_tail
    list = List.new("too legit to quit")
    # list = List.new
    assert_equal nil, list.tail.link
    list.append("Who run the world? Girls.")
    assert_equal "Who run the world? Girls.", list.tail.data
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
  end

  def test_can_prepend
    list = List.new("Girls")

    assert_equal "Girls", list.head.data
    list.prepend("world?")
    assert_equal "world?", list.head.data
    assert_equal "Girls", list.head.link.data
    list.prepend("the")
    list.prepend("run")
    list.prepend("Who")
    assert_equal "Who", list.head.data
  end

  def test_can_count
    list = List.new("too")

    list.append("legit")
    assert_equal 2, list.count

    list.append("to")
    list.append("quit")
    assert_equal 4, list.count
  end

  def test_can_insert_beat
    list = List.new("too")

    list.insert(1, "legit")
    assert_equal "too", list.head.data
    assert_equal "legit", list.head.link.data
    list.insert(1, "very")
    assert_equal "very", list.head.link.data
    list.insert(2, "wtf")
    assert_equal "wtf", list.head.link.link.data
  end

  def test_preceding_node
    list = List.new("too legit to quit")

    list.append("for real")
    assert_equal list.head, list.preceding_node(1)
    list.prepend("get this all")
    assert_equal list.head.link, list.preceding_node(2)
  end

  def test_next_node
    skip
  end

end

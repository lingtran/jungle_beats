require 'minitest/autorun'
require 'minitest/pride'
require '../lib/jungle_beat'
require 'pry'

class JungleBeatTest < Minitest::Test
  def test_Jungle_Beat_can_be_created_as_a_linked_list
    jb = JungleBeat.new("too legit to quit")

    assert jb.beats.is_a?(List)
    assert_equal "too", jb.beats.head.data
    assert_equal "legit", jb.beats.head.link.data
    assert_equal "to", jb.beats.head.link.link.data
    assert_equal "quit", jb.beats.head.link.link.link.data
  end

# # NEED TO FIGURE OUT THIS CASE
#   def test_Jungle_Beat_can_be_created_as_an_empty_list
#     jb = JungleBeat.new
#
#     assert_equal nil, jb.beat.head.data
#   end

  def test_can_add_elements_to_end_of_list
    jb = JungleBeat.new("too legit to quit")

    assert_equal "too", jb.beats.head.data
    assert_equal "quit", jb.beats.tail.data
    jb.append("who runs the world girls")
    assert_equal "too", jb.beats.head.data
    assert_equal "girls", jb.beats.tail.data
    jb.append("i say who runs the world")
    refute_equal "girl", jb.beats.tail.data
    assert_equal "world", jb.beats.tail.data
    refute_equal "i", jb.beats.head.data
    assert_equal "too", jb.beats.head.data
  end

  def test_elements_can_be_added_to_beginning_of_list
    jb = JungleBeat.new("too legit to quit")

    assert_equal "too", jb.beats.head.data
    jb.prepend("you say what")
    assert_equal "you", jb.beats.head.data
    assert_equal "say", jb.beats.head.link.data
    assert_equal "too", jb.beats.head.link.link.link.data

  end

  def test_can_insert_elements_to_the_position_through_a_given_integer
    skip
    jb = JungleBeat.new("too legit to quit")

    jb.insert(2, "for person")
    assert_equal "too legit for person to quit", jb # takes the place of the word in the third position
  end

  def test_can_play
    skip
    # > jb.play
  end
end

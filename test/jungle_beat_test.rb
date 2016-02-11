require 'minitest/autorun'
require 'minitest/pride'
require '../lib/jungle_beat'
require 'pry'

class JungleBeatTest < Minitest::Test
  def test_Jungle_Beat_can_be_created_as_a_linked_list
    jb = JungleBeat.new("too legit to quit")

    assert jb.is_a?(JungleBeat)
    assert jb.beats.is_a?(List)
  end

# # NEED TO FIGURE OUT THIS CASE
#   def test_Jungle_Beat_can_be_created_as_an_empty_list
#     jb = JungleBeat.new
#
#     assert_equal nil, jb.beat.head.data
#   end

  def test_can_add_elements_to_end_of_list
    jb = JungleBeat.new("too legit to quit")

    assert_equal 5, jb.append("who runs the world girls")
    assert_equal 6, jb.append("i say who runs the world")
    refute_equal 10, jb.append("remember those walls i built baby they're tumbling down you didn't even put up a fight")
  end

  def test_elements_can_be_added_to_beginning_of_list
    jb = JungleBeat.new("too legit to quit")

    assert_equal 7, jb.prepend("i don't want to be your friend")
    refute_equal 4, jb.prepend("yoooo i'll tell you what i want")
  end

  def test_can_insert_elements_to_the_position_through_a_given_integer
    jb = JungleBeat.new("too legit to quit")

    jb.insert(1, "proud and")
    assert_equal "proud", jb.beats.head.link.data
    assert_equal "too", jb.beats.head.data
    jb.insert(1, "not")
    assert_equal "not", jb.beats.head.link.data
  end

  def test_can_verify_if_beat_is_included
    jb = JungleBeat.new("too legit to quit")

    assert true, jb.include?("legit")
    refute jb.include?("girls who run the world")
    assert true, jb.include?("quit")
    refute jb.include?("south")
  end

  def test_beats_can_be_removed_from_the_end_of_the_list
    jb = JungleBeat.new("too legit to quit")

    assert_equal "to quit", jb.pop(2)
    assert_equal 2, jb.count
    # jb.pop(2)
    #  assert_equal nil, jb.count
  end

  def test_can_count_number_of_beats_in_list
    jb = JungleBeat.new("too legit to quit")

    assert_equal 4, jb.count
    jb.append("remember those walls i built baby they're tumbling down you didn't even put up a fight")
    assert_equal 20, jb.count
  end

  def test_can_return_all_elements
    skip
    jb = JungleBeat.new("too legit to quit")

    assert_equal "too legit to quit", jb.all
  end

  def test_can_find_number_of_beats_at_specified_index
    jb = JungleBeat.new("too legit to quit")

    assert_equal "to quit", jb.find(2, 2)
  end

  def test_can_play
    skip
  end
end

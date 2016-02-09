require 'minitest/autorun'
require 'minitest/pride'
require '../lib/node'

class NodeTest < Minitest::Test

  def test_node_can_take_in_data
    node = Node.new("Broncos")

    assert_equal "Broncos", node.data
    # instantiate node object
    # return of data matches data that was given
  end

  def test_node_has_a_link
    node = Node.new("Broncos", "Super Bowl 50 Champions")

    assert_equal "Broncos", node.data
    assert_equal "Super Bowl 50 Champions", node.link
  end

  def test_node_link_can_be_nil
    node = Node.new("Broncos")

    assert_equal "Broncos", node.data
    assert_equal nil, node.link
  end
end

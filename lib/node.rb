class Node
  attr_accessor :data, :link

  def initialize(data, link = nil)
    @data = data
    @link = link
  end

  # empty list = nil as its head, meaning data is always NIL. and link is the next node
  # tail of list is the node that has nil as its next node
end

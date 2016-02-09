require_relative 'node'

class List
  attr_accessor :head
  # want to be able to create a list that will be consisted of nodes
  def initialize(data)
    @head = Node.new(data)
  end

  def tail
  # start with head and look at the link
    current_node = head
  # if a link is not nil, then it is not a tail
  # move on to next node and look at its link
  # if its link is nil, then its the tail
    until current_node.link == nil
      current_node = current_node.link
    end
  # express this tail to the world
    current_node
  end

  def append(node)
    # new node needs to be created

    # find my tail {able to call method already written in same namespace?}
    current_node = head
    until current_node.link == nil
      current_node = current_node.link
    end
    current_node
    head = Node.new(node)
    # point tail link to the new node
    current_node.link = head
    # have the new node with a nil link => don't need to do this because link is defaulted to nil in Node class
    head.link = nil
  end

  # LinkedList#prepend: insert elements and return number of elements inserted

  # LinkedList#play: play the sounds of elements 9

  # LinkedList#append: append and return the value for how many have been appended

  # LinkedList#all: disclose all the elements in the list

  # LinkedList#include?(element): return true/false as verification of whether or not element exists in the list

  # LinkedList#pop(integer): remove all (integer) number of elements, counting from tail

  # LinkedList#count: return number of elements in the list in the list

  # LinkedList#find(position, number of elements to show starting from given position)

end

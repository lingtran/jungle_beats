require_relative 'node'
require 'pry'

class List
  attr_accessor :head, :position
  # want to be able to create a list that will be consisted of nodes
  def initialize(data=nil)
    @head = Node.new(data)
  end

  def tail
  # start with head and look at the link
    current_node = @head
  # if a link is not nil, then it is not a tail
  # move on to next node and look at its link
  # if its link is nil, then its the tail
    until current_node.link.nil?
      current_node = current_node.link
    end
  # express this tail to the world
    current_node
  end

  def append(value)
    # new node needs to be created
    new_node = Node.new(value)
    # point tail link to the new node
    tail.link = new_node
  end

  # LinkedList#prepend: insert elements and return number of elements inserted
  def prepend(value)
    # find the head node
    current_node = @head
    new_node = Node.new(value)
    # new_node's link has to be the head
    @head = new_node
    @head.link = current_node
  end

# Index method for #insert: insert one or more elements at an arbitrary position in the list
  def count
  # each node needs to be assigned an index (number) to reflect its position in the list
  # know that to start (i.e., the head) has an index of 0. ensuing nodes will have increasing distance from the head node through increments of one between subsequent nodes
  # the tail will
    current_node = @head
    counter = 1
    until current_node.link.nil?
      counter += 1
      current_node = current_node.link
    end
    counter
  end

def insert(integer, beats)
  counter = 0
  current_node = @head
  new_node = Node.new(beats)
  until counter == integer
    counter += 1
    current_node = current.node.link
  end
  new_node.link = current_node

  counter = 0
  current_node = @head
  until counter == (integer - 1)
    counter += 1
    current_node = current.node.link
  end
  current_node.link = new_node
end
  # def all
  #   # show all the data contained in the nodes, from head node to tail node
  #
  # end

  # LinkedList#play: play the sounds of elements 9

  # LinkedList#append: append and return the value for how many have been appended

  # LinkedList#all: disclose all the elements in the list

  # LinkedList#include?(element): return true/false as verification of whether or not element exists in the list

  # LinkedList#pop(integer): remove all (integer) number of elements, counting from tail

  # LinkedList#count: return number of elements in the list in the list

  # LinkedList#find(position, number of elements to show starting from given position)
end

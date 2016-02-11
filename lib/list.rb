require_relative 'node'
require 'pry'

class List
  attr_accessor :head, :position
  def initialize(beats=nil)
    @head = Node.new(beats)
  end

  def tail
    current_node = @head
    until current_node.link.nil?
      current_node = current_node.link
    end
    current_node
  end

  def append(beats)
    tail.link = Node.new(beats)
  end

  def prepend(beats)
    current_node = @head
    @head = Node.new(beats)
    @head.link = current_node
  end

  def count
    current_node = @head
    counter = 1
    until current_node.link.nil?
      counter += 1
      current_node = current_node.link
    end
    counter
  end

  def insert(index, beats)
    new_node = Node.new(beats)
    new_node.link = next_node(index)
    preceding_node(index).link = new_node
  end

  def next_node(index)
    counter = 0
    current_node = @head
    until counter == index
      counter += 1
      current_node = current_node.link
    end
    current_node
  end

  def preceding_node(index)
    next_node(index - 1)
  end
end

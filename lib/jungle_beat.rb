require_relative 'list'
require_relative 'node'
require 'pry'

class JungleBeat
  attr_accessor :beats, :list

  def initialize(beats = nil)
    @beats = recent(beats)
  end

  def recent(beats)
    beats_array = beats.split
    @list = List.new(beats_array[0])
    if beats_array[1]
      beats_array[1..-1].each do |beat|
        list.append(beat)
      end
    end
    list
  end

  def append(beats)
    beats.split.each do |beat|
      list.append(beat)
    end
    beats.split.count
  end

  def prepend(beats)
    beats.split.reverse.each do |beat|
      list.prepend(beat)
    end
    beats.split.count
  end

  def insert(integer, beats)
    beats.split.reverse.each do |beat|
      list.insert(integer, beat)
    end
  end

  def include?(beat)
    answer = false
    current_node = list.head
    until current_node.link.nil?
      if beat == current_node.data
        return true
        break
      else
        return false
      end
     current_node = current_node.link
    end
    answer
  end

  def pop(integer = 1)
    old_tail = ""
    integer.times do
      old_tail.prepend(list.tail.data + " ")
      list.preceding_node(list.count - 1).link = nil
    end
    old_tail.strip
  end

  def count
    list.count
  end

  def find(index, number_of_beats)
    findings = ""
    number_of_beats.times do
      binding.pry
      findings.prepend(list.current_node(index + 1).data + " ")
      binding.pry
    end
    binding.pry
    findings.strip
  end

  def all
    all = ""
    list.count.times do
      all.prepend(list.tail.data + " ")
      pop
    end
    all
  end
end

require_relative 'list'
require_relative 'node'
require 'pry'

class JungleBeat
  attr_accessor :beats, :list

  def initialize(beats = nil)
    @beats = starting(beats)
  end

  def starting(beats)
    beats_array = beats.split
    @list = List.new(beats_array[0])
    if beats_array[1]
      beats_array[1..-1].each do |beat|
        list.append(beat)
      end
    end
    list
  end

  def play
    `say -r 300 -v Cellos #{all.split}`
    list.count
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
    all
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

  def pop(number_of_beats = 1)
    old_tail = ""
    (number_of_beats).downto(1) do
      old_tail.prepend(list.tail.data + " ")
      list.preceding_node(list.count - 1 ).link = nil
    end
    old_tail.strip
  end

  def count
    list.count
  end

  def find(index, number_of_beats)
    # Need to handle cases where number_of_beats includes possibility of going beyond tail, in which case no return value
    findings = ""
    (index).upto(index + 1) { |num|
      findings << list.next_node(num).data + " "
    }
    findings.rstrip

    # Issue with determining range so that number passed in reflects desired index up to number_of_beats
    # iterate (number_of_beats) starting from given index
    # first index to retrive is index given
    # next index is index + 1
    # next index is index + 2
    # next index is index + 3
    # consider pattern in terms of possible conditional groups, difference if starting index is 0? etc.
  end

  def all
    all = ""
    0.upto(list.count - 1) do |num|
      all << list.next_node(num).data + " "
    end
    all.strip
  end
end

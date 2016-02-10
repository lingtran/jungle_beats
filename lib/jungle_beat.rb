require_relative 'list'
require_relative 'node'

class JungleBeat
  attr_accessor :beats

  def initialize(beats = nil)
    @beats = recent(beats)
  end

  def recent(beats)
    beats_array = beats.split
    list = List.new(beats_array[0])
    if beats_array[1]
      beats_array[1..-1].each do |beat|
        list.append(beat)
      end
    end
    list
  end

  def append(beats)
    beats_array = beats.split
    new_list = List.new(beats_array[0])
    if beats_array[1]
      beats_array[1..-1].each do |beat|
        new_list.append(beat)
      end
    end
    new_list
    @beats.tail.link = new_list.head
    beats_array.size
  end

  def prepend(beats) #NEED HELP
    beats_array = beats.split
    new_list = List.new
    if beats_array[0]
      beats_array[-1..0].each do |beat|
        new_list.prepend(beat)
      end
    end
    new_list
    new_list.tail.link = @beats.head
    beats_array.size
  end

  def count
    @positions = []
    until @beats.link.nil?
      if @beats.head
        @positions.push(@beats)
  end

  def insert(integer, beats)
    # the number of times to iterate through the linked list is the same integer number given as argument, starting from head, which is zero
    # once hit the number time hits, the preceding node will be linked to the new node, and then new node will be linked to the node returned at the integer-th moment
    # this requires going through current_list and then linking to new phantom list

    CURRENT_LIST = [] # allowable?
    (0..integer).times do
      CURRENT_LIST << @beats.LIST METHOD TO PRINT OUT DATA AT EACH INTEGER-TH POSITION
    end

    beats_array = beats.split
    new_list = List.new(beats_array[0])
    if beats_array[1]
      beats_array[1..-1].each do |beat|
        new_list.append(beat)
      end
    end
    current_list.NODE PRECEDING INTEGER-TH (MINUS ONE) POSITION.link = new_list.head
    new_list.tail.link = current_list.NODE AT INTEGER-TH POSITION.

  end

end

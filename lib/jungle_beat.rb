require_relative 'list'
require_relative 'node'

class JungleBeat
  attr_accessor :beats

  def initialize(beats = nil)
    @beats = chopper(beats)
  end

  def chopper(beats)
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
    current_list = @beats
    beats_array = beats.split
    new_list = List.new(beats_array[0])
    if beats_array[1]
      beats_array[1..-1].each do |beat|
        new_list.append(beat)
      end
    end
    current_list.tail.link = new_list.head
  end

end

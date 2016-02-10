require_relative 'list'
require_relative 'node'

require 'pry'

class JungleBeat

  # when a JungleBeat is created, it takes in a string that is really consisted of a collection of nodes
  # Requires list class, so can break up nodes and instantiate individual nodes
  # Store the elements somewhere

  def initialize(beats)
    @beats = List.new(beats)
  end

  def append(beats)
    list = @beat.split(/ /) # this gives back a collection 
    list.count
  end

end

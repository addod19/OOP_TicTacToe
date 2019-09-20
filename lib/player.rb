# frozen_string_literal: true

class Player
  attr_accessor :name, :marker

  def initialize(marker, name = 'Player')
    @marker = marker
    @name = name
  end
end

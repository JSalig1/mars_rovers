class Engine
  attr_reader :new_position

  def move(location)
    if location[2] == "N" or location[2] == "E"
      @new_position = 1
    elsif location[2] == "S" or location[2] == "W"
      @new_position = -1
    end
  end
end

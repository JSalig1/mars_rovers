class Engine
  def move_to(location)
    location[:course] + location[:heading]
  end
end

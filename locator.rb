class Locator
  attr_accessor :direction, :pos_x, :pos_y

  def initialize(params)
    @pos_x = params[0].to_i
    @pos_y = params[1].to_i
    @navigation = ["N", "E", "S", "W"]
    @direction = "#{params[2]}"
  end

  def update(move)
    if @direction == "E" or @direction == "W"
      @pos_x = @pos_x + move
    elsif @direction == "N" or @direction == "S"
      @pos_y = @pos_y + move
    end
  end

  def new_heading(turn)
    @direction = @navigation.rotate!(turn).first
  end

  def locate
    [@pos_x, @pos_y, @direction]
  end
end

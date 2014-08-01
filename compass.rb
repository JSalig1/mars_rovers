class Compass
  attr_reader :direction, :heading

  def initialize(params)
    @navigation = ["N", "E", "S", "W"]
    turn = @navigation.index(params)
    update_navigation(turn)
  end

  def update_navigation(turn)
    @direction = @navigation.rotate!(turn).first
    get_orientation
  end

  private

  def get_orientation
    if @direction == "S" or @direction == "W"
      @heading = -1
    elsif @direction == "N" or @direction == "E"
      @heading = 1
    end
  end
end

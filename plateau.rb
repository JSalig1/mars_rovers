class Plateau
  attr_reader :size_x, :size_y

  def initialize(params)
    @size_x = params[0].to_i
    @size_y = params[1].to_i
  end
end

require_relative 'engine'
require_relative 'locator'

class Rover
  def initialize(params)
    @locator = Locator.new(params)
    @engine = Engine.new
  end

  def operate(instructions)
    instructions.each_char do |instruction|
      if instruction == "M"
        target = @locator.route_course
        new_location = @engine.move_to(target)
        @locator.update_position_sensor(new_location)
      elsif instruction == "R"
        @locator.new_heading(1)
      elsif instruction == "L"
        @locator.new_heading(-1)
      end
    end
  end

  def locate
    puts @locator.locate.join(" ")
  end
end

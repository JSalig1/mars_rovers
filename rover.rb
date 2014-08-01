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
        location = @locator.locate
        new_location = @engine.move(location)
        @locator.update(new_location)
      elsif instruction == "R"
        @locator.new_heading(1)
      elsif instruction == "L"
        @locator.new_heading(-1)
      end
      puts @locator.locate.inspect
    end
  end
  
  def locate
    puts "#{@locator.pos_x} #{@locator.pos_y} #{@locator.direction}"
  end
end

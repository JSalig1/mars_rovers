require_relative 'compass'
require_relative 'position_sensor'

class Locator
  def initialize(params)
    @compass = Compass.new(params[2])
    @position_sensor = PositionSensor.new(params)
  end

  def update_position_sensor(new_location)
    tracker = @position_sensor.active_tracker
    @position_sensor.coordinates[tracker] = new_location
  end

  def route_course
    { course: @position_sensor.current_position, heading: @compass.heading }
  end

  def new_heading(turn)
    @compass.update_navigation(turn)
    @position_sensor.switch_trackers
  end

  def locate
    @position_sensor.coordinates.values << @compass.direction
  end
end

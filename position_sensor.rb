class PositionSensor
  attr_accessor :coordinates, :active_tracker

  def initialize(params)
    @trackers = [:latitude, :longitude]
    @coordinates = {
      latitude: params[0].to_i,
      longitude: params[1].to_i
    }
    set_active_tracker(params[2])
  end

  def current_position
    @coordinates[@active_tracker]
  end

  def switch_trackers
    @active_tracker = @trackers.rotate!(1).first
  end

  private

  def set_active_tracker(params)
    if params == "E" or params == "W"
      @active_tracker = @trackers.first
    elsif params == "N" or params == "S"
      switch_trackers
    end
  end
end

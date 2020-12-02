class School
  attr_reader :start_time
  def initialize(start_time, place)
    @start_time = start_time
    @place = place
  end
end

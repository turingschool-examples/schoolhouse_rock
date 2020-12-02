class School
  attr_reader :start_time,
              :hours
  def initialize(start_time, hours)
    @start_time = start_time
    @hours = hours
end
end

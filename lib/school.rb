class School
  attr_reader :time,
              :hours

  def initialize(time, hours)
    @time = time
    @hours = hours
  end

  def start_time
    @time
  end
end

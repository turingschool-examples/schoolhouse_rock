class School
  attr_reader :time,
              :hours

  def initialize(time, hours)
    @time = time
    @hours = hours
  end
end

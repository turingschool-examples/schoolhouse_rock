class School
  attr_reader :time,
              :hours,
              :names

  def initialize(time, hours)
    @time = time
    @hours = hours
    @names = []
  end

  def start_time
    @time
  end

  def hours_in_school_day
    @hours
  end

  def student_names
    @names
  end
end

class School
  attr_reader :start_time,
              :total_hours

  def initialize(start_time, total_hours)
    @start_time = start_time
    @total_hours = total_hours
  end

  def hours_in_school_day()
    hours_in_school_day = @total_hours
  end

end

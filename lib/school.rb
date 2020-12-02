class School
  attr_reader :hours_in_school_day, :start_time, :student_names

  def initialize(hours_in_day, start)
    @hours_in_school_day = hours_in_day
    @start_time = start
    @student_names = []
  end
end

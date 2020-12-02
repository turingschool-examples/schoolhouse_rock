class School
  attr_reader :start_time, :hours_in_school_day, :student_names

  def initialize(start, hours)
    @start_time = start
    @hours_in_school_day = hours
    @student_names = []
    @end_time = 0
  end

  def add_student_name(name)
    @student_names << name
  end

  def end_time
    end_time = (@start_time.to_i + @hours_in_school_day)
    "#{end_time}:00"
  end
end

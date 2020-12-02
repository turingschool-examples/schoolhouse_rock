class School
  attr_reader :start_time, :hours_in_school_day, :student_names
  def initialize(start_time, hours_in_school_day, student_names=[])
    @start_time = start_time
    @hours_in_school_day = hours_in_school_day
    @student_names = student_names
  end

  def add_student_name(name)
    @student_names << name
  end

  def end_time
    endtime = "#{(9+hours_in_school_day)}:00"
  end
end

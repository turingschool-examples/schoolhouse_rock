class School
attr_reader :start_time,
            :hours_in_school_day,
            :student_names


  def initialize(start_time, hours_in_school_day)
    @start_time = start_time
    @hours_in_school_day = hours_in_school_day
    @student_names = []
  end

  def add_student_name(name)
    student_names << name
  end

  def end_time
  no_colon = @start_time.delete":"
  to_integer = no_colon.to_i
  start_hour = to_integer/100
  end_hour = start_hour + @hours_in_school_day
  with_zeros = end_hour * 100
  to_string = with_zeros.to_s
  end_time = to_string.insert(-3, ":")
  end

end

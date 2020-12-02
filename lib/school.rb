class School
  attr_reader :hours_in_school_day, :start_time, :student_names
  def initialize(start_time, hours_in_school_day)
    @start_time = start_time
    @hours_in_school_day = hours_in_school_day
    @student_names = []
  end

  def add_student_name(name)
    @student_names.push(name)
  end

  def end_time
  end_of_day = @start_time.to_i + @hours_in_school_day
  if end_of_day > 12
    "#{end_of_day - 12}:00"
  else
    "#{end_of_day}:00"
  end  

    conver start_time.to_i, add duration, if over 12, subtract 12, put that number in front of '#{num}':00' using interpolation
  end


end

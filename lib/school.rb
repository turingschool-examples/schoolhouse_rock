class School
  attr_reader :start_time,
              :hours_in_school_day,
              :student_names

  def initialize(start_time, hours_in_school_day)
    @start_time = start_time
    @hours_in_school_day = hours_in_school_day
    @student_names = []
  end

  def add_student_name(student)
    @student_names << student
  end

  def end_time
    converted_start_time = @start_time.to_i
    calculated_time = converted_start_time + @hours_in_school_day
    end_time = calculated_time.to_s + ":00"
    return end_time
  end

  def is_full_time?
    if @hours_in_school_day > 4
      return true
    else
      return false
    end
  end

  def standard_student_names
    standard_student_name = @student_names.map do |name|
      name.capitalize
    end
    return standard_student_name
  end

  def convert_end_time_to_clock_time
    converted_start_time = @start_time.to_i
    calculated_clock_time = (converted_start_time + @hours_in_school_day) - 12
    end_time_clock_time = calculated_clock_time.to_s + ":00"
  end
end

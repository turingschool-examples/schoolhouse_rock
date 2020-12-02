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
    return true if @hours_in_school_day > 4 else false   
  end
end

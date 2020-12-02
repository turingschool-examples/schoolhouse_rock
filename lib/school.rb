class School
  attr_reader :hours_in_school_day, :start_time, :student_names

  def initialize(start_time, hours_in_school_day)
    @hours_in_school_day = hours_in_school_day
    @start_time = start_time
    @student_names = []
  end

  def add_student_name(name)
    @student_names.push(name)
  end

  def end_time
    hours = @start_time.to_i + @hours_in_school_day
    return "#{hours}:00"
  end

  def is_full_time?
    if @hours_in_school_day >= 4
      true
    else
      false
    end
  end

  def standard_student_names
    standard_student_names = []
    @student_names.each do |name|
      standard_student_names.push(name.downcase.capitalize!)
    end
    return standard_student_names
  end

  def convert_end_time_to_clock_time
  clock_time = end_time().to_i % 12
    return "#{clock_time}:00"
  end
end

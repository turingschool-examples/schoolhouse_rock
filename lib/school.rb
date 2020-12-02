class School
  attr_reader :start_time,
              :hours_in_school_day
  def initialize(start_time, hours_in_school_day)
    @start_time = start_time
    @hours_in_school_day = hours_in_school_day
  end

  def student_names
  @student_names = []
  end

  def standard_student_names
    puts @student_names.capitalized
  end

  def end_time
    "#{(@start_time.to_i + @hours_in_school_day)}:00"
  end

  def add_student_names(student_names)
    student_names << @student_names
  end

  def is_full_time?
    if @hours_in_school_day > 4
      true
    end
  end

  def convert_end_time_to_clock_time
    if (@start_time.to_i + @hours_in_school_day) > 12
      "#{(@start_time.to_i + @hours_in_school_day) - 12}:00"
    else
      "#{(@start_time.to_i + @hours_in_school_day)}:00"
    end
  end
end
school = School.new('9:00', 7)
puts school.hours_in_school_day

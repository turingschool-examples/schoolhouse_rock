class School
  attr_reader :start_time
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

  def add_student_name(student_names)
    student_names.push(student_names)
  end
end

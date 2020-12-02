class School
  attr_accessor :start_time,
                :hours_in_school_day

  def initialize(start_time, hours_in_school_day)
    @start_time           = start_time
    @hours_in_school_day  = hours_in_school_day
    @student_names        = []
  end

  def student_names
    @student_names
  end

  def add_student_name(name)
    @student_names << name
  end

  def end_time
    math = @hours_in_school_day.to_i + @start_time.to_i
    "#{math}:00"
  end

  def is_full_time?
    if @hours_in_school_day < 5
      false
    else
      true
    end
  end

  def standard_student_names
    student_names.map! { |student_name| student_name.capitalize }
  end
end

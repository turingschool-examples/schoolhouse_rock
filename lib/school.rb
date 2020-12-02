class School
  attr_reader :start_time,
              :hours_in_school_day,
              :student_names,
              :full_time
  def initialize(start_time, hours_in_school_day)
    @start_time = start_time
    @hours_in_school_day = hours_in_school_day
    @student_names = []
    @full_time = true
  end

  def convert_end_time_to_clock_time
    time = @start_time.to_i + @hours_in_school_day
    end_time = time - 12
    "#{end_time}:00"
  end

  def standard_student_names
    @student_names.map do |name|
      name.capitalize
    end
  end

  def is_full_time?
    if @hours_in_school_day >= 4
      @full_time
    else
      @full_time = false
    end
  end

  def add_student_name(student)
    @student_names << student
  end

  def end_time
  time = @start_time.to_i + @hours_in_school_day
    if time > 24
    "That can't be right!"
    else
      "#{time}:00"
    end
  end
end

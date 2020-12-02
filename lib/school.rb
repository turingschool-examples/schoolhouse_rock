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
    return "#{end_of_day}:00"
  end

  def is_school_full_time?
    if @hours_in_school_day > 4
      true
    else
      false
    end
  end

  def standard_student_names
    #is there a more neat way to to write this? It feels sloppy or redundant
    standard_names = []
    @student_names. each do |student|
      standard_names << student.capitalize
    end
    standard_names
  end

  def convert_end_time_to_clock_time
    end_of_day = @start_time.to_i + @hours_in_school_day
    if end_of_day > 12
      "#{end_of_day - 12}:00"
    else
      "#{end_of_day}:00"
    end 
  end
end

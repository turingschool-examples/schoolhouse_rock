class School
  attr_reader :start_time, :hours_in_school_day, :student_names
  def initialize(start_time, hours_in_school_day, student_names=[])
    @start_time = start_time
    @hours_in_school_day = hours_in_school_day
    @student_names = student_names
  end

  def add_student_name(name)
    @student_names << name
  end

  def end_time
    int_start_time = @start_time.to_i
    endtime = "#{(int_start_time+hours_in_school_day)}:00"
  end

  def is_full_time?
    if @hours_in_school_day > 4
      true
    else
      false
    end
  end

  def standard_student_names

    names = []
    @student_names.each do |name|
      names << name.capitalize
      # could you just use capitalize! method instead?
    end
    names

  end

  def convert_end_time_to_clock_time

    int_start_time = @start_time.to_i
    clock_time = int_start_time + @hours_in_school_day
    if clock_time > 24
      "not enough hours in the day"
    elsif clock_time >= 13
      "#{clock_time - 12}:00"
    else
      "#{clock_time}:00"
    end

  end


end

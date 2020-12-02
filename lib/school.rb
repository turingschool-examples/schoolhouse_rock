class School
  attr_reader :start_time,
              :hours_in_school_day

  attr_accessor :student_names

  def initialize(start_time, hours)
    @start_time = start_time
    @hours_in_school_day = hours
    @student_names = []
  end

  def add_student_name(name)
    @student_names << name
  end

  def end_time
    hour = start_time.split(':')
    int_hour = hour[0].to_i
    end_hour = int_hour + hours_in_school_day
    "#{end_hour}:00"
  end

  def is_full_time?
    @hours_in_school_day > 4
  end

  def standard_student_names
    @student_names.map do |name|
      name.capitalize
    end
  end

  def convert_end_time_to_clock_time
    time_str = self.end_time
    time_arr = time_str.split(':')
    time_int = time_arr[0].to_i
    "#{time_int - 12}:00"
  end

end

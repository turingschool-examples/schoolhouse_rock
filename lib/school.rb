class School
  attr_reader :start_time,
              :hours_in_school_day,
              :student_names

  def initialize(start_time, hours_in_school_day)
    @start_time = start_time
    @hours_in_school_day = hours_in_school_day
    @student_names = []
  end

  def add_student_name(name)
    @student_names.push(name)
  end

  def end_time
    # Separate the time on a colon
    split_start_time = @start_time.split(':')

    # Get start hour
    start_hour = split_start_time[0].to_i

    # Calculate end hour
    end_hour = start_hour + @hours_in_school_day

    # Create end time string
    end_time = "#{end_hour}:#{split_start_time[1]}"
  end

  def convert_end_time_to_clock_time
    # Separate the time on a colon
    split_end_time = end_time.split(':')

    # Get end hour
    end_hour_24 = split_end_time[0].to_i

    # Convert end hour to 12hr format (it's normally 24hr format)
    end_hour_12 = (end_hour_24 <= 12) ? end_hour_24 : end_hour_24 % 12

    converted_end_time = "#{end_hour_12}:#{split_end_time[1]}"
  end

  def is_full_time?
    @hours_in_school_day > 4
  end

  def standard_student_names
    @student_names.map do |name|
      name.capitalize
    end
  end
end

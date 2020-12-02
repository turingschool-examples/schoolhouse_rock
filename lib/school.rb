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

    # Convert start
    start_hour = split_start_time[0].to_i

    # Calculate end hour
    end_hour = start_hour + @hours_in_school_day

    # Create end time string
    end_time = "#{end_hour}:#{split_start_time[1]}"
  end
end

require 'time'
class School
  attr_reader :start_time,
              :hours_in_school_day,
              :student_names

  def initialize(start_time, hours_in_school_day)
    @start_time = start_time
    @hours_in_school_day = hours_in_school_day
    @student_names = []
  end

  def add_student_name(student)
    @student_names << student
  end

  def end_time
  end_time = @start_time.to_i + @hours_in_school_day
  "#{end_time}:00"
  end

  def is_full_time?
    @hours_in_school_day > 4
  end

  def standard_student_names
    @student_names.map do |student|
      student.capitalize
    end
  end

  def convert_end_time_to_clock_time
    #end_time.to_datetime.strftime('%H:%M')
    #end_time_converted = new DateTime(end_time)
    time = Time.parse(end_time)
    #time.hour
    time.strftime("%l:%M").strip

    #if you want me to use if else statements (:
    time = end_time.to_i
    if time > 12
      time = time - 12
    end
    "#{time}:00"

  end
end

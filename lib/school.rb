require 'time'

class School
 attr_reader :hours_in_school_day,
             :student_names,
             :start_time

  def initialize(hours_in_school_day, start_time)
    @hours_in_school_day = hours_in_school_day
    @start_time = start_time
    @student_names = []
    @is_full_time = true
  end

  def add_student_name(x)
    @student_names << x
  end

  def end_time
 (hours_in_school_day.to_i + start_time.to_i)
  end

   def is_full_time?
     @is_full_time
   end

  def standard_student_names

  end
end

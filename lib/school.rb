class School
  attr_reader :start_time
              :hours_in_school_day
              :student_names
  def initialize(start_time, hours_in_school_day)
    @start_time = start_time
    @hours_in_school_day = hours_in_school_day
  end

  def student_names(student_names)
  @student_names = []
  end
end

school = School.new('9:00', 7)
require 'pry'; binding.pry

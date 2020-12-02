class School
  attr_reader :start_time,
              :hours,
              :student_name
  def initialize(start_time, hours)
    @start_time = start_time
    @hours = hours
    @student_names = student_names []

end

def start_time (start_time, hours)
  @start_time = start_time
end

def hours_in_school_day(start_time, hours)
  @hours
end

def student_names(student_name)
  @student_name = student_name
end

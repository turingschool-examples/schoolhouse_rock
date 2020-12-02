class School
  attr_reader :start_time,
              :hours,
              :student_name

  def initialize(start_time, hours)
    @start_time = start_time
    @hours = hours

end

school = School.new('9:00', 7)

def start_time (start_time)
  @start_time = start_time
end

def hours_in_school_day(start_time, hours)
  @start_time[0..1].to_i + time).to_s + ":00"
  @hours = hours

end

def student_names(student_name)
  @student_name.push(student_name)



  def is_full_time?
    if @hours > 4 == true
    end
end

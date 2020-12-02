class School
  attr_accessor :start_time,
                :hours_in_school_day

  def initialize(start_time, hours_in_school_day)
    @start_time           = start_time
    @hours_in_school_day  = hours_in_school_day
    @student_names        = []
  end

  def student_names
    @student_names
  end

  def add_student_name(name)
    @student_names << name
  end

  def end_time
  end 
end

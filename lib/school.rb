class School
   attr_reader :start_time, :hours_in_school_day

  def initialize(start_time, hours_in_school_day)
      @start_time          = start_time
      @hours_in_school_day = hours_in_school_day

  end

  def student_names
   student_names = student_names("")
 end

 def add_student_name
   student_name {'Aurora' 'tim' 'megan'}
 end

 def calculate_end_time
  end_time = start_time + hours_in_a_day
 end
end

class School

  attr_reader :start_time,
              :total_hours,
              :name

  def initialize(start_time, total_hours)
    @start_time = start_time
    @total_hours = total_hours
    @names =[]
  end

  def hours_in_school_day()
    hours_in_school_day = @total_hours
  end

  def add_student_name(name)
   @names.push(name)
  end

  def student_names
    student_names = @names
  end

  def end_time()
    time = self.start_time.to_i + self.total_hours
    "#{time}:00"
  end

  def is_full_time?
    self.total_hours >=4
  end

  def standard_student_names()
    standard_names = []
    self.student_names.each do |name|
      standard_names << name.capitalize!
    end
  end

  def convert_end_time_to_clock_time
   time = (self.end_time.to_i) - 12
   "#{time}:00"
  end

end

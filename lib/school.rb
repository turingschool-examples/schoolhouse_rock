class School
  attr_reader :start_time,
              :hours_in_school_day

  def initialize(start_time, hours_in_school_day)
      @start_time = start_time
      @hours_in_school_day = hours_in_school_day
  end

  # def start_time
  #   @start_time = '9:00'
  # end
  #
  # def hours_in_school_day
  #   @hours_in_school_day = 7
  # end

  def student_names
    @student_names = []
  end

  def add_student_name(student)
    @student_names << add_student_name
  end

  def end_time
    @end_time = "#{(start_time.to_i+ hours_in_school_day).to_s}:00"
  end
end

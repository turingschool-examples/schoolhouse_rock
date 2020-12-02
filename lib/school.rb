class School
  attr_reader :time,
              :hours,
              :names

  def initialize(time, hours)
    @time = time
    @hours = hours
    @names = []
  end

  def start_time
    @time
  end

  def hours_in_school_day
    @hours
  end

  def student_names
    @names
  end

  def add_student_name(name)
    @names << name
  end

  def end_time
    @hours.to_s + @time
  end

  def is_full_time?
    true if @hours > 4
  end


end

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
    math = @hours_in_school_day.to_i + @start_time.to_i
    "#{math}:00"
  end

  def is_full_time?
    if @hours_in_school_day < 5
      false
    else
      true
    end
  end

  def standard_student_names
    student_names.map! { |student_name| student_name.capitalize }
  end

  def convert_end_time_to_clock_time
    if end_time.to_i < 13
      end_time
    elsif end_time.to_i > 12
      time_key = {'13:00': '1:00',
                  '14:00': '2:00',
                  '15:00': '3:00',
                  '16:00': '4:00',
                  '17:00': '5:00',
                  '18:00': '6:00',
                  '19:00': '7:00',
                  '20:00': '8:00',
                  '21:00': '9:00',
                  '22:00': '10:00',
                  '23:00': '11:00',
                  '24:00': '12:00'}

        time_key.key('16:00')
      else
        "Thats not human!"
      end
    end
  end

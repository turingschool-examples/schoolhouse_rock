class School
  attr_reader :start_time,
               :hours_in_class
               
  def initialize(start_time, hours_in_class)
    @start_time = start_time
    @hours_in_class = hours_in_class
  end
end

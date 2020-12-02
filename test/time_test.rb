require 'minitest/autorun'
require 'minitest/pride'
require './lib/school'
require './lib/time'

class TimeTest < Minitest::Test
  def test_it_exists
    time = Time.new('9:00', 7)

    assert_instance_of Time, time
  end
#
#   def test_it_has_start_time
#     time = Time.new('9:00', 7)
#
#     assert_equal '9:00', time.start_time
#   end
#
#   def test_it_has_hours_in_school_day
#     school = School.new('9:00', 7)
#
#     assert_equal 7, school.hours_in_school_day
#   end
#
#   def test_it_starts_with_no_student_names
#     school = School.new('9:00', 7)
#
#     assert_equal [], school.student_names
#   end
#
#   def test_it_can_add_student_names
#     school = School.new('9:00', 7)
#
#     school.add_student_name('Aurora')
#     school.add_student_name('tim')
#     school.add_student_name('megan')
#
#     assert_equal ['Aurora', 'tim', 'megan'], school.student_names
#   end
#
#   def test_it_has_military_time
#     school1 = School.new('9:00', 7)
#
#     assert_equal 16, school1.military_time
#   end
#
#   def test_it_can_calculate_end_time
#     school1 = School.new('9:00', 7)
#     school2 = School.new('9:00', 3)
#
#     assert_equal '16:00', school1.end_time
#     assert_equal '12:00', school2.end_time
#   end
#
#   def test_school_is_full_time
#     school1 = School.new('9:00', 7)
#     school2 = School.new('9:00', 3)
#
#     assert_equal true, school1.is_full_time?
#     assert_equal false, school2.is_full_time?
#   end
#
#   def test_it_has_standard_student_names
#     school = School.new('9:00', 7)
#
#     school.add_student_name('Aurora')
#     school.add_student_name('tim')
#     school.add_student_name('megan')
#
#     assert_equal ["Aurora", "Tim", "Megan"], school.standard_student_names
#   end
#
#   def test_it_has_clock_time
#     school1 = School.new('9:00', 7)
#     school2 = School.new('9:00', 3)
#
#     assert_equal 4, school1.clock_time
#     assert_equal "12:00", school2.clock_time
#   end
#
#   def test_it_can_add_ante_meridiem
#     school1 = School.new('9:00', 7)
#     school2 = School.new('9:00', 3)
#
#     assert_equal "4:00 PM", school1.ante_meridiem
#     assert_equal "12:00 PM", school2.ante_meridiem
#   end
#
#   def test_it_can_convert_end_time_to_clock_time
#     school1 = School.new('9:00', 7)
#     school2 = School.new('9:00', 3)
#
#     assert_equal "4:00", school1.convert_end_time_to_clock_time
#     assert_equal "12:00", school2.convert_end_time_to_clock_time
#   end
end

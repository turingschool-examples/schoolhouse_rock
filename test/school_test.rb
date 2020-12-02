require 'minitest/autorun'
require 'minitest/pride'
require './lib/school'

class SchoolTest < Minitest::Test
  #Iteration 1 Tests:
  def test_it_exists

    school = School.new('9:00', 7)

    assert_instance_of School, school
  end

  def test_it_has_start_time
    school = School.new('9:00', 7)

    assert_equal '9:00', school.start_time
  end

  def test_it_has_hours_in_school_day

    school = School.new('9:00', 7)

    assert_equal 7, school.hours_in_school_day
  end

  def test_it_starts_with_no_student_names

    school = School.new('9:00', 7)

    assert_equal [], school.student_names
  end

  #Iteration 2 Tests:
  def test_it_can_add_student_names

    school = School.new('9:00', 7)

    school.add_student_name('Aurora')
    school.add_student_name('tim')
    school.add_student_name('megan')

    assert_equal ['Aurora', 'tim', 'megan'], school.student_names
  end

  def test_it_can_calculate_end_time

    school1 = School.new('9:00', 7)
    school2 = School.new('9:00', 3)

    assert_equal '16:00', school1.end_time
    assert_equal '12:00', school2.end_time
  end

  def test_it_can_be_full_time
    school1 = School.new('9:00', 7)
    school2 = School.new('9:00', 3)
    school_1 = school1.is_school_full_time?
    school_2 = school2.is_school_full_time?

    assert school_1
    refute school_2
  end

  def test_standard_student_names
    #setup
    school = School.new('9:00', 7)
    school.add_student_name('Aurora')
    school.add_student_name('tim')
    school.add_student_name('megan')
    #execution
    names = school.standard_student_names
    #should this go in setup or execution?
    standard_names = ['Aurora', 'Tim', 'Megan']
    #assertion
    assert_equal standard_names, names
  end

  def test_convert_to_clock_time
    school1 = School.new('9:00', 7)
    school2 = School.new('9:00', 3)

    clock_time_1 = school1.convert_end_time_to_clock_time
    clock_time_2 = school2.convert_end_time_to_clock_time

    clock1 = "4:00"
    clock2 = "12.00"

    assert_equal clock1, clock_time_1
    assert_equal clock2, clock_time_2
  end
end

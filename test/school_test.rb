require 'minitest/autorun'
require 'minitest/pride'
require './lib/school'

class SchoolTest < Minitest::Test
  #Iteration 1 Tests:
  def test_it_exists
    # skip
    school = School.new('9:00', 7)
    assert_instance_of School, school
  end

  def test_it_has_start_time
    # skip
    school = School.new('9:00', 7)

    assert_equal '9:00', school.start_time
  end

  def test_it_has_hours_in_school_day
    # skip
    school = School.new('9:00', 7)

    assert_equal 7, school.hours_in_school_day
  end

  def test_it_starts_with_no_student_names
    # skip
    school = School.new('9:00', 7)

    assert_equal [], school.student_names
  end

  #Iteration 2 Tests:
  def test_it_can_add_student_names
    # skip
    school = School.new('9:00', 7)

    school.add_student_name('Aurora')
    school.add_student_name('tim')
    school.add_student_name('megan')

    assert_equal ['Aurora', 'tim', 'megan'], school.student_names
  end

  def test_it_can_calculate_end_time
    # skip
    school1 = School.new('9:00', 7)
    school2 = School.new('9:00', 3)

    assert_equal '16:00', school1.end_time
    assert_equal '12:00', school2.end_time
  end

  def test_more_end_times

    school1 = School.new('9:00', 8)
    school2 = School.new('9:00', 2)

    assert_equal '17:00', school1.end_time
    assert_equal '11:00', school2.end_time
  end

  def test_if_the_school_is_full_time
    #school is full time if more than 4 hours in school day
    school = School.new('9:00', 7)

    assert school.is_full_time?
  end

  def test_if_the_school_is_not_full_time

    school = School.new('9:00', 3)

    refute school.is_full_time?
  end

  def test_that_standard_student_names_are_capitalized
    #method should return a list of student names, capitalized
    school = School.new('9:00', 7)

    school.add_student_name('Aurora')
    school.add_student_name('tim')
    school.add_student_name('megan')

    assert_equal ["Aurora", "Tim", "Megan"], school.standard_student_names
  end

  def test_change_format_of_end_time_to_clock_time
    #change the end time from integer 4 to "4:00"
    school = School.new('9:00', 7)

    assert_equal "4:00", school.convert_end_time_to_clock_time
  end

  def test_that_another_time_works

    school = School.new('9:00', 4)

    assert_equal "1:00", school.convert_end_time_to_clock_time
  end
end

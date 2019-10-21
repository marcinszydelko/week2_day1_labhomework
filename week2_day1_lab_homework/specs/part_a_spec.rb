require("minitest/autorun")
require("minitest/rg")
require_relative("../part_a.rb")

class TestStudent < MiniTest::Test

  def test_get_name
    student = Student.new("Bob", "E35")
    assert_equal("Bob", student.name)
  end

  def test_get_cohort
    student = Student.new("Bob", "E35")
    assert_equal("E35", student.cohort)
  end

  def test_update_name
    student = Student.new("Bob", "E35")
    student.set_name("Charlie")
    assert_equal("Charlie", student.name)
  end

  def test_update_cohort
    student = Student.new("Bob", "E35")
    student.set_cohort("E34")
    assert_equal("E34", student.cohort)
  end

  def test_talk
    student = Student.new("Bob", "E35")
    assert_equal("I'm not sure", student.talk)
  end

  def test_favourite_language
    student = Student.new("Bob", "E35")
    result = student.say_favourite_language("Ruby")
    assert_equal("I love Ruby", result )
  end

end

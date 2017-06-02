require 'test_helper'

class EducationTest < ActiveSupport::TestCase
  def setup
    @education = Education.new(school: "example school", degree: "example degree",
                               major: "example majore", minor: "example minor",
                               start: Date.parse("1/1/1111"), end: Date.parse("2/2/2222"))
  end

  test "test should be valid" do
    assert @education.valid?
  end

  test "school should be present" do
    @education.school = "       "
    assert_not @education.valid?
  end

  test "degree should be present" do
    @education.degree = "       "
    assert_not @education.valid?
  end

  test "major should be present" do
    @education.major = "       "
    assert_not @education.valid?
  end

  test "minor should be present" do
    @education.minor = "       "
    assert_not @education.valid?
  end

  test "start should be present" do
    @education.start = "       "
    assert_not @education.valid?
  end

  test "end should be present" do
    @education.end = "       "
    assert_not @education.valid?
  end
end

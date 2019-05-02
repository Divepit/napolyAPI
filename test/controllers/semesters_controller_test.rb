require 'test_helper'

class SemestersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @semester = semesters(:one)
  end

  test "should get index" do
    get semesters_url, as: :json
    assert_response :success
  end

  test "should create semester" do
    assert_difference('Semester.count') do
      post semesters_url, params: { semester: { semesterHalf: @semester.semesterHalf, semesterYear: @semester.semesterYear } }, as: :json
    end

    assert_response 201
  end

  test "should show semester" do
    get semester_url(@semester), as: :json
    assert_response :success
  end

  test "should update semester" do
    patch semester_url(@semester), params: { semester: { semesterHalf: @semester.semesterHalf, semesterYear: @semester.semesterYear } }, as: :json
    assert_response 200
  end

  test "should destroy semester" do
    assert_difference('Semester.count', -1) do
      delete semester_url(@semester), as: :json
    end

    assert_response 204
  end
end

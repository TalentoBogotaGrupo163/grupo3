require 'test_helper'

class ProgramsXUniversitiesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @programs_x_university = programs_x_universities(:one)
  end

  test "should get index" do
    get programs_x_universities_url
    assert_response :success
  end

  test "should get new" do
    get new_programs_x_university_url
    assert_response :success
  end

  test "should create programs_x_university" do
    assert_difference('ProgramsXUniversity.count') do
      post programs_x_universities_url, params: { programs_x_university: { Programs_id: @programs_x_university.Programs_id, University_id: @programs_x_university.University_id, description: @programs_x_university.description } }
    end

    assert_redirected_to programs_x_university_url(ProgramsXUniversity.last)
  end

  test "should show programs_x_university" do
    get programs_x_university_url(@programs_x_university)
    assert_response :success
  end

  test "should get edit" do
    get edit_programs_x_university_url(@programs_x_university)
    assert_response :success
  end

  test "should update programs_x_university" do
    patch programs_x_university_url(@programs_x_university), params: { programs_x_university: { Programs_id: @programs_x_university.Programs_id, University_id: @programs_x_university.University_id, description: @programs_x_university.description } }
    assert_redirected_to programs_x_university_url(@programs_x_university)
  end

  test "should destroy programs_x_university" do
    assert_difference('ProgramsXUniversity.count', -1) do
      delete programs_x_university_url(@programs_x_university)
    end

    assert_redirected_to programs_x_universities_url
  end
end

require 'test_helper'

class ProgramXUniversitiesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @program_x_university = program_x_universities(:one)
  end

  test "should get index" do
    get program_x_universities_url
    assert_response :success
  end

  test "should get new" do
    get new_program_x_university_url
    assert_response :success
  end

  test "should create program_x_university" do
    assert_difference('ProgramXUniversity.count') do
      post program_x_universities_url, params: { program_x_university: { code_program_id: @program_x_university.code_program_id, code_university_id: @program_x_university.code_university_id, description: @program_x_university.description } }
    end

    assert_redirected_to program_x_university_url(ProgramXUniversity.last)
  end

  test "should show program_x_university" do
    get program_x_university_url(@program_x_university)
    assert_response :success
  end

  test "should get edit" do
    get edit_program_x_university_url(@program_x_university)
    assert_response :success
  end

  test "should update program_x_university" do
    patch program_x_university_url(@program_x_university), params: { program_x_university: { code_program_id: @program_x_university.code_program_id, code_university_id: @program_x_university.code_university_id, description: @program_x_university.description } }
    assert_redirected_to program_x_university_url(@program_x_university)
  end

  test "should destroy program_x_university" do
    assert_difference('ProgramXUniversity.count', -1) do
      delete program_x_university_url(@program_x_university)
    end

    assert_redirected_to program_x_universities_url
  end
end

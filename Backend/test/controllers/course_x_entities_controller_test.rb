require 'test_helper'

class CourseXEntitiesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @course_x_entity = course_x_entities(:one)
  end

  test "should get index" do
    get course_x_entities_url
    assert_response :success
  end

  test "should get new" do
    get new_course_x_entity_url
    assert_response :success
  end

  test "should create course_x_entity" do
    assert_difference('CourseXEntity.count') do
      post course_x_entities_url, params: { course_x_entity: { code_course_id: @course_x_entity.code_course_id, code_entity_id: @course_x_entity.code_entity_id, description: @course_x_entity.description } }
    end

    assert_redirected_to course_x_entity_url(CourseXEntity.last)
  end

  test "should show course_x_entity" do
    get course_x_entity_url(@course_x_entity)
    assert_response :success
  end

  test "should get edit" do
    get edit_course_x_entity_url(@course_x_entity)
    assert_response :success
  end

  test "should update course_x_entity" do
    patch course_x_entity_url(@course_x_entity), params: { course_x_entity: { code_course_id: @course_x_entity.code_course_id, code_entity_id: @course_x_entity.code_entity_id, description: @course_x_entity.description } }
    assert_redirected_to course_x_entity_url(@course_x_entity)
  end

  test "should destroy course_x_entity" do
    assert_difference('CourseXEntity.count', -1) do
      delete course_x_entity_url(@course_x_entity)
    end

    assert_redirected_to course_x_entities_url
  end
end

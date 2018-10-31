require 'test_helper'

class ActivityXSubjectsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @activity_x_subject = activity_x_subjects(:one)
  end

  test "should get index" do
    get activity_x_subjects_url
    assert_response :success
  end

  test "should get new" do
    get new_activity_x_subject_url
    assert_response :success
  end

  test "should create activity_x_subject" do
    assert_difference('ActivityXSubject.count') do
      post activity_x_subjects_url, params: { activity_x_subject: { activity_id: @activity_x_subject.activity_id, description: @activity_x_subject.description, subject_id: @activity_x_subject.subject_id } }
    end

    assert_redirected_to activity_x_subject_url(ActivityXSubject.last)
  end

  test "should show activity_x_subject" do
    get activity_x_subject_url(@activity_x_subject)
    assert_response :success
  end

  test "should get edit" do
    get edit_activity_x_subject_url(@activity_x_subject)
    assert_response :success
  end

  test "should update activity_x_subject" do
    patch activity_x_subject_url(@activity_x_subject), params: { activity_x_subject: { activity_id: @activity_x_subject.activity_id, description: @activity_x_subject.description, subject_id: @activity_x_subject.subject_id } }
    assert_redirected_to activity_x_subject_url(@activity_x_subject)
  end

  test "should destroy activity_x_subject" do
    assert_difference('ActivityXSubject.count', -1) do
      delete activity_x_subject_url(@activity_x_subject)
    end

    assert_redirected_to activity_x_subjects_url
  end
end

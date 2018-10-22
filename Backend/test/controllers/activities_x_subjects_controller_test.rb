require 'test_helper'

class ActivitiesXSubjectsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @activities_x_subject = activities_x_subjects(:one)
  end

  test "should get index" do
    get activities_x_subjects_url
    assert_response :success
  end

  test "should get new" do
    get new_activities_x_subject_url
    assert_response :success
  end

  test "should create activities_x_subject" do
    assert_difference('ActivitiesXSubject.count') do
      post activities_x_subjects_url, params: { activities_x_subject: { Activities_id: @activities_x_subject.Activities_id, Subjects_id: @activities_x_subject.Subjects_id, description: @activities_x_subject.description } }
    end

    assert_redirected_to activities_x_subject_url(ActivitiesXSubject.last)
  end

  test "should show activities_x_subject" do
    get activities_x_subject_url(@activities_x_subject)
    assert_response :success
  end

  test "should get edit" do
    get edit_activities_x_subject_url(@activities_x_subject)
    assert_response :success
  end

  test "should update activities_x_subject" do
    patch activities_x_subject_url(@activities_x_subject), params: { activities_x_subject: { Activities_id: @activities_x_subject.Activities_id, Subjects_id: @activities_x_subject.Subjects_id, description: @activities_x_subject.description } }
    assert_redirected_to activities_x_subject_url(@activities_x_subject)
  end

  test "should destroy activities_x_subject" do
    assert_difference('ActivitiesXSubject.count', -1) do
      delete activities_x_subject_url(@activities_x_subject)
    end

    assert_redirected_to activities_x_subjects_url
  end
end

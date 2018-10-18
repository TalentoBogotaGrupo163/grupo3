require 'test_helper'

class SubjectXPeopleControllerTest < ActionDispatch::IntegrationTest
  setup do
    @subject_x_person = subject_x_people(:one)
  end

  test "should get index" do
    get subject_x_people_url
    assert_response :success
  end

  test "should get new" do
    get new_subject_x_person_url
    assert_response :success
  end

  test "should create subject_x_person" do
    assert_difference('SubjectXPerson.count') do
      post subject_x_people_url, params: { subject_x_person: { code_person_id: @subject_x_person.code_person_id, code_subject_id: @subject_x_person.code_subject_id, decription: @subject_x_person.decription } }
    end

    assert_redirected_to subject_x_person_url(SubjectXPerson.last)
  end

  test "should show subject_x_person" do
    get subject_x_person_url(@subject_x_person)
    assert_response :success
  end

  test "should get edit" do
    get edit_subject_x_person_url(@subject_x_person)
    assert_response :success
  end

  test "should update subject_x_person" do
    patch subject_x_person_url(@subject_x_person), params: { subject_x_person: { code_person_id: @subject_x_person.code_person_id, code_subject_id: @subject_x_person.code_subject_id, decription: @subject_x_person.decription } }
    assert_redirected_to subject_x_person_url(@subject_x_person)
  end

  test "should destroy subject_x_person" do
    assert_difference('SubjectXPerson.count', -1) do
      delete subject_x_person_url(@subject_x_person)
    end

    assert_redirected_to subject_x_people_url
  end
end

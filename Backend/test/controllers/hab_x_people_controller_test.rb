require 'test_helper'

class HabXPeopleControllerTest < ActionDispatch::IntegrationTest
  setup do
    @hab_x_person = hab_x_people(:one)
  end

  test "should get index" do
    get hab_x_people_url
    assert_response :success
  end

  test "should get new" do
    get new_hab_x_person_url
    assert_response :success
  end

  test "should create hab_x_person" do
    assert_difference('HabXPerson.count') do
      post hab_x_people_url, params: { hab_x_person: { code_hability_id: @hab_x_person.code_hability_id, code_person_id: @hab_x_person.code_person_id, description: @hab_x_person.description } }
    end

    assert_redirected_to hab_x_person_url(HabXPerson.last)
  end

  test "should show hab_x_person" do
    get hab_x_person_url(@hab_x_person)
    assert_response :success
  end

  test "should get edit" do
    get edit_hab_x_person_url(@hab_x_person)
    assert_response :success
  end

  test "should update hab_x_person" do
    patch hab_x_person_url(@hab_x_person), params: { hab_x_person: { code_hability_id: @hab_x_person.code_hability_id, code_person_id: @hab_x_person.code_person_id, description: @hab_x_person.description } }
    assert_redirected_to hab_x_person_url(@hab_x_person)
  end

  test "should destroy hab_x_person" do
    assert_difference('HabXPerson.count', -1) do
      delete hab_x_person_url(@hab_x_person)
    end

    assert_redirected_to hab_x_people_url
  end
end

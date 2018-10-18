require 'test_helper'

class DebXPeopleControllerTest < ActionDispatch::IntegrationTest
  setup do
    @deb_x_person = deb_x_people(:one)
  end

  test "should get index" do
    get deb_x_people_url
    assert_response :success
  end

  test "should get new" do
    get new_deb_x_person_url
    assert_response :success
  end

  test "should create deb_x_person" do
    assert_difference('DebXPerson.count') do
      post deb_x_people_url, params: { deb_x_person: { code_debility_id: @deb_x_person.code_debility_id, code_person_id: @deb_x_person.code_person_id, description: @deb_x_person.description } }
    end

    assert_redirected_to deb_x_person_url(DebXPerson.last)
  end

  test "should show deb_x_person" do
    get deb_x_person_url(@deb_x_person)
    assert_response :success
  end

  test "should get edit" do
    get edit_deb_x_person_url(@deb_x_person)
    assert_response :success
  end

  test "should update deb_x_person" do
    patch deb_x_person_url(@deb_x_person), params: { deb_x_person: { code_debility_id: @deb_x_person.code_debility_id, code_person_id: @deb_x_person.code_person_id, description: @deb_x_person.description } }
    assert_redirected_to deb_x_person_url(@deb_x_person)
  end

  test "should destroy deb_x_person" do
    assert_difference('DebXPerson.count', -1) do
      delete deb_x_person_url(@deb_x_person)
    end

    assert_redirected_to deb_x_people_url
  end
end

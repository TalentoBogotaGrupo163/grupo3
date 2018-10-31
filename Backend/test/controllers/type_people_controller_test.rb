require 'test_helper'

class TypePeopleControllerTest < ActionDispatch::IntegrationTest
  setup do
    @type_person = type_people(:one)
  end

  test "should get index" do
    get type_people_url
    assert_response :success
  end

  test "should get new" do
    get new_type_person_url
    assert_response :success
  end

  test "should create type_person" do
    assert_difference('TypePerson.count') do
      post type_people_url, params: { type_person: { name_type: @type_person.name_type } }
    end

    assert_redirected_to type_person_url(TypePerson.last)
  end

  test "should show type_person" do
    get type_person_url(@type_person)
    assert_response :success
  end

  test "should get edit" do
    get edit_type_person_url(@type_person)
    assert_response :success
  end

  test "should update type_person" do
    patch type_person_url(@type_person), params: { type_person: { name_type: @type_person.name_type } }
    assert_redirected_to type_person_url(@type_person)
  end

  test "should destroy type_person" do
    assert_difference('TypePerson.count', -1) do
      delete type_person_url(@type_person)
    end

    assert_redirected_to type_people_url
  end
end

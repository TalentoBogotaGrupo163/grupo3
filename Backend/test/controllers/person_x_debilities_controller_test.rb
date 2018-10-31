require 'test_helper'

class PersonXDebilitiesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @person_x_debility = person_x_debilities(:one)
  end

  test "should get index" do
    get person_x_debilities_url
    assert_response :success
  end

  test "should get new" do
    get new_person_x_debility_url
    assert_response :success
  end

  test "should create person_x_debility" do
    assert_difference('PersonXDebility.count') do
      post person_x_debilities_url, params: { person_x_debility: { debility_id: @person_x_debility.debility_id, description: @person_x_debility.description, person_id: @person_x_debility.person_id } }
    end

    assert_redirected_to person_x_debility_url(PersonXDebility.last)
  end

  test "should show person_x_debility" do
    get person_x_debility_url(@person_x_debility)
    assert_response :success
  end

  test "should get edit" do
    get edit_person_x_debility_url(@person_x_debility)
    assert_response :success
  end

  test "should update person_x_debility" do
    patch person_x_debility_url(@person_x_debility), params: { person_x_debility: { debility_id: @person_x_debility.debility_id, description: @person_x_debility.description, person_id: @person_x_debility.person_id } }
    assert_redirected_to person_x_debility_url(@person_x_debility)
  end

  test "should destroy person_x_debility" do
    assert_difference('PersonXDebility.count', -1) do
      delete person_x_debility_url(@person_x_debility)
    end

    assert_redirected_to person_x_debilities_url
  end
end

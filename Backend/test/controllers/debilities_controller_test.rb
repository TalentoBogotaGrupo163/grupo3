require 'test_helper'

class DebilitiesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @debility = debilities(:one)
  end

  test "should get index" do
    get debilities_url
    assert_response :success
  end

  test "should get new" do
    get new_debility_url
    assert_response :success
  end

  test "should create debility" do
    assert_difference('Debility.count') do
      post debilities_url, params: { debility: { description_debility: @debility.description_debility, name_debility: @debility.name_debility } }
    end

    assert_redirected_to debility_url(Debility.last)
  end

  test "should show debility" do
    get debility_url(@debility)
    assert_response :success
  end

  test "should get edit" do
    get edit_debility_url(@debility)
    assert_response :success
  end

  test "should update debility" do
    patch debility_url(@debility), params: { debility: { description_debility: @debility.description_debility, name_debility: @debility.name_debility } }
    assert_redirected_to debility_url(@debility)
  end

  test "should destroy debility" do
    assert_difference('Debility.count', -1) do
      delete debility_url(@debility)
    end

    assert_redirected_to debilities_url
  end
end

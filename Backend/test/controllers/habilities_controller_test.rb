require 'test_helper'

class HabilitiesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @hability = habilities(:one)
  end

  test "should get index" do
    get habilities_url
    assert_response :success
  end

  test "should get new" do
    get new_hability_url
    assert_response :success
  end

  test "should create hability" do
    assert_difference('Hability.count') do
      post habilities_url, params: { hability: { description_hability: @hability.description_hability, name_hability: @hability.name_hability } }
    end

    assert_redirected_to hability_url(Hability.last)
  end

  test "should show hability" do
    get hability_url(@hability)
    assert_response :success
  end

  test "should get edit" do
    get edit_hability_url(@hability)
    assert_response :success
  end

  test "should update hability" do
    patch hability_url(@hability), params: { hability: { description_hability: @hability.description_hability, name_hability: @hability.name_hability } }
    assert_redirected_to hability_url(@hability)
  end

  test "should destroy hability" do
    assert_difference('Hability.count', -1) do
      delete hability_url(@hability)
    end

    assert_redirected_to habilities_url
  end
end

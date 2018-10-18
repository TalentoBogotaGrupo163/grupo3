require 'test_helper'

class UniversityXCitiesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @university_x_city = university_x_cities(:one)
  end

  test "should get index" do
    get university_x_cities_url
    assert_response :success
  end

  test "should get new" do
    get new_university_x_city_url
    assert_response :success
  end

  test "should create university_x_city" do
    assert_difference('UniversityXCity.count') do
      post university_x_cities_url, params: { university_x_city: { code_city_id: @university_x_city.code_city_id, code_university_id: @university_x_city.code_university_id, description: @university_x_city.description } }
    end

    assert_redirected_to university_x_city_url(UniversityXCity.last)
  end

  test "should show university_x_city" do
    get university_x_city_url(@university_x_city)
    assert_response :success
  end

  test "should get edit" do
    get edit_university_x_city_url(@university_x_city)
    assert_response :success
  end

  test "should update university_x_city" do
    patch university_x_city_url(@university_x_city), params: { university_x_city: { code_city_id: @university_x_city.code_city_id, code_university_id: @university_x_city.code_university_id, description: @university_x_city.description } }
    assert_redirected_to university_x_city_url(@university_x_city)
  end

  test "should destroy university_x_city" do
    assert_difference('UniversityXCity.count', -1) do
      delete university_x_city_url(@university_x_city)
    end

    assert_redirected_to university_x_cities_url
  end
end

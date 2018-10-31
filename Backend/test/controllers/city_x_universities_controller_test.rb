require 'test_helper'

class CityXUniversitiesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @city_x_university = city_x_universities(:one)
  end

  test "should get index" do
    get city_x_universities_url
    assert_response :success
  end

  test "should get new" do
    get new_city_x_university_url
    assert_response :success
  end

  test "should create city_x_university" do
    assert_difference('CityXUniversity.count') do
      post city_x_universities_url, params: { city_x_university: { city_id: @city_x_university.city_id, description: @city_x_university.description, universities_id: @city_x_university.universities_id } }
    end

    assert_redirected_to city_x_university_url(CityXUniversity.last)
  end

  test "should show city_x_university" do
    get city_x_university_url(@city_x_university)
    assert_response :success
  end

  test "should get edit" do
    get edit_city_x_university_url(@city_x_university)
    assert_response :success
  end

  test "should update city_x_university" do
    patch city_x_university_url(@city_x_university), params: { city_x_university: { city_id: @city_x_university.city_id, description: @city_x_university.description, universities_id: @city_x_university.universities_id } }
    assert_redirected_to city_x_university_url(@city_x_university)
  end

  test "should destroy city_x_university" do
    assert_difference('CityXUniversity.count', -1) do
      delete city_x_university_url(@city_x_university)
    end

    assert_redirected_to city_x_universities_url
  end
end

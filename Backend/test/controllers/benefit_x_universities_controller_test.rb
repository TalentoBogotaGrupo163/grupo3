require 'test_helper'

class BenefitXUniversitiesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @benefit_x_university = benefit_x_universities(:one)
  end

  test "should get index" do
    get benefit_x_universities_url
    assert_response :success
  end

  test "should get new" do
    get new_benefit_x_university_url
    assert_response :success
  end

  test "should create benefit_x_university" do
    assert_difference('BenefitXUniversity.count') do
      post benefit_x_universities_url, params: { benefit_x_university: { benefit_id: @benefit_x_university.benefit_id, description: @benefit_x_university.description, universities_id: @benefit_x_university.universities_id } }
    end

    assert_redirected_to benefit_x_university_url(BenefitXUniversity.last)
  end

  test "should show benefit_x_university" do
    get benefit_x_university_url(@benefit_x_university)
    assert_response :success
  end

  test "should get edit" do
    get edit_benefit_x_university_url(@benefit_x_university)
    assert_response :success
  end

  test "should update benefit_x_university" do
    patch benefit_x_university_url(@benefit_x_university), params: { benefit_x_university: { benefit_id: @benefit_x_university.benefit_id, description: @benefit_x_university.description, universities_id: @benefit_x_university.universities_id } }
    assert_redirected_to benefit_x_university_url(@benefit_x_university)
  end

  test "should destroy benefit_x_university" do
    assert_difference('BenefitXUniversity.count', -1) do
      delete benefit_x_university_url(@benefit_x_university)
    end

    assert_redirected_to benefit_x_universities_url
  end
end

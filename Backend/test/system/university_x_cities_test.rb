require "application_system_test_case"

class UniversityXCitiesTest < ApplicationSystemTestCase
  setup do
    @university_x_city = university_x_cities(:one)
  end

  test "visiting the index" do
    visit university_x_cities_url
    assert_selector "h1", text: "University X Cities"
  end

  test "creating a University x city" do
    visit university_x_cities_url
    click_on "New University X City"

    fill_in "City", with: @university_x_city.city_id
    fill_in "University", with: @university_x_city.university_id
    click_on "Create University x city"

    assert_text "University x city was successfully created"
    click_on "Back"
  end

  test "updating a University x city" do
    visit university_x_cities_url
    click_on "Edit", match: :first

    fill_in "City", with: @university_x_city.city_id
    fill_in "University", with: @university_x_city.university_id
    click_on "Update University x city"

    assert_text "University x city was successfully updated"
    click_on "Back"
  end

  test "destroying a University x city" do
    visit university_x_cities_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "University x city was successfully destroyed"
  end
end

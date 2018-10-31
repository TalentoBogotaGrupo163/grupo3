require "application_system_test_case"

class CityXUniversitiesTest < ApplicationSystemTestCase
  setup do
    @city_x_university = city_x_universities(:one)
  end

  test "visiting the index" do
    visit city_x_universities_url
    assert_selector "h1", text: "City X Universities"
  end

  test "creating a City x university" do
    visit city_x_universities_url
    click_on "New City X University"

    fill_in "City", with: @city_x_university.city_id
    fill_in "Description", with: @city_x_university.description
    fill_in "Universities", with: @city_x_university.universities_id
    click_on "Create City x university"

    assert_text "City x university was successfully created"
    click_on "Back"
  end

  test "updating a City x university" do
    visit city_x_universities_url
    click_on "Edit", match: :first

    fill_in "City", with: @city_x_university.city_id
    fill_in "Description", with: @city_x_university.description
    fill_in "Universities", with: @city_x_university.universities_id
    click_on "Update City x university"

    assert_text "City x university was successfully updated"
    click_on "Back"
  end

  test "destroying a City x university" do
    visit city_x_universities_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "City x university was successfully destroyed"
  end
end

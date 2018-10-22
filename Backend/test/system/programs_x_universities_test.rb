require "application_system_test_case"

class ProgramsXUniversitiesTest < ApplicationSystemTestCase
  setup do
    @programs_x_university = programs_x_universities(:one)
  end

  test "visiting the index" do
    visit programs_x_universities_url
    assert_selector "h1", text: "Programs X Universities"
  end

  test "creating a Programs x university" do
    visit programs_x_universities_url
    click_on "New Programs X University"

    fill_in "Programs", with: @programs_x_university.Programs_id
    fill_in "University", with: @programs_x_university.University_id
    fill_in "Description", with: @programs_x_university.description
    click_on "Create Programs x university"

    assert_text "Programs x university was successfully created"
    click_on "Back"
  end

  test "updating a Programs x university" do
    visit programs_x_universities_url
    click_on "Edit", match: :first

    fill_in "Programs", with: @programs_x_university.Programs_id
    fill_in "University", with: @programs_x_university.University_id
    fill_in "Description", with: @programs_x_university.description
    click_on "Update Programs x university"

    assert_text "Programs x university was successfully updated"
    click_on "Back"
  end

  test "destroying a Programs x university" do
    visit programs_x_universities_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Programs x university was successfully destroyed"
  end
end

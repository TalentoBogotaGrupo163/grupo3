require "application_system_test_case"

class BenefitXUniversitiesTest < ApplicationSystemTestCase
  setup do
    @benefit_x_university = benefit_x_universities(:one)
  end

  test "visiting the index" do
    visit benefit_x_universities_url
    assert_selector "h1", text: "Benefit X Universities"
  end

  test "creating a Benefit x university" do
    visit benefit_x_universities_url
    click_on "New Benefit X University"

    fill_in "Benefit", with: @benefit_x_university.benefit_id
    fill_in "Description", with: @benefit_x_university.description
    fill_in "University", with: @benefit_x_university.university_id
    click_on "Create Benefit x university"

    assert_text "Benefit x university was successfully created"
    click_on "Back"
  end

  test "updating a Benefit x university" do
    visit benefit_x_universities_url
    click_on "Edit", match: :first

    fill_in "Benefit", with: @benefit_x_university.benefit_id
    fill_in "Description", with: @benefit_x_university.description
    fill_in "University", with: @benefit_x_university.university_id
    click_on "Update Benefit x university"

    assert_text "Benefit x university was successfully updated"
    click_on "Back"
  end

  test "destroying a Benefit x university" do
    visit benefit_x_universities_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Benefit x university was successfully destroyed"
  end
end

require "application_system_test_case"

class ProgramXUniversitiesTest < ApplicationSystemTestCase
  setup do
    @program_x_university = program_x_universities(:one)
  end

  test "visiting the index" do
    visit program_x_universities_url
    assert_selector "h1", text: "Program X Universities"
  end

  test "creating a Program x university" do
    visit program_x_universities_url
    click_on "New Program X University"

    fill_in "Code Program", with: @program_x_university.code_program_id
    fill_in "Code University", with: @program_x_university.code_university_id
    fill_in "Description", with: @program_x_university.description
    click_on "Create Program x university"

    assert_text "Program x university was successfully created"
    click_on "Back"
  end

  test "updating a Program x university" do
    visit program_x_universities_url
    click_on "Edit", match: :first

    fill_in "Code Program", with: @program_x_university.code_program_id
    fill_in "Code University", with: @program_x_university.code_university_id
    fill_in "Description", with: @program_x_university.description
    click_on "Update Program x university"

    assert_text "Program x university was successfully updated"
    click_on "Back"
  end

  test "destroying a Program x university" do
    visit program_x_universities_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Program x university was successfully destroyed"
  end
end

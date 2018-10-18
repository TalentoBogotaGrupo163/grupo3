require "application_system_test_case"

class SchoolsTest < ApplicationSystemTestCase
  setup do
    @school = schools(:one)
  end

  test "visiting the index" do
    visit schools_url
    assert_selector "h1", text: "Schools"
  end

  test "creating a School" do
    visit schools_url
    click_on "New School"

    fill_in "Address School", with: @school.address_school
    fill_in "Code City", with: @school.code_city_id
    fill_in "Code School", with: @school.code_school
    fill_in "Code Type", with: @school.code_type_id
    fill_in "Email School", with: @school.email_school
    fill_in "Name School", with: @school.name_school
    fill_in "Password School", with: @school.password_school
    fill_in "Phone School", with: @school.phone_school
    click_on "Create School"

    assert_text "School was successfully created"
    click_on "Back"
  end

  test "updating a School" do
    visit schools_url
    click_on "Edit", match: :first

    fill_in "Address School", with: @school.address_school
    fill_in "Code City", with: @school.code_city_id
    fill_in "Code School", with: @school.code_school
    fill_in "Code Type", with: @school.code_type_id
    fill_in "Email School", with: @school.email_school
    fill_in "Name School", with: @school.name_school
    fill_in "Password School", with: @school.password_school
    fill_in "Phone School", with: @school.phone_school
    click_on "Update School"

    assert_text "School was successfully updated"
    click_on "Back"
  end

  test "destroying a School" do
    visit schools_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "School was successfully destroyed"
  end
end

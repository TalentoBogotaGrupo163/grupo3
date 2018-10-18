require "application_system_test_case"

class SubjectXPeopleTest < ApplicationSystemTestCase
  setup do
    @subject_x_person = subject_x_people(:one)
  end

  test "visiting the index" do
    visit subject_x_people_url
    assert_selector "h1", text: "Subject X People"
  end

  test "creating a Subject x person" do
    visit subject_x_people_url
    click_on "New Subject X Person"

    fill_in "Code Person", with: @subject_x_person.code_person_id
    fill_in "Code Subject", with: @subject_x_person.code_subject_id
    fill_in "Decription", with: @subject_x_person.decription
    click_on "Create Subject x person"

    assert_text "Subject x person was successfully created"
    click_on "Back"
  end

  test "updating a Subject x person" do
    visit subject_x_people_url
    click_on "Edit", match: :first

    fill_in "Code Person", with: @subject_x_person.code_person_id
    fill_in "Code Subject", with: @subject_x_person.code_subject_id
    fill_in "Decription", with: @subject_x_person.decription
    click_on "Update Subject x person"

    assert_text "Subject x person was successfully updated"
    click_on "Back"
  end

  test "destroying a Subject x person" do
    visit subject_x_people_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Subject x person was successfully destroyed"
  end
end

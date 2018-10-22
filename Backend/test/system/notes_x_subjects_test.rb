require "application_system_test_case"

class NotesXSubjectsTest < ApplicationSystemTestCase
  setup do
    @notes_x_subject = notes_x_subjects(:one)
  end

  test "visiting the index" do
    visit notes_x_subjects_url
    assert_selector "h1", text: "Notes X Subjects"
  end

  test "creating a Notes x subject" do
    visit notes_x_subjects_url
    click_on "New Notes X Subject"

    fill_in "Notes", with: @notes_x_subject.Notes_id
    fill_in "Subjects", with: @notes_x_subject.Subjects_id
    fill_in "Description", with: @notes_x_subject.description
    click_on "Create Notes x subject"

    assert_text "Notes x subject was successfully created"
    click_on "Back"
  end

  test "updating a Notes x subject" do
    visit notes_x_subjects_url
    click_on "Edit", match: :first

    fill_in "Notes", with: @notes_x_subject.Notes_id
    fill_in "Subjects", with: @notes_x_subject.Subjects_id
    fill_in "Description", with: @notes_x_subject.description
    click_on "Update Notes x subject"

    assert_text "Notes x subject was successfully updated"
    click_on "Back"
  end

  test "destroying a Notes x subject" do
    visit notes_x_subjects_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Notes x subject was successfully destroyed"
  end
end

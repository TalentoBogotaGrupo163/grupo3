require "application_system_test_case"

class NoteXSubjectsTest < ApplicationSystemTestCase
  setup do
    @note_x_subject = note_x_subjects(:one)
  end

  test "visiting the index" do
    visit note_x_subjects_url
    assert_selector "h1", text: "Note X Subjects"
  end

  test "creating a Note x subject" do
    visit note_x_subjects_url
    click_on "New Note X Subject"

    fill_in "Description", with: @note_x_subject.description
    fill_in "Note", with: @note_x_subject.note_id
    fill_in "Subject", with: @note_x_subject.subject_id
    click_on "Create Note x subject"

    assert_text "Note x subject was successfully created"
    click_on "Back"
  end

  test "updating a Note x subject" do
    visit note_x_subjects_url
    click_on "Edit", match: :first

    fill_in "Description", with: @note_x_subject.description
    fill_in "Note", with: @note_x_subject.note_id
    fill_in "Subject", with: @note_x_subject.subject_id
    click_on "Update Note x subject"

    assert_text "Note x subject was successfully updated"
    click_on "Back"
  end

  test "destroying a Note x subject" do
    visit note_x_subjects_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Note x subject was successfully destroyed"
  end
end

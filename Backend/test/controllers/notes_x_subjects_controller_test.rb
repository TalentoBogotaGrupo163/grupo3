require 'test_helper'

class NotesXSubjectsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @notes_x_subject = notes_x_subjects(:one)
  end

  test "should get index" do
    get notes_x_subjects_url
    assert_response :success
  end

  test "should get new" do
    get new_notes_x_subject_url
    assert_response :success
  end

  test "should create notes_x_subject" do
    assert_difference('NotesXSubject.count') do
      post notes_x_subjects_url, params: { notes_x_subject: { code_note_id: @notes_x_subject.code_note_id, code_subject_id: @notes_x_subject.code_subject_id, description: @notes_x_subject.description } }
    end

    assert_redirected_to notes_x_subject_url(NotesXSubject.last)
  end

  test "should show notes_x_subject" do
    get notes_x_subject_url(@notes_x_subject)
    assert_response :success
  end

  test "should get edit" do
    get edit_notes_x_subject_url(@notes_x_subject)
    assert_response :success
  end

  test "should update notes_x_subject" do
    patch notes_x_subject_url(@notes_x_subject), params: { notes_x_subject: { code_note_id: @notes_x_subject.code_note_id, code_subject_id: @notes_x_subject.code_subject_id, description: @notes_x_subject.description } }
    assert_redirected_to notes_x_subject_url(@notes_x_subject)
  end

  test "should destroy notes_x_subject" do
    assert_difference('NotesXSubject.count', -1) do
      delete notes_x_subject_url(@notes_x_subject)
    end

    assert_redirected_to notes_x_subjects_url
  end
end

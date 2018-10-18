class NotesXSubjectsController < ApplicationController
  before_action :set_notes_x_subject, only: [:show, :edit, :update, :destroy]

  # GET /notes_x_subjects
  # GET /notes_x_subjects.json
  def index
    @notes_x_subjects = NotesXSubject.all
  end

  # GET /notes_x_subjects/1
  # GET /notes_x_subjects/1.json
  def show
  end

  # GET /notes_x_subjects/new
  def new
    @notes_x_subject = NotesXSubject.new
  end

  # GET /notes_x_subjects/1/edit
  def edit
  end

  # POST /notes_x_subjects
  # POST /notes_x_subjects.json
  def create
    @notes_x_subject = NotesXSubject.new(notes_x_subject_params)

    respond_to do |format|
      if @notes_x_subject.save
        format.html { redirect_to @notes_x_subject, notice: 'Notes x subject was successfully created.' }
        format.json { render :show, status: :created, location: @notes_x_subject }
      else
        format.html { render :new }
        format.json { render json: @notes_x_subject.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /notes_x_subjects/1
  # PATCH/PUT /notes_x_subjects/1.json
  def update
    respond_to do |format|
      if @notes_x_subject.update(notes_x_subject_params)
        format.html { redirect_to @notes_x_subject, notice: 'Notes x subject was successfully updated.' }
        format.json { render :show, status: :ok, location: @notes_x_subject }
      else
        format.html { render :edit }
        format.json { render json: @notes_x_subject.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /notes_x_subjects/1
  # DELETE /notes_x_subjects/1.json
  def destroy
    @notes_x_subject.destroy
    respond_to do |format|
      format.html { redirect_to notes_x_subjects_url, notice: 'Notes x subject was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_notes_x_subject
      @notes_x_subject = NotesXSubject.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def notes_x_subject_params
      params.require(:notes_x_subject).permit(:code_note_id, :code_subject_id, :description)
    end
end

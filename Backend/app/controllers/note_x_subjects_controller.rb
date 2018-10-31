class NoteXSubjectsController < ApplicationController
  before_action :set_note_x_subject, only: [:show, :edit, :update, :destroy]

  # GET /note_x_subjects
  # GET /note_x_subjects.json
  def index
    @note_x_subjects = NoteXSubject.all
  end

  # GET /note_x_subjects/1
  # GET /note_x_subjects/1.json
  def show
  end

  # GET /note_x_subjects/new
  def new
    @note_x_subject = NoteXSubject.new
  end

  # GET /note_x_subjects/1/edit
  def edit
  end

  # POST /note_x_subjects
  # POST /note_x_subjects.json
  def create
    @note_x_subject = NoteXSubject.new(note_x_subject_params)

    respond_to do |format|
      if @note_x_subject.save
        format.html { redirect_to @note_x_subject, notice: 'Note x subject was successfully created.' }
        format.json { render :show, status: :created, location: @note_x_subject }
      else
        format.html { render :new }
        format.json { render json: @note_x_subject.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /note_x_subjects/1
  # PATCH/PUT /note_x_subjects/1.json
  def update
    respond_to do |format|
      if @note_x_subject.update(note_x_subject_params)
        format.html { redirect_to @note_x_subject, notice: 'Note x subject was successfully updated.' }
        format.json { render :show, status: :ok, location: @note_x_subject }
      else
        format.html { render :edit }
        format.json { render json: @note_x_subject.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /note_x_subjects/1
  # DELETE /note_x_subjects/1.json
  def destroy
    @note_x_subject.destroy
    respond_to do |format|
      format.html { redirect_to note_x_subjects_url, notice: 'Note x subject was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_note_x_subject
      @note_x_subject = NoteXSubject.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def note_x_subject_params
      params.require(:note_x_subject).permit(:subject_id, :note_id, :description)
    end
end

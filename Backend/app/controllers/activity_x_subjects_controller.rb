class ActivityXSubjectsController < ApplicationController
  before_action :set_activity_x_subject, only: [:show, :edit, :update, :destroy]

  # GET /activity_x_subjects
  # GET /activity_x_subjects.json
  def index
    @activity_x_subjects = ActivityXSubject.all
  end

  # GET /activity_x_subjects/1
  # GET /activity_x_subjects/1.json
  def show
  end

  # GET /activity_x_subjects/new
  def new
    @activity_x_subject = ActivityXSubject.new
  end

  # GET /activity_x_subjects/1/edit
  def edit
  end

  # POST /activity_x_subjects
  # POST /activity_x_subjects.json
  def create
    @activity_x_subject = ActivityXSubject.new(activity_x_subject_params)

    respond_to do |format|
      if @activity_x_subject.save
        format.html { redirect_to @activity_x_subject, notice: 'Activity x subject was successfully created.' }
        format.json { render :show, status: :created, location: @activity_x_subject }
      else
        format.html { render :new }
        format.json { render json: @activity_x_subject.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /activity_x_subjects/1
  # PATCH/PUT /activity_x_subjects/1.json
  def update
    respond_to do |format|
      if @activity_x_subject.update(activity_x_subject_params)
        format.html { redirect_to @activity_x_subject, notice: 'Activity x subject was successfully updated.' }
        format.json { render :show, status: :ok, location: @activity_x_subject }
      else
        format.html { render :edit }
        format.json { render json: @activity_x_subject.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /activity_x_subjects/1
  # DELETE /activity_x_subjects/1.json
  def destroy
    @activity_x_subject.destroy
    respond_to do |format|
      format.html { redirect_to activity_x_subjects_url, notice: 'Activity x subject was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_activity_x_subject
      @activity_x_subject = ActivityXSubject.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def activity_x_subject_params
      params.require(:activity_x_subject).permit(:subject_id, :activity_id, :description)
    end
end

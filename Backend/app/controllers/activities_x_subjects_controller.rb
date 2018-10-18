class ActivitiesXSubjectsController < ApplicationController
  before_action :set_activities_x_subject, only: [:show, :edit, :update, :destroy]

  # GET /activities_x_subjects
  # GET /activities_x_subjects.json
  def index
    @activities_x_subjects = ActivitiesXSubject.all
  end

  # GET /activities_x_subjects/1
  # GET /activities_x_subjects/1.json
  def show
  end

  # GET /activities_x_subjects/new
  def new
    @activities_x_subject = ActivitiesXSubject.new
  end

  # GET /activities_x_subjects/1/edit
  def edit
  end

  # POST /activities_x_subjects
  # POST /activities_x_subjects.json
  def create
    @activities_x_subject = ActivitiesXSubject.new(activities_x_subject_params)

    respond_to do |format|
      if @activities_x_subject.save
        format.html { redirect_to @activities_x_subject, notice: 'Activities x subject was successfully created.' }
        format.json { render :show, status: :created, location: @activities_x_subject }
      else
        format.html { render :new }
        format.json { render json: @activities_x_subject.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /activities_x_subjects/1
  # PATCH/PUT /activities_x_subjects/1.json
  def update
    respond_to do |format|
      if @activities_x_subject.update(activities_x_subject_params)
        format.html { redirect_to @activities_x_subject, notice: 'Activities x subject was successfully updated.' }
        format.json { render :show, status: :ok, location: @activities_x_subject }
      else
        format.html { render :edit }
        format.json { render json: @activities_x_subject.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /activities_x_subjects/1
  # DELETE /activities_x_subjects/1.json
  def destroy
    @activities_x_subject.destroy
    respond_to do |format|
      format.html { redirect_to activities_x_subjects_url, notice: 'Activities x subject was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_activities_x_subject
      @activities_x_subject = ActivitiesXSubject.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def activities_x_subject_params
      params.require(:activities_x_subject).permit(:code_subject_id, :code_activity_id, :description)
    end
end

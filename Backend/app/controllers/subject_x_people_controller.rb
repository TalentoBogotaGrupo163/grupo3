class SubjectXPeopleController < ApplicationController
  before_action :set_subject_x_person, only: [:show, :edit, :update, :destroy]

  # GET /subject_x_people
  # GET /subject_x_people.json
  def index
    @subject_x_people = SubjectXPerson.all
  end

  # GET /subject_x_people/1
  # GET /subject_x_people/1.json
  def show
  end

  # GET /subject_x_people/new
  def new
    @subject_x_person = SubjectXPerson.new
  end

  # GET /subject_x_people/1/edit
  def edit
  end

  # POST /subject_x_people
  # POST /subject_x_people.json
  def create
    @subject_x_person = SubjectXPerson.new(subject_x_person_params)

    respond_to do |format|
      if @subject_x_person.save
        format.html { redirect_to @subject_x_person, notice: 'Subject x person was successfully created.' }
        format.json { render :show, status: :created, location: @subject_x_person }
      else
        format.html { render :new }
        format.json { render json: @subject_x_person.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /subject_x_people/1
  # PATCH/PUT /subject_x_people/1.json
  def update
    respond_to do |format|
      if @subject_x_person.update(subject_x_person_params)
        format.html { redirect_to @subject_x_person, notice: 'Subject x person was successfully updated.' }
        format.json { render :show, status: :ok, location: @subject_x_person }
      else
        format.html { render :edit }
        format.json { render json: @subject_x_person.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /subject_x_people/1
  # DELETE /subject_x_people/1.json
  def destroy
    @subject_x_person.destroy
    respond_to do |format|
      format.html { redirect_to subject_x_people_url, notice: 'Subject x person was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_subject_x_person
      @subject_x_person = SubjectXPerson.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def subject_x_person_params
      params.require(:subject_x_person).permit(:people_id, :subject_id, :description)
    end
end

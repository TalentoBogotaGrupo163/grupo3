class HabilityXPeopleController < ApplicationController
  before_action :set_hability_x_person, only: [:show, :edit, :update, :destroy]

  # GET /hability_x_people
  # GET /hability_x_people.json
  def index
    @hability_x_people = HabilityXPerson.all
  end

  # GET /hability_x_people/1
  # GET /hability_x_people/1.json
  def show
  end

  # GET /hability_x_people/new
  def new
    @hability_x_person = HabilityXPerson.new
  end

  # GET /hability_x_people/1/edit
  def edit
  end

  # POST /hability_x_people
  # POST /hability_x_people.json
  def create
    @hability_x_person = HabilityXPerson.new(hability_x_person_params)

    respond_to do |format|
      if @hability_x_person.save
        format.html { redirect_to @hability_x_person, notice: 'Hability x person was successfully created.' }
        format.json { render :show, status: :created, location: @hability_x_person }
      else
        format.html { render :new }
        format.json { render json: @hability_x_person.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /hability_x_people/1
  # PATCH/PUT /hability_x_people/1.json
  def update
    respond_to do |format|
      if @hability_x_person.update(hability_x_person_params)
        format.html { redirect_to @hability_x_person, notice: 'Hability x person was successfully updated.' }
        format.json { render :show, status: :ok, location: @hability_x_person }
      else
        format.html { render :edit }
        format.json { render json: @hability_x_person.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /hability_x_people/1
  # DELETE /hability_x_people/1.json
  def destroy
    @hability_x_person.destroy
    respond_to do |format|
      format.html { redirect_to hability_x_people_url, notice: 'Hability x person was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_hability_x_person
      @hability_x_person = HabilityXPerson.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def hability_x_person_params
      params.require(:hability_x_person).permit(:hability_id, :people_id, :description)
    end
end

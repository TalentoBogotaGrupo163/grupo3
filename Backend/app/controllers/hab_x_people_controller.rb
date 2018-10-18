class HabXPeopleController < ApplicationController
  before_action :set_hab_x_person, only: [:show, :edit, :update, :destroy]

  # GET /hab_x_people
  # GET /hab_x_people.json
  def index
    @hab_x_people = HabXPerson.all
  end

  # GET /hab_x_people/1
  # GET /hab_x_people/1.json
  def show
  end

  # GET /hab_x_people/new
  def new
    @hab_x_person = HabXPerson.new
  end

  # GET /hab_x_people/1/edit
  def edit
  end

  # POST /hab_x_people
  # POST /hab_x_people.json
  def create
    @hab_x_person = HabXPerson.new(hab_x_person_params)

    respond_to do |format|
      if @hab_x_person.save
        format.html { redirect_to @hab_x_person, notice: 'Hab x person was successfully created.' }
        format.json { render :show, status: :created, location: @hab_x_person }
      else
        format.html { render :new }
        format.json { render json: @hab_x_person.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /hab_x_people/1
  # PATCH/PUT /hab_x_people/1.json
  def update
    respond_to do |format|
      if @hab_x_person.update(hab_x_person_params)
        format.html { redirect_to @hab_x_person, notice: 'Hab x person was successfully updated.' }
        format.json { render :show, status: :ok, location: @hab_x_person }
      else
        format.html { render :edit }
        format.json { render json: @hab_x_person.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /hab_x_people/1
  # DELETE /hab_x_people/1.json
  def destroy
    @hab_x_person.destroy
    respond_to do |format|
      format.html { redirect_to hab_x_people_url, notice: 'Hab x person was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_hab_x_person
      @hab_x_person = HabXPerson.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def hab_x_person_params
      params.require(:hab_x_person).permit(:code_hability_id, :code_person_id, :description)
    end
end

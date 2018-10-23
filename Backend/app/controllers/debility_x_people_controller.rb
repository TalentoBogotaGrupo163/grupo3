class DebilityXPeopleController < ApplicationController
  before_action :set_debility_x_person, only: [:show, :edit, :update, :destroy]

  # GET /debility_x_people
  # GET /debility_x_people.json
  def index
    @debility_x_people = DebilityXPerson.all
  end

  # GET /debility_x_people/1
  # GET /debility_x_people/1.json
  def show
  end

  # GET /debility_x_people/new
  def new
    @debility_x_person = DebilityXPerson.new
  end

  # GET /debility_x_people/1/edit
  def edit
  end

  # POST /debility_x_people
  # POST /debility_x_people.json
  def create
    @debility_x_person = DebilityXPerson.new(debility_x_person_params)

    respond_to do |format|
      if @debility_x_person.save
        format.html { redirect_to @debility_x_person, notice: 'Debility x person was successfully created.' }
        format.json { render :show, status: :created, location: @debility_x_person }
      else
        format.html { render :new }
        format.json { render json: @debility_x_person.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /debility_x_people/1
  # PATCH/PUT /debility_x_people/1.json
  def update
    respond_to do |format|
      if @debility_x_person.update(debility_x_person_params)
        format.html { redirect_to @debility_x_person, notice: 'Debility x person was successfully updated.' }
        format.json { render :show, status: :ok, location: @debility_x_person }
      else
        format.html { render :edit }
        format.json { render json: @debility_x_person.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /debility_x_people/1
  # DELETE /debility_x_people/1.json
  def destroy
    @debility_x_person.destroy
    respond_to do |format|
      format.html { redirect_to debility_x_people_url, notice: 'Debility x person was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_debility_x_person
      @debility_x_person = DebilityXPerson.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def debility_x_person_params
      params.require(:debility_x_person).permit(:people_id, :debility_id, :description)
    end
end

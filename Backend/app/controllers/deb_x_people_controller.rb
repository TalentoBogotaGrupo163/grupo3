class DebXPeopleController < ApplicationController
  before_action :set_deb_x_person, only: [:show, :edit, :update, :destroy]

  # GET /deb_x_people
  # GET /deb_x_people.json
  def index
    @deb_x_people = DebXPerson.all
  end

  # GET /deb_x_people/1
  # GET /deb_x_people/1.json
  def show
  end

  # GET /deb_x_people/new
  def new
    @deb_x_person = DebXPerson.new
  end

  # GET /deb_x_people/1/edit
  def edit
  end

  # POST /deb_x_people
  # POST /deb_x_people.json
  def create
    @deb_x_person = DebXPerson.new(deb_x_person_params)

    respond_to do |format|
      if @deb_x_person.save
        format.html { redirect_to @deb_x_person, notice: 'Deb x person was successfully created.' }
        format.json { render :show, status: :created, location: @deb_x_person }
      else
        format.html { render :new }
        format.json { render json: @deb_x_person.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /deb_x_people/1
  # PATCH/PUT /deb_x_people/1.json
  def update
    respond_to do |format|
      if @deb_x_person.update(deb_x_person_params)
        format.html { redirect_to @deb_x_person, notice: 'Deb x person was successfully updated.' }
        format.json { render :show, status: :ok, location: @deb_x_person }
      else
        format.html { render :edit }
        format.json { render json: @deb_x_person.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /deb_x_people/1
  # DELETE /deb_x_people/1.json
  def destroy
    @deb_x_person.destroy
    respond_to do |format|
      format.html { redirect_to deb_x_people_url, notice: 'Deb x person was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_deb_x_person
      @deb_x_person = DebXPerson.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def deb_x_person_params
      params.require(:deb_x_person).permit(:code_debility_id, :code_person_id, :description)
    end
end

class PersonXDebilitiesController < ApplicationController
  before_action :set_person_x_debility, only: [:show, :edit, :update, :destroy]

  # GET /person_x_debilities
  # GET /person_x_debilities.json
  def index
    @person_x_debilities = PersonXDebility.all
  end

  # GET /person_x_debilities/1
  # GET /person_x_debilities/1.json
  def show
  end

  # GET /person_x_debilities/new
  def new
    @person_x_debility = PersonXDebility.new
  end

  # GET /person_x_debilities/1/edit
  def edit
  end

  # POST /person_x_debilities
  # POST /person_x_debilities.json
  def create
    @person_x_debility = PersonXDebility.new(person_x_debility_params)

    respond_to do |format|
      if @person_x_debility.save
        format.html { redirect_to @person_x_debility, notice: 'Person x debility was successfully created.' }
        format.json { render :show, status: :created, location: @person_x_debility }
      else
        format.html { render :new }
        format.json { render json: @person_x_debility.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /person_x_debilities/1
  # PATCH/PUT /person_x_debilities/1.json
  def update
    respond_to do |format|
      if @person_x_debility.update(person_x_debility_params)
        format.html { redirect_to @person_x_debility, notice: 'Person x debility was successfully updated.' }
        format.json { render :show, status: :ok, location: @person_x_debility }
      else
        format.html { render :edit }
        format.json { render json: @person_x_debility.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /person_x_debilities/1
  # DELETE /person_x_debilities/1.json
  def destroy
    @person_x_debility.destroy
    respond_to do |format|
      format.html { redirect_to person_x_debilities_url, notice: 'Person x debility was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_person_x_debility
      @person_x_debility = PersonXDebility.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def person_x_debility_params
      params.require(:person_x_debility).permit(:debility_id, :person_id, :description)
    end
end

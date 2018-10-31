class PersonXHabilitiesController < ApplicationController
  before_action :set_person_x_hability, only: [:show, :edit, :update, :destroy]

  # GET /person_x_habilities
  # GET /person_x_habilities.json
  def index
    @person_x_habilities = PersonXHability.all
  end

  # GET /person_x_habilities/1
  # GET /person_x_habilities/1.json
  def show
  end

  # GET /person_x_habilities/new
  def new
    @person_x_hability = PersonXHability.new
  end

  # GET /person_x_habilities/1/edit
  def edit
  end

  # POST /person_x_habilities
  # POST /person_x_habilities.json
  def create
    @person_x_hability = PersonXHability.new(person_x_hability_params)

    respond_to do |format|
      if @person_x_hability.save
        format.html { redirect_to @person_x_hability, notice: 'Person x hability was successfully created.' }
        format.json { render :show, status: :created, location: @person_x_hability }
      else
        format.html { render :new }
        format.json { render json: @person_x_hability.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /person_x_habilities/1
  # PATCH/PUT /person_x_habilities/1.json
  def update
    respond_to do |format|
      if @person_x_hability.update(person_x_hability_params)
        format.html { redirect_to @person_x_hability, notice: 'Person x hability was successfully updated.' }
        format.json { render :show, status: :ok, location: @person_x_hability }
      else
        format.html { render :edit }
        format.json { render json: @person_x_hability.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /person_x_habilities/1
  # DELETE /person_x_habilities/1.json
  def destroy
    @person_x_hability.destroy
    respond_to do |format|
      format.html { redirect_to person_x_habilities_url, notice: 'Person x hability was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_person_x_hability
      @person_x_hability = PersonXHability.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def person_x_hability_params
      params.require(:person_x_hability).permit(:hability_id, :person_id, :description)
    end
end

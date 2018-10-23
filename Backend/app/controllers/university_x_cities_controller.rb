class UniversityXCitiesController < ApplicationController
  before_action :set_university_x_city, only: [:show, :edit, :update, :destroy]

  # GET /university_x_cities
  # GET /university_x_cities.json
  def index
    @university_x_cities = UniversityXCity.all
  end

  # GET /university_x_cities/1
  # GET /university_x_cities/1.json
  def show
  end

  # GET /university_x_cities/new
  def new
    @university_x_city = UniversityXCity.new
  end

  # GET /university_x_cities/1/edit
  def edit
  end

  # POST /university_x_cities
  # POST /university_x_cities.json
  def create
    @university_x_city = UniversityXCity.new(university_x_city_params)

    respond_to do |format|
      if @university_x_city.save
        format.html { redirect_to @university_x_city, notice: 'University x city was successfully created.' }
        format.json { render :show, status: :created, location: @university_x_city }
      else
        format.html { render :new }
        format.json { render json: @university_x_city.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /university_x_cities/1
  # PATCH/PUT /university_x_cities/1.json
  def update
    respond_to do |format|
      if @university_x_city.update(university_x_city_params)
        format.html { redirect_to @university_x_city, notice: 'University x city was successfully updated.' }
        format.json { render :show, status: :ok, location: @university_x_city }
      else
        format.html { render :edit }
        format.json { render json: @university_x_city.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /university_x_cities/1
  # DELETE /university_x_cities/1.json
  def destroy
    @university_x_city.destroy
    respond_to do |format|
      format.html { redirect_to university_x_cities_url, notice: 'University x city was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_university_x_city
      @university_x_city = UniversityXCity.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def university_x_city_params
      params.require(:university_x_city).permit(:university_id, :city_id)
    end
end

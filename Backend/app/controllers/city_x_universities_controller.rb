class CityXUniversitiesController < ApplicationController
  before_action :set_city_x_university, only: [:show, :edit, :update, :destroy]

  # GET /city_x_universities
  # GET /city_x_universities.json
  def index
    @city_x_universities = CityXUniversity.all
  end

  # GET /city_x_universities/1
  # GET /city_x_universities/1.json
  def show
  end

  # GET /city_x_universities/new
  def new
    @city_x_university = CityXUniversity.new
  end

  # GET /city_x_universities/1/edit
  def edit
  end

  # POST /city_x_universities
  # POST /city_x_universities.json
  def create
    @city_x_university = CityXUniversity.new(city_x_university_params)

    respond_to do |format|
      if @city_x_university.save
        format.html { redirect_to @city_x_university, notice: 'City x university was successfully created.' }
        format.json { render :show, status: :created, location: @city_x_university }
      else
        format.html { render :new }
        format.json { render json: @city_x_university.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /city_x_universities/1
  # PATCH/PUT /city_x_universities/1.json
  def update
    respond_to do |format|
      if @city_x_university.update(city_x_university_params)
        format.html { redirect_to @city_x_university, notice: 'City x university was successfully updated.' }
        format.json { render :show, status: :ok, location: @city_x_university }
      else
        format.html { render :edit }
        format.json { render json: @city_x_university.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /city_x_universities/1
  # DELETE /city_x_universities/1.json
  def destroy
    @city_x_university.destroy
    respond_to do |format|
      format.html { redirect_to city_x_universities_url, notice: 'City x university was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_city_x_university
      @city_x_university = CityXUniversity.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def city_x_university_params
      params.require(:city_x_university).permit(:universities_id, :city_id, :description)
    end
end

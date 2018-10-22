class BenefitXUniversitiesController < ApplicationController
  before_action :set_benefit_x_university, only: [:show, :edit, :update, :destroy]

  # GET /benefit_x_universities
  # GET /benefit_x_universities.json
  def index
    @benefit_x_universities = BenefitXUniversity.all
  end

  # GET /benefit_x_universities/1
  # GET /benefit_x_universities/1.json
  def show
  end

  # GET /benefit_x_universities/new
  def new
    @benefit_x_university = BenefitXUniversity.new
  end

  # GET /benefit_x_universities/1/edit
  def edit
  end

  # POST /benefit_x_universities
  # POST /benefit_x_universities.json
  def create
    @benefit_x_university = BenefitXUniversity.new(benefit_x_university_params)

    respond_to do |format|
      if @benefit_x_university.save
        format.html { redirect_to @benefit_x_university, notice: 'Benefit x university was successfully created.' }
        format.json { render :show, status: :created, location: @benefit_x_university }
      else
        format.html { render :new }
        format.json { render json: @benefit_x_university.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /benefit_x_universities/1
  # PATCH/PUT /benefit_x_universities/1.json
  def update
    respond_to do |format|
      if @benefit_x_university.update(benefit_x_university_params)
        format.html { redirect_to @benefit_x_university, notice: 'Benefit x university was successfully updated.' }
        format.json { render :show, status: :ok, location: @benefit_x_university }
      else
        format.html { render :edit }
        format.json { render json: @benefit_x_university.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /benefit_x_universities/1
  # DELETE /benefit_x_universities/1.json
  def destroy
    @benefit_x_university.destroy
    respond_to do |format|
      format.html { redirect_to benefit_x_universities_url, notice: 'Benefit x university was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_benefit_x_university
      @benefit_x_university = BenefitXUniversity.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def benefit_x_university_params
      params.require(:benefit_x_university).permit(:University_id, :Benefit_id, :description)
    end
end

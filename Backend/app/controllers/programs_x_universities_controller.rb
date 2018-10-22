class ProgramsXUniversitiesController < ApplicationController
  before_action :set_programs_x_university, only: [:show, :edit, :update, :destroy]

  # GET /programs_x_universities
  # GET /programs_x_universities.json
  def index
    @programs_x_universities = ProgramsXUniversity.all
  end

  # GET /programs_x_universities/1
  # GET /programs_x_universities/1.json
  def show
  end

  # GET /programs_x_universities/new
  def new
    @programs_x_university = ProgramsXUniversity.new
  end

  # GET /programs_x_universities/1/edit
  def edit
  end

  # POST /programs_x_universities
  # POST /programs_x_universities.json
  def create
    @programs_x_university = ProgramsXUniversity.new(programs_x_university_params)

    respond_to do |format|
      if @programs_x_university.save
        format.html { redirect_to @programs_x_university, notice: 'Programs x university was successfully created.' }
        format.json { render :show, status: :created, location: @programs_x_university }
      else
        format.html { render :new }
        format.json { render json: @programs_x_university.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /programs_x_universities/1
  # PATCH/PUT /programs_x_universities/1.json
  def update
    respond_to do |format|
      if @programs_x_university.update(programs_x_university_params)
        format.html { redirect_to @programs_x_university, notice: 'Programs x university was successfully updated.' }
        format.json { render :show, status: :ok, location: @programs_x_university }
      else
        format.html { render :edit }
        format.json { render json: @programs_x_university.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /programs_x_universities/1
  # DELETE /programs_x_universities/1.json
  def destroy
    @programs_x_university.destroy
    respond_to do |format|
      format.html { redirect_to programs_x_universities_url, notice: 'Programs x university was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_programs_x_university
      @programs_x_university = ProgramsXUniversity.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def programs_x_university_params
      params.require(:programs_x_university).permit(:Programs_id, :University_id, :description)
    end
end

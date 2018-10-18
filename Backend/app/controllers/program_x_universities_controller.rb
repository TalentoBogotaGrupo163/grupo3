class ProgramXUniversitiesController < ApplicationController
  before_action :set_program_x_university, only: [:show, :edit, :update, :destroy]

  # GET /program_x_universities
  # GET /program_x_universities.json
  def index
    @program_x_universities = ProgramXUniversity.all
  end

  # GET /program_x_universities/1
  # GET /program_x_universities/1.json
  def show
  end

  # GET /program_x_universities/new
  def new
    @program_x_university = ProgramXUniversity.new
  end

  # GET /program_x_universities/1/edit
  def edit
  end

  # POST /program_x_universities
  # POST /program_x_universities.json
  def create
    @program_x_university = ProgramXUniversity.new(program_x_university_params)

    respond_to do |format|
      if @program_x_university.save
        format.html { redirect_to @program_x_university, notice: 'Program x university was successfully created.' }
        format.json { render :show, status: :created, location: @program_x_university }
      else
        format.html { render :new }
        format.json { render json: @program_x_university.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /program_x_universities/1
  # PATCH/PUT /program_x_universities/1.json
  def update
    respond_to do |format|
      if @program_x_university.update(program_x_university_params)
        format.html { redirect_to @program_x_university, notice: 'Program x university was successfully updated.' }
        format.json { render :show, status: :ok, location: @program_x_university }
      else
        format.html { render :edit }
        format.json { render json: @program_x_university.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /program_x_universities/1
  # DELETE /program_x_universities/1.json
  def destroy
    @program_x_university.destroy
    respond_to do |format|
      format.html { redirect_to program_x_universities_url, notice: 'Program x university was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_program_x_university
      @program_x_university = ProgramXUniversity.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def program_x_university_params
      params.require(:program_x_university).permit(:code_program_id, :code_university_id, :description)
    end
end

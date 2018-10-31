class CourseXEntitiesController < ApplicationController
  before_action :set_course_x_entity, only: [:show, :edit, :update, :destroy]

  # GET /course_x_entities
  # GET /course_x_entities.json
  def index
    @course_x_entities = CourseXEntity.all
  end

  # GET /course_x_entities/1
  # GET /course_x_entities/1.json
  def show
  end

  # GET /course_x_entities/new
  def new
    @course_x_entity = CourseXEntity.new
  end

  # GET /course_x_entities/1/edit
  def edit
  end

  # POST /course_x_entities
  # POST /course_x_entities.json
  def create
    @course_x_entity = CourseXEntity.new(course_x_entity_params)

    respond_to do |format|
      if @course_x_entity.save
        format.html { redirect_to @course_x_entity, notice: 'Course x entity was successfully created.' }
        format.json { render :show, status: :created, location: @course_x_entity }
      else
        format.html { render :new }
        format.json { render json: @course_x_entity.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /course_x_entities/1
  # PATCH/PUT /course_x_entities/1.json
  def update
    respond_to do |format|
      if @course_x_entity.update(course_x_entity_params)
        format.html { redirect_to @course_x_entity, notice: 'Course x entity was successfully updated.' }
        format.json { render :show, status: :ok, location: @course_x_entity }
      else
        format.html { render :edit }
        format.json { render json: @course_x_entity.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /course_x_entities/1
  # DELETE /course_x_entities/1.json
  def destroy
    @course_x_entity.destroy
    respond_to do |format|
      format.html { redirect_to course_x_entities_url, notice: 'Course x entity was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_course_x_entity
      @course_x_entity = CourseXEntity.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def course_x_entity_params
      params.require(:course_x_entity).permit(:entity_id, :course_id, :description)
    end
end

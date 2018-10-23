class DebilitiesController < ApplicationController
  before_action :set_debility, only: [:show, :edit, :update, :destroy]

  # GET /debilities
  # GET /debilities.json
  def index
    @debilities = Debility.all
  end

  # GET /debilities/1
  # GET /debilities/1.json
  def show
  end

  # GET /debilities/new
  def new
    @debility = Debility.new
  end

  # GET /debilities/1/edit
  def edit
  end

  # POST /debilities
  # POST /debilities.json
  def create
    @debility = Debility.new(debility_params)

    respond_to do |format|
      if @debility.save
        format.html { redirect_to @debility, notice: 'Debility was successfully created.' }
        format.json { render :show, status: :created, location: @debility }
      else
        format.html { render :new }
        format.json { render json: @debility.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /debilities/1
  # PATCH/PUT /debilities/1.json
  def update
    respond_to do |format|
      if @debility.update(debility_params)
        format.html { redirect_to @debility, notice: 'Debility was successfully updated.' }
        format.json { render :show, status: :ok, location: @debility }
      else
        format.html { render :edit }
        format.json { render json: @debility.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /debilities/1
  # DELETE /debilities/1.json
  def destroy
    @debility.destroy
    respond_to do |format|
      format.html { redirect_to debilities_url, notice: 'Debility was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_debility
      @debility = Debility.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def debility_params
      params.require(:debility).permit(:code_debility, :name_debility, :description_debility)
    end
end

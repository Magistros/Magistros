class LehrersController < ApplicationController
  before_action :set_lehrer, only: [:show, :edit, :update, :destroy]

  # GET /lehrers
  # GET /lehrers.json
  def index
    @lehrers = Lehrer.all
  end

  # GET /lehrers/1
  # GET /lehrers/1.json
  def show
  end

  # GET /lehrers/new
  def new
    @lehrer = Lehrer.new
  end

  # GET /lehrers/1/edit
  def edit
  end

  # POST /lehrers
  # POST /lehrers.json
  def create
    @lehrer = Lehrer.new(lehrer_params)

    respond_to do |format|
      if @lehrer.save
        format.html { redirect_to @lehrer, notice: 'Lehrer was successfully created.' }
        format.json { render action: 'show', status: :created, location: @lehrer }
      else
        format.html { render action: 'new' }
        format.json { render json: @lehrer.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /lehrers/1
  # PATCH/PUT /lehrers/1.json
  def update
    respond_to do |format|
      if @lehrer.update(lehrer_params)
        format.html { redirect_to @lehrer, notice: 'Lehrer was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @lehrer.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /lehrers/1
  # DELETE /lehrers/1.json
  def destroy
    @lehrer.destroy
    respond_to do |format|
      format.html { redirect_to lehrers_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_lehrer
      @lehrer = Lehrer.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def lehrer_params
      params.require(:lehrer).permit(:name, :fach1, :fach2, :fach3, :fach4, :ug, :uv, :ums, :fr, :Anzahl)
    end
end

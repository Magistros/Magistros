class LehrerbewertungsController < ApplicationController
  before_action :set_lehrerbewertung, only: [:show, :edit, :update, :destroy]

  # GET /lehrerbewertungs
  # GET /lehrerbewertungs.json
  def index
    @lehrerbewertungs = Lehrerbewertung.all
  end

  # GET /lehrerbewertungs/1
  # GET /lehrerbewertungs/1.json
  def show
  end

  # GET /lehrerbewertungs/new
  def new
    @lehrerbewertung = Lehrerbewertung.new
  end

  # GET /lehrerbewertungs/1/edit
  def edit
  end

  # POST /lehrerbewertungs
  # POST /lehrerbewertungs.json
  def create
    @lehrerbewertung = Lehrerbewertung.new(lehrerbewertung_params)

    respond_to do |format|
      if @lehrerbewertung.save
        format.html { redirect_to @lehrerbewertung, notice: 'Lehrerbewertung was successfully created.' }
        format.json { render action: 'show', status: :created, location: @lehrerbewertung }
      else
        format.html { render action: 'new' }
        format.json { render json: @lehrerbewertung.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /lehrerbewertungs/1
  # PATCH/PUT /lehrerbewertungs/1.json
  def update
    respond_to do |format|
      if @lehrerbewertung.update(lehrerbewertung_params)
        format.html { redirect_to @lehrerbewertung, notice: 'Lehrerbewertung was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @lehrerbewertung.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /lehrerbewertungs/1
  # DELETE /lehrerbewertungs/1.json
  def destroy
    @lehrerbewertung.destroy
    respond_to do |format|
      format.html { redirect_to lehrerbewertungs_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_lehrerbewertung
      @lehrerbewertung = Lehrerbewertung.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def lehrerbewertung_params
      params.require(:lehrerbewertung).permit(:ug, :uv, :fr, :ums, :lehrerid, :anzahl)
    end
end

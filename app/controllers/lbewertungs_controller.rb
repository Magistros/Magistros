class LbewertungsController < ApplicationController
  before_action :set_lbewertung, only: [:show, :edit, :update, :destroy]

  # GET /lbewertungs
  # GET /lbewertungs.json
  def index
    @lbewertungs = Lbewertung.all
  end

  # GET /lbewertungs/1
  # GET /lbewertungs/1.json
  def show
  end

  # GET /lbewertungs/new
  def new
    @lbewertung = Lbewertung.new
  end

  # GET /lbewertungs/1/edit
  def edit
  end

  # POST /lbewertungs
  # POST /lbewertungs.json
  def create
    @lbewertung = Lbewertung.new(lbewertung_params)

    respond_to do |format|
      if @lbewertung.save
        format.html { redirect_to @lbewertung, notice: 'Lbewertung was successfully created.' }
        format.json { render action: 'show', status: :created, location: @lbewertung }
      else
        format.html { render action: 'new' }
        format.json { render json: @lbewertung.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /lbewertungs/1
  # PATCH/PUT /lbewertungs/1.json
  def update
    respond_to do |format|
      if @lbewertung.update(lbewertung_params)
        format.html { redirect_to @lbewertung, notice: 'Lbewertung was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @lbewertung.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /lbewertungs/1
  # DELETE /lbewertungs/1.json
  def destroy
    @lbewertung.destroy
    respond_to do |format|
      format.html { redirect_to lbewertungs_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_lbewertung
      @lbewertung = Lbewertung.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def lbewertung_params
      params.require(:lbewertung).permit(:ug, :uv, :fr, :ums, :lehrerid, :anzahl)
    end
end

class ThreatMatchesController < ApplicationController
  before_action :set_threat_match, only: [:show, :edit, :update, :destroy]

  # GET /threat_matches
  # GET /threat_matches.json
  def index
    @threat_matches = ThreatMatch.all
  end

  # GET /threat_matches/1
  # GET /threat_matches/1.json
  def show
  end

  # GET /threat_matches/new
  def new
    @threat_match = ThreatMatch.new
  end

  # GET /threat_matches/1/edit
  def edit
  end

  # POST /threat_matches
  # POST /threat_matches.json
  def create
    @threat_match = ThreatMatch.new(threat_match_params)

    respond_to do |format|
      if @threat_match.save
        format.html { redirect_to @threat_match, notice: 'Threat match was successfully created.' }
        format.json { render :show, status: :created, location: @threat_match }
      else
        format.html { render :new }
        format.json { render json: @threat_match.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /threat_matches/1
  # PATCH/PUT /threat_matches/1.json
  def update
    respond_to do |format|
      if @threat_match.update(threat_match_params)
        format.html { redirect_to @threat_match, notice: 'Threat match was successfully updated.' }
        format.json { render :show, status: :ok, location: @threat_match }
      else
        format.html { render :edit }
        format.json { render json: @threat_match.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /threat_matches/1
  # DELETE /threat_matches/1.json
  def destroy
    @threat_match.destroy
    respond_to do |format|
      format.html { redirect_to threat_matches_url, notice: 'Threat match was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_threat_match
      @threat_match = ThreatMatch.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def threat_match_params
      params.require(:threat_match).permit(:threat_type, :platform_type, :caching, :domain_id)
    end
end

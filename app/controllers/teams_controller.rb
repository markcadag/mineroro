class TeamsController < ApplicationController
  before_action :set_team, only: [:show, :edit, :update, :destroy]

  # GET /roles
  # GET /roles.json
  def index
    @teams = Team.all
  end

  # GET /roles/1
  # GET /roles/1.json
  def show
  end

  # GET /roles/new
  def new
    @team = Team.new
    3.times do
      miner = @team.miners.build
    end
  end

  # GET /roles/1/edit
  def edit
    @team = Team.find(params[:id])

  end

  # POST /roles
  # POST /roles.json
  def create
    @team = Team.new(team_params)

    respond_to do |format|
      if @team.save!
        format.html { redirect_to @team, notice: 'Team was successfully created.' }
        format.json { render :show, status: :created, location: @team }
      else
        format.html { render :new }
        format.json { render json: @team.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /roles/1
  # PATCH/PUT /roles/1.json
  def update
    respond_to do |format|
      if @team.update!(team_params)
        format.html { redirect_to @team, notice: 'Team was successfully updated.' }
        format.json { render :show, status: :ok, location: @team }
      else
        format.html { render :edit }
        format.json { render json: @team.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /roles/1
  # DELETE /roles/1.json
  def destroy
    @team.destroy
    respond_to do |format|
      format.html { redirect_to team_url, notice: 'Team was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_team
      @team = Team.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def team_params
      params.require(:team).permit(:name, miners_attributes: [:id,:first_name, :last_name, :position, :address, :mobile_number, :date_hired, :_destroy ,:mine_id])
    end
end

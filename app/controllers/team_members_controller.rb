class TeamMembersController < ApplicationController
  before_action :set_team_member, only: [:show, :edit, :update, :destroy]

  # GET /team_members
  # GET /team_members.json
  def index
    # , tunnel_id: params[:tunnel_id]
    @team_members = TeamMember.all.paginate(:page => params[:page])
    @team_member = TeamMember.new
    respond_to do |format|
      format.html
      format.json { render json: @team_members }
      format.js
    end
  end

  # GET /team_members/1
  # GET /team_members/1.json
  def show
  end

  # GET /team_members/new
  def new
    @team_members = TeamMember.paginate(:page => params[:page])
    @team_member = TeamMember.new
  end

  # GET /items/1/edit
  def edit
    @team_members = TeamMember.all.paginate(:page => params[:page])
  end

  # POST /items
  # POST /items.json
  def create
    @team_member = TeamMember.new(team_member_params)
    # @item.mine = current_mine
    respond_to do |format|
      if @team_member.save
        format.html { redirect_to @team_members, notice: 'Item was successfully created.' }
        format.json { render :show, status: :created, location: @team_member }
        format.js
      else
        format.html { render :new }
        format.json { render json: @team_member.errors, status: :unprocessable_entity }
        format.js
      end
    end
  end

  # PATCH/PUT /items/1
  # PATCH/PUT /items/1.json
  def update
    respond_to do |format|
      if @item.update(item_params)
        format.html { redirect_to @item, notice: 'Item was successfully updated.' }
        format.json { render :show, status: :ok, location: @item }
        format.js
      else
        format.html { render :edit }
        format.js
        format.json { render json: @item.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /items/1
  # DELETE /items/1.json
  def destroy
    @team_member.destroy
    respond_to do |format|
      format.html { redirect_to new_team_member_url, notice: 'Team Member was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    # def set_item
    #   @item = Item.find(params[:id])
    # end

    # # Never trust parameters from the scary internet, only allow the white list through.
    # def item_params
    #   params.require(:item).permit(:item_code, :name, :description)
    # end

    def set_team_member
      @team_member = TeamMember.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def team_member_params
      params.require(:team_member).permit(:miner, :team, :miner_id, :team_id)
    end
end


class AddMinerRefToTeamMembers < ActiveRecord::Migration
  def change
    add_reference :team_members, :miner, index: true, foreign_key: true
  end
end

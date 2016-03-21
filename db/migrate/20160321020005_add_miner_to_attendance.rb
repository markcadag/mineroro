class AddMinerToAttendance < ActiveRecord::Migration
  def change
    add_reference :attendances, :miner, index: true, foreign_key: true
  end
end

class AddMineToAttendance < ActiveRecord::Migration
  def change
    add_reference :attendances, :mine, index: true, foreign_key: true
  end
end

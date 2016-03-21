class AddTunnelToAttendance < ActiveRecord::Migration
  def change
    add_reference :attendances, :tunnel, index: true, foreign_key: true
  end
end

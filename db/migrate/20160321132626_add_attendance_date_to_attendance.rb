class AddAttendanceDateToAttendance < ActiveRecord::Migration
  def change
    add_column :attendances, :attendance_date, :datetime
  end
end

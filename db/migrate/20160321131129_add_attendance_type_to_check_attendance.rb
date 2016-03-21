class AddAttendanceTypeToCheckAttendance < ActiveRecord::Migration
  def change
    add_column :check_attendances, :attendance_type, :string , :default => 'present'
  end
end

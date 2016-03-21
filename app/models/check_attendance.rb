class CheckAttendance < ActiveRecord::Base
  belongs_to :attendance
  belongs_to :miner
end

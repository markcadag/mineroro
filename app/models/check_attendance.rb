class CheckAttendance < ActiveRecord::Base
  self.per_page = 10
  belongs_to :attendance
  belongs_to :miner
end

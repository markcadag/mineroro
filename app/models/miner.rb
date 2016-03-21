class Miner < ActiveRecord::Base
	self.per_page = 10
	belongs_to :mine
	has_one :tunnel

	has_many :check_attendance
	has_many :attendances, :through => :check_attendance

end

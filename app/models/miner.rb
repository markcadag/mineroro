class Miner < ActiveRecord::Base
	self.per_page = 10
	belongs_to :mine
	belongs_to :tunnel


	validates :tunnel, :presence => true
	
	has_many :check_attendance
	has_many :attendances, :through => :check_attendance

end

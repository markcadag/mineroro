class Miner < ActiveRecord::Base
	self.per_page = 10
	belongs_to :mine
	belongs_to :tunnel

	
	has_many :check_attendance
	has_many :attendances, :through => :check_attendance


	has_many :team_members
	has_many :teams, :through => :team_members

end

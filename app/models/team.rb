class Team < ActiveRecord::Base
	has_many :team_members
	has_many :miners, :through => :team_members
end

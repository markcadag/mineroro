class Team < ActiveRecord::Base
	has_many :team_members
	has_many :miners, :through => :team_members
	accepts_nested_attributes_for :miners, :allow_destroy => true
end

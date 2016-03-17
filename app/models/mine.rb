class Mine < ActiveRecord::Base
	has_many :miners
	has_many :tunnels
	belongs_to :user
	has_many :expenses
	resourcify
end

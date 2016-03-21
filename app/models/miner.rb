class Miner < ActiveRecord::Base
	belongs_to :mine
	has_one :tunnel
	has_many :attendances
end
